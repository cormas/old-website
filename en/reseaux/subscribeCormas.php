<html>

<head>

<meta name="KeyWords" content="Cormas, Cirad, gestion des ressources naturelles, natural resource management, INRM, environnement, environment, simulation, modelisation, modelling, SMA, MAS, multi-agent, smalltalk, visualworks, logiciel, software">

<title> Cormas Forum</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<!--#include virtual="http://cormas.cirad.fr/include/script.inc" -->

<link rel="stylesheet" href="/css/cormas.css" -->

</head>



<body  marginwidth="0" marginheight="0" topmargin="0" leftmargin="0" border="0" onLoad="MM_preloadImages('/images/en/accueil_r.gif','/images/en/demarche_r.gif','/images/en/logiciel_r.gif','/images/en/applications_r.gif','/images/en/biblio_r.gif','/images/en/formation_r.gif','/images/en/reseaux_r.gif')" bgcolor="#FFFFFF">

<!--#include virtual="haut.inc" --> 

<table cellspacing="0" cellpadding="0" border="0" width="100%">

<tr>

    <!--#include virtual="sommair.inc" -->

    <td width="*" valign="top" bgcolor="#FFFFFF"> 

      <p>&nbsp;</p>
      <h1>Welcome to the Cormas Forum</h1>

      <hr>

      <!-- 

					<input type=text NAME="nom">

					<input type="TEXT" name="email"> -->

      <?php

$message = 

	"subscribe " ."\n" ;

mail("bommel@cirad.fr, cormas-request@cirad.fr", " ", $message,

	"From: $emailS");



  echo "<table align=\"center\" border=\"0\" cellpadding=\"6\" cellspacing=\"4\">";

  echo "<tr><TD bgcolor=\"#ffffcc\" WIDTH=\"50%\" VALIGN=\"TOP\">

  	Hello $nomS ,". "<br>". 

	"Your email ( $emailS ) will be added to cormas list. ". "<br>". 

	"You will soon receive an aknowledgement receipt.</td></tr>" ;

  echo "</table>";     ?>

      <hr>

      <h2>Send an e-mail to the Cormas forum :</h2>

      <p>Now that you have been added to the members of this forum, you will receive 
        all the messages sent by the other members. To contribute to the forum, 
        send a message to <a href="mailto:cormas@cirad.fr">cormas@cirad.fr</a></p>

      <h2 class="para"> See the archives of the forum :</h2>

      <ul>
        <li><a href="http://cormas.cirad.fr/forum/cormas/old1999_2002/index.html">From 
          1999 to 2002, July </a></li>
        <li><a href="http://cormas.cirad.fr/forum/cormas/archives/old2002_2003/index.html">From 
          2002, August to 2003, February</a></li>
        <li><a href="http://cormas.cirad.fr/forum/cormas/archives/index.html">From 
          2003, March</a></li>
      </ul>

      <p>&nbsp;</p>

      <!--#include virtual="/include/copyright_en.inc" -->

    </td>

    <td width="15" valign="top" bgcolor="#FFFFFF"> 

    <div align="right" class="texte"></div>

    </td>

  </tr>

</table>

</body>

</html>



