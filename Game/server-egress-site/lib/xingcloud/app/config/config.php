<?php
return array(
	'mysql' => array(
		'host' => '127.0.0.1',
		'port' => '3306',
		'user' => 'root',
		'password' => '123456',
		'database' => 'cokdb1',
		'instance_id' => 'zoo',
	),
	'logServer' => array(
		'host' => '127.0.0.1',
	),
	'memcache' => array(
		'type' => 'memcache',
		'servers' => array(
			array(
				'host' => '127.0.0.1',
				'port' => 11211,	
			),
		),
	),
);
?>
