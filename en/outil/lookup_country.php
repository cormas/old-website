<?
include("connectdb.php");
include ("member.class");
?>
<HTML>
<HEAD>
<SCRIPT TYPE="text/javascript" LANGUAGE="JavaScript"><!--
function changetsic() {
    //opener.day = day + '';
    //opener.document.data.d1.value = '' + padout(opener.day) + '-' + padout(opener.month - 0 + 1) + '-' + opener.year;
	//opener.document.data.d1.value = '' + opener.year +'-'+ padout(opener.month - 0 + 1) + '-' + padout(opener.day);

	opener.document.data.d1.value = f1.freetext.value;
	opener.document.data.country.selectedIndex=f1.freetext.value;
	f1.submit();
//	window.close();
}
function selecttsic() {
    //opener.day = day + '';
    //opener.document.data.d1.value = '' + padout(opener.day) + '-' + padout(opener.month - 0 + 1) + '-' + opener.year;
	//opener.document.data.d1.value = '' + opener.year +'-'+ padout(opener.month - 0 + 1) + '-' + padout(opener.day);

	opener.document.data.d1.value = f1.freetext.value;
	opener.document.data.d2.value = f1.country.options[f1.country.selectedIndex].value;
	opener.document.data.country.value=f1.country.options[f1.country.selectedIndex].value;
//	f1.submit();
//	window.close();
}
//--></SCRIPT>
</HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Country</title>
<BODY TOPMARGIN=2 LEFTMARGIN=5>

<P><CENTER>

<p><center><h2><image src='/cormas/images/report_icon7.gif'  ALT='Summary Report'>Find country</h2></center>

<form name='f1' action='lookup_country.php' method='POST'>
<table>
<?
echo "<tr>".$TD3.$Header[$HeaderColor]."Step 1 : Enter a country and click on 'Lookup' button</font><td></tr>";
?>

<tr>
<td bgcolor='#FFFFCC'>Country : </td>
<td bgcolor='#FFFFCC'><input type=text name='freetext'></td>
<td bgcolor='#FFFFCC'><INPUT TYPE="button" name='button1' VALUE="Lookup" onClick="changetsic()"></td>
</tr>

<?
echo "<tr>".$TD3.$Header[$HeaderColor]."Step 2 : Select country</font><td></tr>";
?>

<tr>
<td bgcolor='#FFFFCC'>Country : </td>
<td bgcolor='#FFFFCC' colspan=2>
<?
	$Obj = new Member;// create an object of Member class
	$Obj->connectDB();
	//Country
	$i_country=0;
	$freetext=$_POST['freetext'];
	//echo "tsic=".$tsic."<br>";
	$criteria="";
	if($freetext<>null or $freetext<>""){
		$criteria=" and c.clause like '%".$freetext."%'";
	}
	//echo "cretirai=".$criteria."<br>";
	$query_country=$query_country."'".$language_en."'".$criteria;
	//echo "query_country=".$query_country."<br>";
	$result_country=mysql_query($query_country);
	$num_country=mysql_numrows($result_country);

	echo "<select name=country onChange='selecttsic()' onClick='selecttsic()'>";
	while($i_country<$num_country){
		$c_id=mysql_result($result_country, $i_country, "country_id");
		$c_name=mysql_result($result_country, $i_country, "clause");
			$str1= "<option value='" .$c_id."'> ".$c_name."</option>";
		echo $str1;
		$i_country++;
	}
	echo "</select></td></tr>";
?>
</td>
</tr>

</table>
</form>
</CENTER>
</BODY>
</HTML>