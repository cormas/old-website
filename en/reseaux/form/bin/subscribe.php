<?
session_start();
$im_randcode = $_SESSION["rand_value"];
echo "<br>The code is :".$im_randcode."<br>";

$txtcode= $_POST['codeS'];
echo "<br>You enter : ".$textcode;

//$emailS= $_REQUEST["emailS"];
//$nomS= $_REQUEST["nomS"];

//echo "Email : $emailS<br>";
//echo "Name : $nomS<br>";


session_unset();
session_destroy();

?>