<?


//Functions
/*--------------------------------------------------------------------------*/
function printNotcompletinfo($displaytext,$formname){
	
	include("../haut.inc");
	
	echo "<table cellspacing='0' cellpadding='0' border='0' width='100%'>";
	echo "  <tr>";

    //include("../sommair.inc");
    include("sommair.inc");
	
    echo "<td width='*' valign='top' bgcolor='#FFFFFF'>";
    echo "  <p>&nbsp;</p>";
    echo"  <h1>Cormas Forum: ".$formname."</h1>";
	echo"<p>".$displaytext."</p>";
    echo "<br><a href='http://cormas.cirad.fr/fr/reseaux/form/forumCormas.php'>Back</a>.";// French version
	echo "</td></tr>";

	include("../../../include/copyright_en.inc");
}

function printGreetingSubscribe($nom,$email){
	include("../haut.inc");
	
	echo "<table cellspacing='0' cellpadding='0' border='0' width='100%'>";
	echo "  <tr>";

    //include("../sommair.inc");
	include("sommair.inc");
    echo "<td width='*' valign='top' bgcolor='#FFFFFF'>";
    echo "  <p>&nbsp;</p>";
    echo"  <h1>Welcome to the Cormas Forum</h1>";

	echo "<table align=\"center\" border=\"0\" cellpadding=\"6\" cellspacing=\"4\">";
	echo "<tr><TD bgcolor=\"#ffffcc\" WIDTH=\"50%\" VALIGN=\"TOP\">

			Bonjour ". $nom." ,". "<br>". 

			"Votre adresse électronique ( ".$email." ) va être ajoutée à la liste cormas. ". "<br>". 

			"Vous receverez un message de confirmation bientôt.</td></tr>" ;

	echo "<tr><td><br><h2>Contribuer au forum cormas :</h2>";
	echo "<p>Vous venez d'&ecirc;tre abonn&eacute; au forum de discussion cormas.";
	echo "Vous recevrez d&eacute;sormais tous les messages &eacute;chang&eacute;s sur ce forum., ";
	echo "Vos contributions personnelles sont &agrave; envoyer &agrave; <a href='mailto:cormas@cirad.f'>cormas@cirad.fr</a></p>";
	echo "<h2 class='para'> Consulter les archives du forum cormas :</h2>";
	echo " <ul>";
	echo "<li><a href='http://cormas.cirad.fr/forum/cormas/old1999_2002/index.html'>De 1999 &agrave; juillet 2002 </a></li>";
	echo "<li><a href='http://cormas.cirad.fr/forum/cormas/archives/old2002_2003/index.html'>D'ao&ucirc;t 2002 &agrave; f&eacute;vrier 2003</a></li>";
	echo "<li><a href='http://cormas.cirad.fr/forum/cormas/archives/index.html'>Depuis mars 2003</a></li>";
	echo "</ul>";
	echo "<p>&nbsp;</p>";
	echo "</td></tr></table>";

	echo "</table>"; 

	include("../../../include/copyright_en.inc");
}
function printGreetingUnSubscribe($nom,$email){
	include("../haut.inc");
	
	echo "<table cellspacing='0' cellpadding='0' border='0' width='100%'>";
	echo "  <tr>";

    //include("../sommair.inc");
    include("sommair.inc");
	
    echo "<td width='*' valign='top' bgcolor='#FFFFFF'>";
    echo "  <p>&nbsp;</p>";
    echo"  <h1>D&eacute;sabonnement du forum cormas</h1>";

	echo "<table align=\"center\" border=\"0\" cellpadding=\"6\" cellspacing=\"4\">";
	echo "<tr><TD bgcolor=\"#ffffcc\" WIDTH=\"50%\" VALIGN=\"TOP\">

			Bonjour ". $nom." ,". "<br>". 

			"Votre adresse électronique ( ".$email." ) a été enlevée de la liste cormas. ". "<br>". 

			"Merci.</td></tr></table>" ;
	echo "</table>"; 

	include("../../../include/copyright_en.inc");	
}
/*--------------------------------------------------------------------------*/
function validate_code($im_txtcode,$im_randcode,$email,$nom) {
	$boncode = false;
	/*echo "----- Function ------------------<br>";
	echo "<br>Text code =".$im_txtcode."<br>";
	echo "Right code =".$im_randcode."<br>";
	echo "Email : $email<br>"; //emailS emailU
	echo "Name : $nom<br>";//nomS nomU
	echo "--------End of function ----------<br>";*/

	  if ($im_txtcode == $im_randcode){
        $boncode = true;		  
	  }
	  else{
		   // code is incorrect!
		   $boncode = false;
	  }
  return $boncode;
}

/*--------------------------------------------------------------------------*/
// Our function to filter our bogus formatted addresses
function verify_email($email){

    if(!preg_match('/^[_A-z0-9-]+((\.|\+)[_A-z0-9-]+)*@[A-z0-9-]+(\.[A-z0-9-]+)*(\.[A-z]{2,4})$/',$email)){
        return false;
    } else {
        return $email;
    }
}

// Our function to verify the MX records
function verify_email_dns($email){

    // This will split the email into its front
    // and back (the domain) portions
    list($name, $domain) = split('@',$email);

    if(!checkdnsrr($domain,'MX')){

        // No MX record found
        return false;

    } else {

        // MX record found, return email
        return $email;

    }
}
function validateEmail($email,$subscribe){
	if(verify_email($email)){

		// E-mail address looks to be in the proper format
		// lets check the MX records

		if(verify_email_dns($email)){

			// E-mail passed both checks
			//echo 'Success - E-mail address appears to be valid.';
			if($subscribe == 1){ // for subscribe
				$_SESSION['emailS']=$email;
			}
			else{ // for unsubscribe
				$_SESSION['emailU']=$email;
			}
			return true;

		} else {

			// E-mail is invalid, no MC record
			//echo 'Error - E-mail domain does not have an MX record.';
			if($subscribe == 1){ // for subscribe
				$_SESSION['emailS']="";
			}
			else{ // for unsubscribe
				$_SESSION['emailU']="";
			}
			return false;
		}

	} else {

		// E-mail inst formatted correctly
		// so we don't even check its MX record
		//echo 'Error - E-mail address appears to be invalid.';
			if($subscribe == 1){ // for subscribe
				$_SESSION['emailS']="";
			}
			else{ // for unsubscribe
				$_SESSION['emailU']="";
			}
		return false;
	}
}

?>