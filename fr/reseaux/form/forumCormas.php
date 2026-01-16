<?
session_start();
// Function for random a code.
function rand_code($len) {

srand((double)microtime()*10000000);
// The letters for random
$chars="abcdefghijklmnopqrstuvwxyz123456789";
$ret_str="";
$num=strlen($chars);

for($i=0;$i<$len;$i++) 
$ret_str.= $chars[rand()%$num];

// For debug by Oh
//echo "<br>The random numbers are : ".$ret_str."<br><br>";

return $ret_str;
}
// End function rand_code

// Our code has 4 digits.
$_SESSION['rand_value'] = rand_code(4);
?>
<html>

<head>

<meta name="KeyWords" content="Cormas, Cirad, gestion des ressources naturelles, natural resource management, INRM, environnement, environment, simulation, modelisation, modelling, SMA, MAS, multi-agent, smalltalk, visualworks, logiciel, software">

<title> Cormas Forum</title>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">



<!--#include virtual="/include/script.inc" -->

<link rel="stylesheet" href="/css/cormas.css" -->

</head>

<body  marginwidth="0" marginheight="0" topmargin="0" leftmargin="0" border="0" onLoad="MM_preloadImages('/images/en/accueil_r.gif','/images/en/demarche_r.gif','/images/en/logiciel_r.gif','/images/en/applications_r.gif','/images/en/biblio_r.gif','/images/en/formation_r.gif','/images/en/reseaux_r.gif')" bgcolor="#FFFFFF">

<?include("../haut.inc")?>

<table cellspacing="0" cellpadding="0" border="0" width="100%">
  <tr>

    <?include("sommair.inc")?>

    <td width="*" valign="top" bgcolor="#FFFFFF"> 

      <p>&nbsp;</p>

      <h1>Le forum Cormas</h1>
      <h2>Sujet</h2>
      <p>Nous souhaitons que le d&eacute;veloppement de Cormas se fasse de mani&egrave;re collective. Pour partager tout type d'information &agrave; propos de la plateforme de simulation Cormas, d'un mod&egrave;le multi-agent particulier d&eacute;velopp&eacute; avec Cormas, ou encore &agrave; propos de la simulation multi-agent en g&eacute;n&eacute;ral, vous &ecirc;tes invit&eacute;s &agrave; utiliser la liste de diffusion Cormas. Les contributions peuvent avoir pour sujet : </p>
      <ul>
        <li>tout aspect informatique relatif &agrave; Cormas (bugs, demandes d'explications, suggestions de modifications, contributions sous forme de m&eacute;thodes g&eacute;n&eacute;riques, etc.),</li>
        <li>des aspects m&eacute;thodologiques (sur le processus de construction d'un mod&egrave;le),</li>
        <li>des annonces de s&eacute;minaires, des appels &agrave; communication ou publication, des propositions de stages, des annonces de postes,</li>
        <li>des ressources bibliographiques int&eacute;ressantes. </li>
      </ul>
      <h2>Archives</h2>
      <p><a href="/forum/cormas/archives/index.html">Tous les messages re&ccedil;us</a> depuis la cr&eacute;ation de ce forum sont archiv&eacute;s <a href="/forum/cormas/archives/index.html">ici</a>. </p>
      <h2>Rejoindre / quitter le forum</h2>
      <table width="591" border="1">
        <tr> 
          <td width="22" height="22"> 
            <div align="center">To join the Cormas forum, submit 
              this form</div></td>
          <td width="22" height="22"> 
            <div align="center">To leave the Cormas forum, submit 
              this form</div></td>
        </tr>
        <tr> 
          <td height="22" width="22"> 
            <form action="subscribeCormas.php" method="post" name="sub" id="sub">
              <p> Your name : 
                <input type="text" name="nomS" id="nomS" size="25" value="<?echo $_SESSION["nomS"]?>">
              </p>
              <p> Your e-mail : 
                <input type="text" name="emailS" id="emailS" size="25" value="<?echo $_SESSION["emailS"]?>">
              </p>
              
			  <p>Verification code : <img src="imagecode.php?<?=$_SESSION['rand_value'];?>"></p>

			  <p> <font size="2" face="Arial">Enter the code : </font> 
              <input type="text" name="codeS" id="codeS" size="4" value=""></p>

              <p><input name="SubmitS" type="submit" id="SubmitS" value="Subscribe"></p>
            </form>
		</td>

          <td width="22" height="22"> 
            <form action="unsubscribeCormas.php" method="post" name="unsub" id="unsub">
              <p> Your name : 
                <input name="nomU" type="text" id="nomU" size="25" value="<?echo $_SESSION["nomU"]?>">
              </p>
              <p> Your e-mail : 
                <input name="emailU" type="text" id="emailU" size="25" value="<?echo $_SESSION["emailU"]?>">
              </p>
			  
			  <p>Verification code : <img src="imagecode.php?<?=$_SESSION['rand_value'];?>"></p>
			  <p> <font size="2" face="Arial">Enter the code : </font> 
              <input type="text" name="codeU" id="codeU" size="4" value="">

              <p><input name="SubmitU" type="submit" id="SubmitU" value="Unsubscribe"></p>
            </form></td>
        </tr>
      </table>
      <p>&nbsp;</p>

      <?include("../../../include/copyright_en.inc")?>

    </td>

    <td width="15" valign="top" bgcolor="#FFFFFF"> 

    <div align="right" class="texte"></div>

    </td>

  </tr>

</table>

</body>

</html>

