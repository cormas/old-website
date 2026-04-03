<?php
/*
$user = "cormas";
$pwd = "cormas";
$host = "161.200.192.209";
$db = "cormas";

echo getenv("REMOTE_ADDR")."<br>";
$link = mysql_connect($host, $user, $pwd);
mysql_select_db($db)or die( "Unable to select database");	
if (!$link) {
    die('Could not connect: ' . mysql_error());
}
else{
	echo 'Connected successfully';
}
mysql_close($link);
*/
?>
<?
/*
//set local variables
$dbhost = "db.ecole-commod.sc.chula.ac.th"; 
$dbuser = "cormas"; 
$dbpass = "cormas"; 
$dbname = "cormas"; 

//connect 
$db = mysql_pconnect($dbhost,$dbuser,$dbpass); 
mysql_select_db("$dbname",$db); 
*/
?>
<?
mysql_connect("db.161.200.192.209", "cormas", "cormas");
mysql_select_db("cormas");
?> 
