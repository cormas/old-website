<?
session_start();
include("myfunction.php");

/*--------------------------------------------------------------------------*/
$im_txtcode= $_REQUEST["codeU"];
$im_randcode = $_SESSION["rand_value"];
$emailU= $_REQUEST["emailU"];
$nomU= $_REQUEST["nomU"];

/*echo "---------------------------- Main() ---------------------<br>";
echo "<br>You enter : ".$im_txtcode;
echo "<br> and The code is :".$im_randcode."<br>";
echo "Email : ".$emailU;
echo "<br>Name : ".$nomU;
echo "<br>-------------------- End of Main() ------------------<br>";*/
?>
<html>

<head>

<meta name="KeyWords" content="Cormas, Cirad, gestion des ressources naturelles, natural resource management, INRM, environnement, environment, simulation, modelisation, modelling, SMA, MAS, multi-agent, smalltalk, visualworks, logiciel, software">

<title>Unsubscribe</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">



<!--#include virtual="/include/script.inc" -->

<link rel="stylesheet" href="/css/cormas.css" -->

</head>

<body  marginwidth="0" marginheight="0" topmargin="0" leftmargin="0" border="0" onLoad="MM_preloadImages('http://cormas.cirad.fr/images/en/accueil_r.gif','http://cormas.cirad.fr/images/en/demarche_r.gif','http://cormas.cirad.fr/images/en/logiciel_r.gif','http://cormas.cirad.fr/images/en/applications_r.gif','http://cormas.cirad.fr/images/en/biblio_r.gif','http://cormas.cirad.fr/images/en/formation_r.gif','http://cormas.cirad.fr/images/en/reseaux_r.gif')" bgcolor="#FFFFFF">

<!--#include virtual="haut.inc" -->

<table cellspacing="0" cellpadding="0" border="0" width="100%">

<tr>

    <!--#include virtual="sommair.inc" -->

    <?  
		$boncode = validate_code($im_txtcode,$im_randcode,$emailU,$nomU);
	    
		$bonemail = validateEmail($emailU,0); // 0 = unsubscribe ; 1 = subscribe
		//echo "<br>bonemail = ".$bonemail."<br>";

		if($boncode == true && $bonemail == true){   //To display the following text (Line no. 79 - 110)if user enters the right image code.
              
			  $message = "unsubscribe " ."\n" ;
			  mail("bommel@cirad.fr, cormas-request@cirad.fr", " ", $message,"From:". $emailU);

		      session_unset();
			  session_destroy();
		?>
			<td width="*" valign="top" bgcolor="#FFFFFF">
			  <p><? printGreetingUnSubscribe($nomU,$_REQUEST["emailU"]); ?></p>

			  <p align="center">&nbsp;</p>

	  <?
	  }// if($boncode == true && $bonemail == true)
	  else if ($boncode == false && $bonemail == false){
	  		//echo "boncode == false && bonemail == false -->";
			//echo "The verification code and your email address are not correct. ";
			printNotcompletinfo("The verification code and your email address are not correct.","to unsubscribe");
			// Register value of the fields to the session
		   $_SESSION['nomU'] = $nomU;
           //echo "<br><a href='http://cormas.cirad.fr/en/reseaux/form/forumCormas.php'>Back</a>.";
	  }
	  else if ($boncode == false && $bonemail == true){
	  	  	//echo "boncode == false && bonemail == true -->";
			//echo "The verification code is not correct. ";
			printNotcompletinfo("The verification code is not correct.","to unsubscribe");
			// Register value of the fields to the session
		   $_SESSION['nomU'] = $nomU;
            //echo "<br><a href='http://cormas.cirad.fr/en/reseaux/form/forumCormas.php'>Back</a>.";
	  }
	  else if ($boncode == true && $bonemail == false){
	  	  	//echo "boncode == true && bonemail == false -->";
			//echo "Your email address is not correct. ";
			printNotcompletinfo("Your email address is not correct.","to unsubscribe");
			// Register value of the fields to the session
		   $_SESSION['nomU'] = $nomU;
            //echo "<br><a href='http://cormas.cirad.fr/en/reseaux/form/forumCormas.php'>Back</a>.";
	  }
	  ?>


			  <!--#include virtual="/include/copyright_en.inc" -->

			</td>

			<td width="15" valign="top" bgcolor="#FFFFFF"> 

			<div align="right" class="texte"></div>

			</td>

	  </tr>


</table>

</body>

</html>

