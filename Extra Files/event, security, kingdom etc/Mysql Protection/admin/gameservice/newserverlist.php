<?php
// getserverlist.php
// 目前：调用此API时，不传pf和pfId，就是不直接查找pfId绑定的账号信息server&gameuid，而是用deviceId找回最新的一条返回；
//     然后玩家在前端连接pf后，通过「切换账号」功能，找回pfId绑定的账号。

//2015.3.27 使用cobar
//2015.9.14 VK. 优先pf；然后deviceId

error_reporting(E_ERROR);
date_default_timezone_set('UTC');
define('EOL',(PHP_SAPI == 'cli') ? PHP_EOL : '<br />');

define('HTDOCS_ROOT', dirname(__DIR__)); // htdocs root
define('PATH_ROOT', HTDOCS_ROOT . '/gameservice'); // gameservice root
define('GAMESERVICE_ROOT', HTDOCS_ROOT . '/gameservice'); // gameservice root
define('GEO_ROOT', HTDOCS_ROOT . '/geo');

require_once GEO_ROOT.'/geo.inc.php';
$clientip = geo_detect_ip();

$logdir = '/data/htdocs/data/log/getserverlist/';
if (!file_exists($logdir)) {
	mkdir($logdir, 0777, true);
}

$serversxmlfile_php = HTDOCS_ROOT.'/resource/servers.xml';
$serversxmlfile_sfs = 'servers.xml';

$GLOBAL_DB_SERVER_IP = '10.0.0.19';
//define('CHOOSE_SERVER_REDIS_IP', '10.0.0.19');
$CHOOSE_SERVER_REDIS_IP="10.0.0.19";
define('GLOBAL_DB_SERVER_PWD', '@Radcokgamerwa.51.com');
define('DAOLIANG_FACEBOOK_SEPARATE', false);
define('FACEBOOK_SERVER_ID_RATIO', '1:10');

$db_server_ip = $GLOBAL_DB_SERVER_IP;
if (is_array($db_server_ip)) {
	$idx = randItemWithWeight(array(100,100));
	$db_server_ip = $db_server_ip[$idx];
}
$cokdb_global_hostinfo = array(
		'host' => $db_server_ip,
		'user' => 'Advancedclashgamer.441',
		'password' => GLOBAL_DB_SERVER_PWD,
		'port' => '3306',
);

if (!empty($argv)) {
	foreach ( $argv as $arg ) {
		$kv = explode ( '=', $arg, 2 );
		$_REQUEST [$kv [0]] = $kv [1];
	}
}

define('BIG_ZONE_ID', '1');

$deviceId = getParameter("uuid");//mobile:deviceId;facebook:fbuid
$gmFlagPara = getParameter("gmFlag");
$loginFlagPara = getParameter("loginFlag");
$pf = getParameter("pf");
$pfId = getParameter("pfId");
$use_userbindmapping = false;
$valid_pflist = array(
		'tencent', 
		'cn_mi', 'mi_web',
		'cn_mihy', 
		'cn_uc', 
		'cn_360', 
		'cn_baidu', 
		'cn_nearme', 
		'cn_lenovo', 
		'cn_huawei', 
		'cn_am', 
		'cn_vivo', 
		'cn_kupai', 
		'cn_pps', 
		'cn_pptv', 
		'cn_youku', 
		'cn_anzhi', 
		'cn_ewan', 
		'cn_mzw', 
		'cn_wdj', 
		'cn_wyx', 
		'cn_kugou', 
		'cn_sogou', 
		'cn_dangle', 
		'cn_toutiao', 
		'cn_sy37', 
		'cn_mz', 
		'vk',
);
$oldpf = $pf;
if(in_array($pf, $valid_pflist)) {
	$use_userbindmapping = true;
	if ($pf == 'cn_mihy' || $pf == 'mi_web') {
		$pf = 'cn_mi';
	}
}

if (!in_array($pf, $valid_pflist)) {
	$pf = null;
	$pfId = null;
}


$playerCountry = strtoupper(getParameter("country"));
if (substr($clientip, 0, 3) == '10.') {
	$playerIpCountry = 'CN';
}else{
	$playerIpCountry = geo_get_country_by_ip($clientip, 'CN');
	if (empty($playerIpCountry)) {
		$playerIpCountry = 'CN';
	}
}

