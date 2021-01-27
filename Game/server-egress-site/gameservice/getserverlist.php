<?php
// getserverlist.php
// 目前：调用此API时，不传pf和pfId，就是不直接查找pfId绑定的账号信息server&gameuid，而是用deviceId找回最新的一条返回；
//     然后玩家在前端连接pf后，通过「切换账号」功能，找回pfId绑定的账号。

//2015.3.27 使用cobar
//2015.9.14 VK. 优先pf；然后deviceId
error_reporting(E_ERROR);
#var_dump($_GET);
#exit;
#var_dump($_REQUEST);
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

$GLOBAL_DB_SERVER_IP = '127.0.0.1';
define('CHOOSE_SERVER_REDIS_IP', '127.0.0.1');
define('GLOBAL_DB_SERVER_PWD', 'admin123');
define('DAOLIANG_FACEBOOK_SEPARATE', false);
define('FACEBOOK_SERVER_ID_RATIO', '1:10');

$db_server_ip = $GLOBAL_DB_SERVER_IP;
if (is_array($db_server_ip)) {
	$idx = randItemWithWeight(array(100,100));
	$db_server_ip = $db_server_ip[$idx];
}
$cokdb_global_hostinfo = array(
		'host' => $db_server_ip,
		'user' => 'root',
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
$gmFlagPara = getParameter("gmFlag");
$loginFlagPara = getParameter("loginFlag");
$pf = getParameter("pf");
$pfId = getParameter("pfId");
$use_userbindmapping = false;
$deviceId =getParameter("uuid");
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

if("1" == $loginFlagPara) {
	$retObj = getServerList($deviceId, $pf, $pfId, $gmFlag, $playerIpCountry, $terminal);
} else {
	//$deviceId 为空时，返回所有服列表
	//$deviceId 非空时，返回所有服列表，并把该$deviceId的账号信息塞入返回
	//该功能为管理员账号从游戏内登录时用到。
	$retObj = getPlayerLoginRecord($deviceId, $gmFlag);
}

$retObj["userType"]= $GLOBALS['userType'];
$result = json_encode($retObj);
echo $result;

$timecost = (microtime(true) - $start) * 1000;
$timecost = round($timecost);
trackLog($userType, "TC=$timecost RESULT=$result");

$date = date('Y-m-d');
$msg = date('Y-m-d H:i:s')." $clientip ".$deviceId." ".$GLOBALS['userType']." $playerCountry $terminal $playerIpCountry";
file_put_contents($logdir."/ip_device_action_$date.log", $msg."\n", FILE_APPEND);

exit;

// ===========
function getServerList($deviceId, $pf, $pfId, $gmFlag, $playerCountry, $terminal){
	global $logdir, $clientip,$use_userbindmapping;
	$isDefault = true;
	$serverId = null;
	$serverListArr = array();
	$lastAccountObj = null;
	if (!empty($pf) && !empty($pfId)) {
		$allAccount = getAccountByPf($pf, $pfId);
		$accNum = count($allAccount);
		if ($accNum > 0) {
			$firstObj = $allAccount[0];
			$lastAccountObj = $firstObj;
			$GLOBALS['userType'] = 'CNOLDUSER1';
		}
	}
	if (empty($lastAccountObj) && !empty($deviceId)){
		if ('vk' == $pf) {
			$use_userbindmapping = false;
		}
		if ('facebook' == $terminal) {
			$allAccount = getAccountByFBacc($deviceId);
			$accNum = count($allAccount);
			if ($accNum > 0) {
				$firstObj = $allAccount[0];//只判断最新的第一条
				if ($firstObj["active"] == 0) {// 老玩家
					$lastAccountObj = $firstObj;
					$GLOBALS['userType'] = 'FBOLDUSER1';
				} else if ($firstObj["active"] == 1) {// 封号。
					$GLOBALS['userType'] = 'FBERROR2';
				} else if ($firstObj["active"] == 2) {// 重玩。选择新服。
					$GLOBALS['userType'] = 'FBNEWGAME1';
					file_put_contents($logdir.'/fbnewgame1.log', date('Y-m-d H:i:s')." $clientip ".$deviceId." ".$GLOBALS['userType']." $playerCountry $terminal\n", FILE_APPEND);
				} else if ($firstObj["active"] == 3) {// 重玩。在本服。FB
					$lastAccountObj = $firstObj;
					$GLOBALS['userType'] = 'FBOLDUSER2';
				} else {
					trackLog('WARN', "unknown activit type. ".$firstObj["active"]);
				}
			}
		}
		
		if ($lastAccountObj === null) {
			$allAccount = getAccountByDevice($deviceId);
			$accNum = count($allAccount);
			if ($accNum > 0) {
				$firstObj = $allAccount[0];//只判断最新的第一条
				if ($firstObj["active"] == 0) {// 老玩家
					$lastAccountObj = $firstObj;
					$GLOBALS['userType'] = 'OLDUSER1';
				} else if ($firstObj["active"] == 1) {// 封号。
					$GLOBALS['userType'] = 'ERROR1';
				} else if ($firstObj["active"] == 2) {// 重玩。选择新服。
					$GLOBALS['userType'] = 'NEWGAME1';
				} else if ($firstObj["active"] == 3) {// 重玩。在本服。
					$isvalidNewgame = check_newgame_status($deviceId,$firstObj);
					if ($isvalidNewgame) {
						$serverId = $firstObj["server"];
						$lastAccountObj = null;
						$GLOBALS['userType'] = 'NEWGAME2';
					}else{
						$serverId = null;
						$lastAccountObj = $firstObj;
						update_account_active_status($firstObj);
						$GLOBALS['userType'] = 'NEWGAME3';
					}
				} else {
					trackLog('WARN', "unknown activit type. ".$firstObj["active"]);
				}
			}
		}
	}

	
	if(empty($lastAccountObj) && empty($deviceId)){
		trackLog('ERROR', "invalid_user_id");
		$GLOBALS['userType'] = 'ERROR';
	}

// 	if ('cn_vivo' == $pf) {
// 		$lastAccountObj = null;
// 		$serverId = null;
// 	}
	
	$retObj = array();
	file_put_contents("/tmp/user.log", "server id:".$serverId.", last_account:".$lastAccountObj."\n", FILE_APPEND);
	if ($lastAccountObj != null) {
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
	} else if ($serverId != null) {
		$GLOBALS['RET_SERVERID'] = $serverId;
		$isDefault = false;
		$serverInfo = getServerInfo($serverId);
		$serverObj = buildServerInfoForClient($serverInfo);
		$serverListArr[] = $serverObj;
		make_request_mark($serverInfo, $deviceId);
	}
	if ($isDefault) {
		$serverListArr = choseServer($playerCountry, $gmFlag, $terminal, $deviceId);
	}
	file_put_contents("/tmp/user.log", $serverListArr, FILE_APPEND);
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
	$local_redis->connect('127.0.0.1');
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
	global $pf,$oldpf,$zone;
	$serverId = null;
	$serverListArr = array();
	if (DAOLIANG_FACEBOOK_SEPARATE && 'facebook' == $terminal) {
		$serverRatioConf = FACEBOOK_SERVER_ID_RATIO;//FB玩家固定服
		$serverIdCountriesMap = '';
	}
	else{ 
		$client = new Redis();
		$r = $client->connect(CHOOSE_SERVER_REDIS_IP, 6389, 3);//conn 3 sec timeout.
		// [unreachable server. if the Redis service is down, or if the redis host is overloaded] -> default latest 10 servers.
		if ($r === false) {
			trackLog('ERROR', "connect to ".CHOOSE_SERVER_REDIS_IP." fail.");
			$serverRatioConf = getLatest10Servers();
			$serverIdCountriesMap = '';
		}else{
			try{
				$flag_hasnot_special_processed = true;
				//special process. import 1000 US users to sever 10.
				if (false && 'US' == $playerCountry) {
					$curr_cnt = $client->get("COUNTER_S10_US");
					if ($curr_cnt < 1300) {
						$serverRatioConf = '10:100';
						$serverIdCountriesMap = '';
						$curr = $client->incr('COUNTER_S10_US', 1);
						writeSpecialLog('SPECIAL', "COUNTER_S10_US=".$curr);
						$flag_hasnot_special_processed = false;
					}
				}
				if ($flag_hasnot_special_processed) {
					$serverRatioConf = $client->get("RATIO_OF_CHOOSE_SERVER");
					$serverIdCountriesMap = $client->hGetAll("COUNTRY_OF_CHOOSE_SERVER");
				}
			}catch ( Exception $e){
				trackLog('ERROR', "get redis config fail." . $e->getMessage());
				$serverRatioConf = getLatest10Servers();
				$serverIdCountriesMap = '';
			}
		}
	}
	
	if ('facebook' == $terminal && !empty($zone)) {
		if (is_numeric($zone) && $zone > 0) {
			$latest_server = $client->get('latest_server');
			if ($latest_server && $zone <= $latest_server) {
				$serverId = $zone;
			}
		}
	}

	$serverRatioConf = "1:10";
	
// 	if ($pf && 'cn_' == substr($pf,0,3)) {
// 		$serverRatioConf = '10:100';
// 	}
// 	if ($oldpf == 'cn_ewan') {
// 		$serverRatioConf = '10:100';
// 	}
	
	//按照玩家国家导
	if($serverId === null && !empty($serverIdCountriesMap) && !empty($playerCountry)) { 
		$keyList = array();
		$valueList = array();
		foreach ($serverIdCountriesMap as $key=>$entry) {
			if (empty($entry)) {
				continue;
			}
			//特殊导量
			if (in_array($key, array(669,670,671))) {
				if ($playerCountry != 'CN') {
					continue;
				}
			}
			if (strpos($entry, $playerCountry) !== false) {
				$keyList[] = $key;
				if (in_array($key, array(669,670,671))) {
					$valueList[] = 125;
				}else{
					if (in_array($key, array(636,637,641)) && $playerCountry == 'JP') {
						$valueList[] = 20;
					}else {
						$valueList[] = 100;//按国家时，所有目标服平均分配
					}
				}
			}
		}
		if (!empty($keyList)) {
			$idx = randItemWithWeight($valueList);
			$serverId = $keyList[$idx];
		}
	}
	
	//按照各服比例导
	if($serverId === null && !empty($serverRatioConf)) {
		$keyList = array();
		$valueList = array();
		$serverConfArr = explode(';',$serverRatioConf);
		foreach($serverConfArr as $serverItem) {
			$idRatioArr = explode(':', $serverItem);
			//TODO: 智能判定服的状态，如果 不可用（停服标识/压力过大）则 跳过、报警
			$valid = true;
			if ('facebook' == $terminal) {
				if ($idRatioArr[0] < 316 && $idRatioArr[0] != 305) {
					$valid = false;
				}
			}
			if ($valid) {
				$keyList[] = $idRatioArr[0];
				$valueList[] = $idRatioArr[1];
			}
		}
		$idx = randItemWithWeight($valueList);
		$serverId = $keyList[$idx];
	}
	
	if($serverId !== null) {
		$GLOBALS['RET_SERVERID'] = $serverId;
		$serverInfo = getServerInfo($serverId);
		$serverObj = buildServerInfoForClient($serverInfo);
		$serverListArr[] = $serverObj;
		make_request_mark($serverInfo, $deviceId);
	} else {
		//找 推荐服
		//此分支走不到。另外，xml里配置也没有设置recommend为true的
		$serverMapList = getServerListdb();
		$serverListArr = fromMapToSFSArray($serverMapList, $gmFlag, true);
	}
	return $serverListArr;
}
function make_request_mark($serverInfo, $deviceId){
	if (!isset($serverInfo['inner_ip'])) {
		return ;
	}
	global $clientip;
	$ut = $GLOBALS['userType'];
	$da = date('Ymd');
	$dt = date('Y-m-d H:i:s');
	$sid = $serverInfo['id'];
	$ts = time();
	$inner_ip = $serverInfo['inner_ip'];
	$client = new Redis();
	$r = $client->connect($inner_ip, 6389);//conn 3 sec timeout.
	$client->hSet('call_server_list_flag', $deviceId, $ts);
	$client->hSet('call_server_list_flag_ts_ip', $deviceId, "$ts;$clientip");
	file_put_contents($logdir.'/getserverlistmake_request_mark_'.$da.'.log', "$dt,$sid,$deviceId,$ts,$ut,$clientip\n", FILE_APPEND);
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
	file_put_contents("$logdir/query_global_db.log", date('Y-m-d - H:i:s - ').$clientip." - $deviceId - ".$sql."\n",FILE_APPEND);
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
	
	/* close connection */
	$mysqli->close();
	return $ret;
	
// 	global $cokdb_global_hostinfo;
// 	$client = mysql_connect ( $cokdb_global_hostinfo['host'].":8066", $cokdb_global_hostinfo['user'], $cokdb_global_hostinfo['password'] );
// 	mysql_select_db('cokdb_global', $client);
// 	$result = mysql_query ( $sql, $client );
// 	$ret = array ();
// 	while ( $row = mysql_fetch_assoc ( $result ) ) {
// 		$ret [] = $row;
// 	}
// 	return $ret;
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
	file_put_contents($file, $logmsg."\n", FILE_APPEND);
}
function writeSpecialLog($type, $message){
	global $deviceId, $gmFlagPara,$loginFlagPara, $pf, $pfId, $playerCountry, $logdir, $terminal;
	$format = "%s %s %s %s %s";
	$logmsg = sprintf($format,
			date('Y-m-d H:i:s'), $deviceId, $playerCountry,
			$type, $message
	);
	if (!file_exists($logdir)) {
		$logdir = '/tmp';
	}
	$file = $logdir.'/s10_us1000.log';
	file_put_contents($file, $logmsg."\n", FILE_APPEND);
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
