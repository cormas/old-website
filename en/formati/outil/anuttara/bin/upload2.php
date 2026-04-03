<?
$myDestinationPath = "/apps/www/cormas.cirad.fr/prod/ComMod/fr/private/upload/";
$ftp_server ="cormas.cirad.fr";
$ftp_user = "COMMOD";
$ftp_pass = "nabem4cu";

//Step 1 : Connect to the server
 $conn_id = ftp_connect($ftp_server) or die("Couldn't connect to $ftp_server"); 

 //Step 2 : Login
 if (@ftp_login($conn_id, $ftp_user, $ftp_pass)) {
	 //echo "Connected as $ftp_user@$ftp_server\n";
	 } 
else {
	echo "Couldn't connect as $ftp_user\n";
}
$target_path= $myDestinationPath.basename($_FILES['uploaded']['name']);
$remote_file = $_FILES['uploaded']['name'];
/*
echo "<br>Filename = ".$remote_file."<br>"; Source file name
echo "Step 2 :  Destination = ".$target_path."<br>"; It is default value which is /apps/www/cormas.cirad.fr/prod/ComMod/fr/private/upload/
echo "Temp ==> ".$_FILES['uploaded']['tmp_name']."<br>";
echo "Basename temp==> ". basename($_FILES['uploaded']['tmp_name'])."<br>";
echo "Current directory = ".getcwd() . "<br>"; Current directory of this script.
*/

if (move_uploaded_file($_FILES['uploaded']['tmp_name'], $target_path)) { // Move the temporary file to our destination.
   // It is successfully for uploading the file. Display some messages here.
   echo $remote_file." was successfully uploaded."; 
   ?>
   <table>
   <form name = f1 method = post action='tellfriend.php'>
   <tr><td colspan="2">Please enter email address to tell your friends:</td></tr> 
   <tr><td>1:</td><td> <input type=text name=email1 size=40 maxlength=39></td></tr>
   <tr><td>2:</td><td> <input type=text name=email2 size=40 maxlength=39></td></tr>
   <tr><td>3:</td><td> <input type=text name=email3 size=40 maxlength=39></td></tr>
   <tr><td></td><td> <input type=hidden name=sourcefile size=40 maxlength=39></td></tr> 
   <tr><td colspan="2"><input type="submit" value="Tell friend"></td><tr>
   </form>
   </table>
   <?
} else {
   echo "Possible file upload attack!\n";
}

//echo 'Here is some more debugging info:';
//print_r($_FILES);

?>