$terminal = getParameter("terminal");//facebook|....
$zone = getParameter("zone");
$token = getParameter("token");
$t = getParameter("t");
$sig = getParameter("sig");
$zoneid= getParameter("zoneid");
$isvalidreq = check_sig();
$tspan = time() - $t;
if ($isvalidreq != 'OK') {
	file_put_contents($logdir.'/invalid_sig.log', date('Y-m-d H:i:s')." $clientip ".$deviceId." $playerCountry $terminal $t $sig $isvalidreq $tspan\n", FILE_APPEND);
	echo "";
	exit;
}

$gmFlag = ("1"==$gmFlagPara)?true:false;

$start = microtime(true);
$userType = 'NEWUSER';

$xml = getServerListdb();
foreach ($xml as $serverInfo) {
	if($serverInfo["id"]==$zoneid){
		$CHOOSE_SERVER_REDIS_IP=$serverInfo["inner_ip"];
		$cokdb_global_hostinfo['host']=$serverInfo["db_ip"];
		printlog("host:".$serverInfo["db_ip"].",".json_encode($cokdb_global_hostinfo));
		break;
	}
}
if("1" == $loginFlagPara) {
	$retObj = getServerList($deviceId, $pf, $pfId, $gmFlag, $playerIpCountry, $terminal);
} else {
	//$deviceId 为空时，返回所有服列表
	//$deviceId 非空时，返回所有服列表，并把该$deviceId的账号信息塞入返回
	//该功能为管理员账号从游戏内登录时用到。
	$retObj = getPlayerLoginRecord($deviceId, $gmFlag);
}

$retObj["userType"]= $userType;
$result = json_encode($retObj);
echo $result;

//echo "redis ip:".$CHOOSE_SERVER_REDIS_IP;

$timecost = (microtime(true) - $start) * 1000;
$timecost = round($timecost);
trackLog($userType, "TC=$timecost RESULT=$result");

$date = date('Y-m-d');
$msg = date('Y-m-d H:i:s')." $clientip ".$deviceId." ".$GLOBALS['userType']." $playerCountry $terminal $playerIpCountry";
file_put_contents($logdir."/ip_device_action_$date.log", $msg."\n", FILE_APPEND);

exit;

function printlog($str)
{
	file_put_contents("/tmp/newphp.log", $str."\n", FILE_APPEND);
}

// ===========
function getServerList($deviceId, $pf, $pfId, $gmFlag, $playerCountry, $terminal){
	global $logdir, $clientip,$use_userbindmapping,$zoneid,$userType;
	$isDefault = true;
	$serverId = null;
	$serverListArr = array();
	$lastAccountObj = null;

	$allAccount = getAccountByDevice($deviceId);
	$accNum = count($allAccount);
	if ($accNum > 0) {
		foreach($allAccount as $iter)
		{
			if($iter["server"]==$zoneid)
			{
				$lastAccountObj=$iter;
				$userType="OLDUSER";
				break;
			}
		}
	}
	
	if( $lastAccountObj!= null)
	{
                $isDefault = false;
                $lastServerId = $lastAccountObj["server"];
                $GLOBALS['RET_SERVERID'] = $lastServerId;
                $retObj["lastLoggedServer"] = $lastServerId;
                $serverInfo = getServerInfo($lastServerId);
                $serverObj = buildServerInfoForClient($serverInfo);
                $serverObj["uuid"] = $lastAccountObj["uuid"];
                $serverObj["gameUid"] = $lastAccountObj["gameUid"];
                $serverObj["gameUserLevel"] = $lastAccountObj["gameUserLevel"];
                $serverListArr[] = $serverObj;
		$isDefault = false;
	}

        $retObj["serverList"] = $serverListArr;
        $retObj["country"] = getSuggestCountry();

	if($isDefault)
	{
		$serverListArr = choseServer($playerCountry, $gmFlag, $terminal, $deviceId);
		$str = json_encode($serverListArr);
		printlog("chose server.....".$str);
	}
	
	$retObj["serverList"] = $serverListArr;
	$retObj["country"] = getSuggestCountry();
	return $retObj;
}

