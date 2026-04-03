<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<?
//To friends
$email1=$_POST['email1'];
$email2=$_POST['email2'];
$email3=$_POST['email3'];
$file = $_POST['sourcefile'];
//To webmaster
$webmaster="webmaster@commod.org";
$forum ="forum@commod.org";
$test = "ms.anuttara@gmail.com, magic_ball14@hotmail.com, anuttara.t@chula.ac.th";

//Send email form
/*
$to = $test;
$subject = "New uploaded file";
$body = "Please be informed that ".$file." is uploaded.";
if (mail($to, $subject, $body)) {
  echo("<p>Message successfully sent!</p>");
 } else {
  echo("<p>Message delivery failed...</p>");
 }
 */
$message = "Dear members,\n Please be informed that this file '$file' is uploaded to our server.\nthis is line.";
$mto = "anuttara.t@chula.ac.th";
$msubj = "<<Subject>>";
$mfrom = "ms.anuttara@gmail.com	 ";
$mreply = "magic_ball14@hotmail.com";

$message = $message."\n======\nService by http:// http://www.commod.org";
$txtfrom = "From: ".$mfrom."\nReply-To: ".$mreply."\nX-Mailer: PHP/" . phpversion();
mail($mto, $msubj, $message, $txtfrom );

?>
<body>
</body>
</html>
