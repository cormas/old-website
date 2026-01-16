<?
session_start();

$im_txtcode= $_POST["txtcode"];
$im_randcode = $_SESSION["rand_value"];
echo "<br>The code==>".$im_randcode."<br><br>";
if ($im_txtcode == $im_randcode) {
echo "Bonne code :)";
} else {
echo ":-(";
}

session_unset();
session_destroy();

?>