function getPlayerLoginRecord($deviceId, $gmFlag){
	$retObj = array();
	$serverMapList = getServerListdb();
	$serverListArr = fromMapToSFSArray($serverMapList, $gmFlag, false);
	if (!empty($deviceId)) {
		$userLoggedServerList = getAllAccountByDevice($deviceId);
		$size = count($userLoggedServerList);
		for($i = 0; $i < $size; $i++ ) {
			$record = $userLoggedServerList[$i];
			$server = $record["server"];
			if ($i == 0) {
				$retObj["lastLoggedServer"] = $server;
			}
			for ($j = 0; $j < count($serverListArr); $j++) {
				$serverObj = &$serverListArr[$j];
				if ($serverObj["id"] == $server) {
					$serverObj["gameUid"] = $record["gameUid"];
					$serverObj["gameUserLevel"] = $record["gameUserLevel"];
					$GLOBALS['RET_SERVERID'] = $server;
					break;
				}
			}
		}
	}
	$retObj["serverList"] = $serverListArr;
	$retObj["country"] = getSuggestCountry();
	return $retObj;
}

function check_newgame_status($deviceId,$lastAccountObj){
	$serverId = $lastAccountObj["server"];
	$rediskey = "counter_newgame:".date('ymdH');
	$local_redis = new Redis();
	$local_redis->connect('10.1.39.142');
	$curr = $local_redis->hIncrBy($rediskey,$deviceId,1);
// 	$local_redis->expire($rediskey,86400);
	
// 	if ($serverId != 196) {
// 		return true;
// 	}
	if ($curr > 3) {
		return false;
	}
	return true;
}
function update_account_active_status($lastAccountObj){
	$gameUid = $lastAccountObj['gameUid'];
	$sql = "update account_new set active=0 where gameUid='$gameUid';";
	query_global_db($sql);
}

/**
 * 新注册用户，选择服务器
 * 各服比例redis配置格式如, set 'RATIO_OF_CHOOSE_SERVER' '1:20;2:80'
 * 按照国家redis配置格式, hset 'COUNTRY_OF_CHOOSE_SERVER' '1' 'CN,TW,US,KR,RU'
 */
function choseServer($playerCountry, $gmFlag, $terminal, $deviceId){
	global $pf,$oldpf,$zone,$zoneid;
	$serverListArr = array();
	$serverId=$zoneid;
	printlog("servreid:".$serverId);	
	if($serverId !== null) {
		$GLOBALS['RET_SERVERID'] = $serverId;
		$serverInfo = getServerInfo($serverId);
		$serverObj = buildServerInfoForClient($serverInfo);
		$serverListArr[] = $serverObj;
		make_request_mark($serverInfo, $deviceId);
	} 
	return $serverListArr;
}
function make_request_mark($serverInfo, $deviceId){
	if (!isset($serverInfo['inner_ip'])) {
		return ;
	}

	printlog("mark to redis:".$serverInfo['inner_ip'].",device_id:".$deviceId);
	global $clientip;
	$ut = $GLOBALS['userType'];
	$da = date('Ymd');
	$dt = date('Y-m-d H:i:s');
	$sid = $serverInfo['id'];
	$ts = time();
	$inner_ip = $serverInfo['inner_ip'];
	$client = new Redis();
	$r = $client->connect($inner_ip, 6379);//conn 3 sec timeout.
	printlog("connect to reids:".$inner_ip.",ret:".$r.",ts:".$ts.",cip:".$clientip);
	$client->hSet('call_server_list_flag', $deviceId, $ts);
	$client->hSet('call_server_list_flag_ts_ip', $deviceId, "$ts;$clientip");
}
function getLatest10Servers(){
	$serverMapList = getServerListdb();
	krsort($serverMapList);
	$docnt = 10;
	$doidx = 0;
	$serverRatioConfTmp = '590:10,591:10,592:10,593:10,594:10,595:10,596:10,597:10,598:10,599:10,600:10,601:10,602:10,603:10,604:10,605:10,606:10,607:10,608:10,609:10,610:10,611:10,612:10';
	foreach ($serverMapList as $sid => $info) {
		continue;

		if (700000 == $sid) {
			continue;
		}
		if ($sid > 900000) {
			continue;
		}
		if ($doidx >= $docnt) {
			break;
		}
		$serverRatioConfTmp .= "$sid:10;";
		$doidx++;
	}
	$def = trim($serverRatioConfTmp, ';');
	return $def;
}
function getSuggestCountry() {
	return 1;
}

