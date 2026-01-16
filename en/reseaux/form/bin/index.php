<?
session_start();

function rand_code($len) {

srand((double)microtime()*10000000);
// all letters for random
$chars="abcdefghijklmnopqrstuvwxyz123456789";
$ret_str="";
$num=strlen($chars);

for($i=0;$i<$len;$i++) 
$ret_str.= $chars[rand()%$num];

// For debug by Oh
echo "<br>The random numbers are : ".$ret_str."<br><br>";

return $ret_str;

}

// How many characters in the code
$_SESSION['rand_value'] = rand_code(4);

?>

<table width="500" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="imagecode.php?<?=$_SESSION['rand_value'];?>">
      <form action="check.php" method="POST" name="frmImg" target="_self">
        <p> <font size="2" face="Arial">Enter the code here: </font> 
          <input name="txtcode" type="text" size="30"> </p>
        <p><input type="submit" name="Submit" value="OK"></p>
      </form>
    </td>
  </tr>
</table>
