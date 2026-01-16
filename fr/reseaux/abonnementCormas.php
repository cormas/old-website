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
      <h1>Bienvenu dans le forum Cormas</h1>

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

  	Bonjour $nomS ,". "<br>". 

	"Votre adresse électronique ( $emailS ) va être ajoutée à la liste cormas.". "<br>". 

	"Vous receverez un message de confirmation bientôt.</td></tr>" ;

  echo "</table>";     ?>

      <hr>
      <h2>Contribuer au forum cormas</h2>
      <p>Vous venez d'&ecirc;tre abonn&eacute; au forum de discussion cormas. 
        Vous recevrez d&eacute;sormais tous les messages &eacute;chang&eacute;s 
        sur ce forum. Vos contributions personnelles sont &agrave; envoyer &agrave; 
        <a href="mailto:cormas@cirad.fr">cormas@cirad.fr</a></p>
      <h2 class="para"> Consulter les archives du forum cormas</h2>

      <ul>
        <li><a href="http://cormas.cirad.fr/forum/cormas/old1999_2002/index.html">De 
          1999 &agrave; juillet 2002</a></li>
        <li><a href="http://cormas.cirad.fr/forum/cormas/archives/old2002_2003/index.html">D'ao&ucirc;t 
          2002 &agrave; f&eacute;vrier 2003</a></li>
        <li><a href="http://cormas.cirad.fr/forum/cormas/archives/index.html">Depuis 
          mars 2003</a></li>
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



