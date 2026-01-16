<?
session_start();
include("myfunction.php");

/*--------------------------------------------------------------------------*/
$im_txtcode= $_REQUEST["codeS"];
$im_randcode = $_SESSION["rand_value"];
$emailS= $_REQUEST["emailS"];
$nomS= $_REQUEST["nomS"];

/*echo "---------------------------- Main() ---------------------<br>";
echo "<br>You enter : ".$im_txtcode;
echo "<br> and The code is :".$im_randcode."<br>";
echo "Email : ".$emailS;
echo "<br>Name : ".$nomS;
echo "<br>-------------------- End of Main() ------------------<br>";*/

?>
<html>

<head>

<meta name="KeyWords" content="Cormas, Cirad, gestion des ressources naturelles, natural resource management, INRM, environnement, environment, simulation, modelisation, modelling, SMA, MAS, multi-agent, smalltalk, visualworks, logiciel, software">

<title> S'abonnement pour le Cormas Forum</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include virtual="http://cormas.cirad.fr/include/script.inc" -->

<link rel="stylesheet" href="/css/cormas.css" -->

</head>



<body  marginwidth="0" marginheight="0" topmargin="0" leftmargin="0" border="0" onLoad="MM_preloadImages('/images/en/accueil_r.gif','/images/en/demarche_r.gif','/images/en/logiciel_r.gif','/images/en/applications_r.gif','/images/en/biblio_r.gif','/images/en/formation_r.gif','/images/en/reseaux_r.gif')" bgcolor="#FFFFFF">

<!--#include virtual="haut.inc" --> 

<table cellspacing="0" cellpadding="0" border="0" width="100%">

<tr>

    <!--#include virtual="sommair.inc" -->

    <?  
		$boncode = validate_code($im_txtcode,$im_randcode,$emailS,$nomS);
	    
		$bonemail = validateEmail($emailS,1); // 0 = unsubscribe ; 1 = subscribe
		//echo "<br>bonemail = ".$bonemail."<br>";

		if($boncode == true && $bonemail == true){   //To display the following text (Line no. 79 - 110)if user enters the right image code.
              
			$message = "subscribe "."\n" ;
	  		mail("bommel@cirad.fr, cormas-request@cirad.fr", " ", $message,	"From: ".$emailS);
		      session_unset();
			  session_destroy();			
		?>
			<td width="*" valign="top" bgcolor="#FFFFFF"> 

			  <?  printGreetingSubscribe($nomS,$_REQUEST["emailS"]);?>


	  <?
	  }// if($boncode == true && $bonemail == true)
	  else if ($boncode == false && $bonemail == false){
	  		//echo "boncode == false && bonemail == false -->";
			//echo "The verification code and your email address are not correct. ";
			printNotcompletinfo("Le code de vérification et votre adresse électronique ne sont pas corrects.","S'abonnement");
			// Register value of the fields to the session
		   $_SESSION['nomS'] = $nomS;
           //echo "<br><a href='http://cormas.cirad.fr/en/reseaux/form/forumCormas.php'>Back</a>.";
	  }
	  else if ($boncode == false && $bonemail == true){
	  	  	//echo "boncode == false && bonemail == true -->";
			//echo "The verification code is not correct. ";
			printNotcompletinfo("Le code de vérification n'est pas correcte.","S'abonnement");
			// Register value of the fields to the session
		   $_SESSION['nomS'] = $nomS;
            //echo "<br><a href='http://cormas.cirad.fr/en/reseaux/form/forumCormas.php'>Back</a>.";
	  }
	  else if ($boncode == true && $bonemail == false){
	  	  	//echo "boncode == true && bonemail == false -->";
			//echo "Your email address is not correct. ";
			printNotcompletinfo("Votre adresse électronique n'est pas correcte.","S'abonnement");
			// Register value of the fields to the session
		   $_SESSION['nomS'] = $nomS;
            //echo "<br><a href='http://cormas.cirad.fr/en/reseaux/form/forumCormas.php'>Back</a>.";
	  }
	  ?>



      <!--#include virtual="/include/copyright_en.inc" -->

			  <p>&nbsp;</p>
    </td>

    <td width="15" valign="top" bgcolor="#FFFFFF"> 

    <div align="right" class="texte"></div>

    </td>

  </tr>

</table>

</body>

</html>



