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

    <td width="*" valign="top" bgcolor="#FFFFFF"> <h1>&nbsp;</h1>
      <h1>Leaving the cormas forum</h1>
      <p>&nbsp;</p>

      <hr>

      <!-- 

					<input type=text NAME="nom">

					<input type="TEXT" name="email"> -->

      <?php

$message = 

	"unsubscribe " ."\n" ;

mail("bommel@cirad.fr, cormas-request@cirad.fr", " ", $message,

	"From: $emailU");



  echo "<table align=\"center\" border=\"0\" cellpadding=\"6\" cellspacing=\"4\">";

  echo "<tr><TD bgcolor=\"#ffffcc\" WIDTH=\"50%\" VALIGN=\"TOP\">

  	Hello $nomU ,". "<br>". 

	"Your email ( $emailU ) has been removed from cormas list. </td></tr>" ;

  echo "</table>";     ?>

      <hr>

      <p align="center">&nbsp;</p>

      <!--#include virtual="/include/copyright_en.inc" -->

    </td>

    <td width="15" valign="top" bgcolor="#FFFFFF"> 

    <div align="right" class="texte"></div>

    </td>

  </tr>

</table>

</body>

</html>