// 根据各mapping类型取得关联account
function getAccountByPf($pf, $pfId){
	$validAccountArr = getValidAccountList($pf, $pfId);
	return $validAccountArr;
}
function getAccountByDevice($deviceId){
	$validAccountArr = getValidAccountList('device', $deviceId);
	return $validAccountArr;
}
function getAccountByFBacc($deviceId){
	$validAccountArr = getValidAccountList('facebook', $deviceId);
	return $validAccountArr;
}
function getValidAccountList($type, $value){
	$allAccountArr = getRecordFromMappingDB($type, $value);
	if (empty($allAccountArr)) {
		return array();
	}

	$target_list = array();
	foreach ($allAccountArr as $row) {
		if ($row['active'] == 1) {
			continue;
		}
		$target_list[$row['lastTime']] = $row;
	}
	krsort($target_list);
	$validAccountArr = array_values($target_list);

	return $validAccountArr;
}

/**
 * 根据deviceId，取得所有服的、最后一次登陆的 账号
 * @param unknown $deviceId
 * @return multitype:
 */
function getAllAccountByDevice($deviceId){
	$allAccountArr = getRecordFromMappingDB('device', $deviceId);
	//各服内按照时间倒序组装
	$target_list = array();
	foreach ($allAccountArr as $row) {
		$target_list[$row['server']][$row['lastTime']] = $row;
	}
	ksort($target_list);
	$validAccountArr = array();
	//取得各服的最后一次登陆账号
	foreach ($target_list as $server => $acclist) {
		krsort($acclist);
		$tkey = key($acclist);
		$validAccountArr[$tkey] = $acclist[$tkey];
	}
	//所有服的最后一次登陆账号,整体倒序
	krsort($validAccountArr);
	$validAccountArr = array_values($validAccountArr);
	
	return $validAccountArr;
}

/**
 * 从数据库表 usermapping/account_new 中读取account数据。
 * @param string $type
 * @param string $value
 * @return multitype:|Ambigous <multitype:multitype: , multitype:unknown >
 */
function getRecordFromMappingDB($type, $value){
	global $use_userbindmapping;
	//获取mapping gameuid
	$tablename = 'usermapping';
	if ($use_userbindmapping) {
		$tablename = 'userbindmapping';//单库单表
	}
	$allAccountArr = query_global_db("select * from $tablename where mappingType='$type' and mappingValue = '$value';");
	if (empty($allAccountArr)) {
		return array();
	}
	$target_gameuids = array();
	foreach ($allAccountArr as $row) {
		$target_gameuids[] = "'".$row['gameUid']."'";
	}
	$gameuids = implode(',', $target_gameuids);
	//获取所有Account数据
	$allAccountArr = query_global_db("select * from account_new where gameUid in ($gameuids);");
	if (empty($allAccountArr)) {
		return array();
	}
	return $allAccountArr;
}

// 直接从servers.xml/tbl_webserver读取推荐列表
function fromMapToSFSArray($serverMapList, $gmFlag, $isOnlyRecommend){
	$serverListArr = array();
	foreach ($serverMapList as $serverInfo) {
		$testFlag = $serverInfo["test"]=='true';
		$is_recommend = $serverInfo["recommend"]=='true';
		if ($isOnlyRecommend && $is_recommend || !$isOnlyRecommend) {
			if (!$gmFlag && $testFlag) {
				continue;
			}
			$serverObj = buildServerInfoForClient($serverInfo);
			$GLOBALS['RET_SERVERID'] = $serverObj['id'];
			$serverListArr[] = $serverObj;
		}
	}
	return $serverListArr;
}

function buildServerInfoForClient($serverInfo){
	unset($serverInfo['recommend']);
	unset($serverInfo['hot']);
	unset($serverInfo['new']);
	unset($serverInfo['test']);
	unset($serverInfo['open_time']);
	unset($serverInfo['inner_ip']);
	unset($serverInfo['db_ip']);
	unset($serverInfo['db_name']);
	
	return $serverInfo;
	//从XML里读取，无需编辑
}

//
function getParameter($p){
	return strval($_REQUEST[$p]);
}
function randItemWithWeight($weights){
	$weight_sum = array_sum($weights);
	$seed = 100000;
	$weight_total = $weight_sum * $seed;
	$rand = mt_rand(1, $weight_total);
	foreach ($weights as $k=>$w){
		$rand -= $w * $seed;
		if($rand <= 0){
			return $k;
		}
	}
	return null;
}

