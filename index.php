<?php
header("Content-Type:text/html;charset=UTF-8");
require_once("config.php");
require_once("classes/core.php");
require_once("classes/core_a.php");
if($_GET['option']) {
	$class = trim(strip_tags($_GET['option']));
}
else {
	$class = 'main';	
}
if(file_exists("classes/".$class.".php")) {
	include("classes/".$class.".php");
	if(class_exists($class)) {
		$obj = new $class;
		$obj->get_body();
	}
	else {
		exit("<p>Неправильні дані</p>");
	}
}
else {
	exit("<p>Неправильна адреса сайту</p>");
}
?>
