<?
$myDestinationPath = "/apps/www/cormas.cirad.fr/prod/ComMod/fr/private/upload/";
$ftp_server ="cormas.cirad.fr";
$ftp_user = "COMMOD";
$ftp_pass = "nabem4cu";

//Step 1 : Connect to the server
 $conn_id = ftp_connect($ftp_server) or die("Couldn't connect to $ftp_server"); 

 //Step 2 : Login
 if (@ftp_login($conn_id, $ftp_user, $ftp_pass)) {
	 echo "Connected as $ftp_user@$ftp_server\n";
	 } 
else {
	echo "Couldn't connect as $ftp_user\n";
}

$target_path= $myDestinationPath.basename($_FILES['uploaded']['name']);
$remote_file = $_FILES['uploaded']['name'];
echo "<br>Step 1 :  Filename = ".$remote_file."<br>";
echo "Step 2 :  Destination = ".$target_path."<br>";

echo "Temp ==> ".$_FILES['uploaded']['tmp_name']."<br>";
echo "Basename temp==> ". basename($_FILES['uploaded']['tmp_name'])."<br>";

echo "Current directory = ".getcwd() . "<br>";

if (move_uploaded_file($_FILES['uploaded']['tmp_name'], $target_path)) {
   echo "File is valid, and was successfully uploaded.\n";
} else {
   echo "Possible file upload attack!\n";
}


/*if(is_uploaded_file($_FILES['uploaded']['tmp_name'])){
	copy($_FILES['uploaded']['tmp_name'],$target_path);
}*/

echo 'Here is some more debugging info:';
print_r($_FILES);

?>