function getServerInfo($svr_id){
	$list = parseServersXml();
	return $list[$svr_id];
}
function getServerListdb(){
	$list = parseServersXml();
	return $list;
}
function parseServersXml(){
	global $serversxmlfile_php, $serversxmlfile_sfs;
	$serverList = array();
	if (file_exists($serversxmlfile_php)) {
		$xml = simplexml_load_file($serversxmlfile_php);
	}else if (file_exists($serversxmlfile_sfs)){
		$xml = simplexml_load_file($serversxmlfile_sfs);
	}else{
		trackLog('ERROR', 'ServersXml_NOT_EXISTS');
	}
	$json = json_encode($xml);
	$array = json_decode($json,TRUE);
	$spec = $array['Group']['ItemSpec'];
	if (count($spec) == 1) {
		$serverList[$spec['@attributes']['id']] = $spec['@attributes'];
	}else{
		foreach ($spec as $svr) {
			$serverList[$svr['@attributes']['id']] = $svr['@attributes'];
		}
	}

	return $serverList;
}
function query_global_db($sql) {
	global $deviceId,$cokdb_global_hostinfo,$clientip,$logdir;
	$ret = array ();
	$mysqli = new mysqli($cokdb_global_hostinfo['host'], $cokdb_global_hostinfo['user'], $cokdb_global_hostinfo['password'], 'cokdb_global', $cokdb_global_hostinfo['port']);
	/* check connection */
	if ($mysqli->connect_errno) {
		echo($mysqli->connect_error);
		trackLog('ERROR', "Connect failed: ".$mysqli->connect_error);
		exit();
	}
	$result = $mysqli->query($sql);
	if ($result && is_object($result)) {
		/* fetch associative array */
		while ($row = $result->fetch_assoc()) {
			$ret [] = $row;
		}
		/* free result set */
		$result->free();
	}
	
	printlog("global db query:".$sql.", host:".$cokdb_global_hostinfo['host'].",ret:".json_encode(ret));
	$mysqli->close();
	return $ret;
}

function trackLog($type, $message){
	global $deviceId, $gmFlagPara,$loginFlagPara, $pf, $pfId, $playerCountry, $playerIpCountry, $logdir, $terminal, $clientip, $zone;
	$format = "[%s] [S%s] [deviceId=%s][gmFlag=%s][loginFlag=%s][pf=%s][pfId=%s][country=%s][ipcountry=%s][terminal=%s] [%s] %s [ip=%s] [zone=%s]";
	$logmsg = sprintf($format, 
			date('Y-m-d H:i:s'), $GLOBALS['RET_SERVERID'], $deviceId, $gmFlagPara,$loginFlagPara, $pf, $pfId, $playerCountry, $playerIpCountry, $terminal,
			$type, $message, $clientip, $zone
	);
	if (!file_exists($logdir)) {
		$logdir = '/tmp';
	}
	$file = $logdir.'/'.date('Ymd').'COBAR.log';
}

function check_sig() {
	return 'OK';

	$sigkv = $_REQUEST;
	if (!isset($sigkv['sig']) && !isset($sigkv['t'])) {
		return 'OK';
	}
	if (strlen($sigkv['t']) != 10) {
// 		return 'invalid_parm-t';
	}
	
	if ('facebook' == $sigkv['terminal']) {
		$key = "XXXXXXXXXXXXXXXXXXXXX";
	}else{
		$key = "YYYYYYYYYYYYYYYYYYYYY";
	}
	
	$sig = strtolower($sigkv['sig']);
	if (empty($sig) || strlen($sig) != 32) {
		return 'invalid_parm-sig';
	}
	
	$oritspan = time() - $sigkv['t'];
	$tspan = abs($oritspan);
	if ($tspan > 600) {
		file_put_contents('/tmp/invalid_sig_timespan.log', date('Y-m-d H:i:s')." {$sigkv['t']} $sig $oritspan\n", FILE_APPEND);
// 		return 'too_old_time';
	}
	
	$sigparms_str = "{$sigkv['uuid']}{$sigkv['t']}";
	$auth = md5($sigparms_str.'@'.$key);
	if ($sig !== $auth) {
		return 'wrong-sig';
	}
	
	return 'OK';
}
