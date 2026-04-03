<HTML lang="en">
<HEAD>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<SCRIPT TYPE="text/javascript" LANGAUGE="JavaScript"><!--

function newWindow1() {
    mywindow=open('calendar1.htm','myname','resizable=no,width=350,height=270');
    mywindow.location.href = 'calendar1.htm';
    if (mywindow.opener == null) mywindow.opener = self;
}
function newWindow2() {
    mywindow=open('calendar2.htm','myname','resizable=no,width=350,height=270');
    mywindow.location.href = 'calendar2.htm';
    if (mywindow.opener == null) mywindow.opener = self;
}
function openTSICTextbox() {
    mywindow=open('lookup_country.php','myname','resizable=no,width=550,height=250');
    mywindow.location.href = 'lookup_country.php';
    if (mywindow.opener == null) mywindow.opener = self;
}

function openLookupCountry0() {
	data.txt1.value = "0";
	openLookupCountry();
}

function toSelectFiveCountry() {
// Show the five choies
}

function openLookupCountry() {
    mywindow=open('lookup_country.php','myname','resizable=no,width=550,height=250');
    mywindow.location.href = 'lookup_country.php';
    if (mywindow.opener == null) mywindow.opener = self;
}
 
function openLookupCountry1() {
	data.txt1.value = "1";
	openLookupCountry();
}
function openLookupCountry2() {
	data.txt1.value = "2";
	openLookupCountry();
}
function openLookupCountry3() {
	data.txt1.value = "3";
	openLookupCountry();
}
function openLookupCountry4() {
	data.txt1.value = "4";
	openLookupCountry();
}
function openLookupCountry5() {
	data.txt1.value = "5";
	openLookupCountry();
}

function actionShowHideme3() { 
	if(data.show_country[0].checked){ // All country
		toHideSpecificCountry();
		toHideGroupCountry();

		data.country.style.visibility="hidden";
		data.button_country.style.visibility="hidden";

		data.group_by[0].disabled=false;
		data.group_by[1].disabled=false;
		data.group_by[2].disabled=false;

		data.group_by[0].checked=false;
		data.group_by[1].checked=false;
		data.group_by[2].checked=true;
	}
	if(data.show_country[1].checked){ // Specific country
		toHideGroupCountry();
		toShowSpecificCountry();
		data.group_by[0].disabled=true;
		data.group_by[1].disabled=false;
		data.group_by[2].disabled=false;

		data.group_by[0].checked=false;
		data.group_by[1].checked=false;
		data.group_by[2].checked=true;
	}
	if(data.show_country[2].checked){ // Five countries
		toHideSpecificCountry();
		toShowGroupCountry();
		data.group_by[0].disabled=false;
		data.group_by[1].disabled=false;
		data.group_by[2].disabled=false;

		data.group_by[0].checked=false;
		data.group_by[1].checked=false;
		data.group_by[2].checked=true;	
	}
}

function toHideSpecificCountry(){
	data.country.style.visibility="hidden";
	data.button_country.style.visibility="hidden";
}
function toShowSpecificCountry(){
	data.country.style.visibility="visible";
	data.button_country.style.visibility="visible";
}

function toHideGroupCountry(){
	data.country1.style.visibility="hidden";
	data.country2.style.visibility="hidden";
	data.country3.style.visibility="hidden";
	data.country4.style.visibility="hidden";
	data.country5.style.visibility="hidden";

	data.button1.style.visibility="hidden";
	data.button2.style.visibility="hidden";
	data.button3.style.visibility="hidden";
	data.button4.style.visibility="hidden";
	data.button5.style.visibility="hidden";
}
function toShowGroupCountry(){
	data.country1.style.visibility="visible";
	data.country2.style.visibility="visible";
	data.country3.style.visibility="visible";
	data.country4.style.visibility="visible";
	data.country5.style.visibility="visible";

	data.button1.style.visibility="visible";
	data.button2.style.visibility="visible";
	data.button3.style.visibility="visible";
	data.button4.style.visibility="visible";
	data.button5.style.visibility="visible";
}

function init(){
	toHideSpecificCountry();
	toHideGroupCountry();

	data.show_country[0].checked =true;
	data.report_name[0].checked =true;
	data.report_style[0].checked =true;
	data.group_by[2].checked = true;
	data.chart_style[0].checked = true;
}

function actionShowHideChartStyle(){
	if (data.report_style[0].checked){//Chart
		//data.chart_style[0].style.visibility="visible";
		//data.chart_style[1].style.visibility="visible";

		data.chart_style[0].disabled = false;
		data.chart_style[1].disabled = false;

		data.chart_style[0].checked = true;
		data.chart_style[1].checked = false;
	}
	else if (data.report_style[1].checked){//Table
		//data.chart_style[0].style.visibility="hidden";
		//data.chart_style[1].style.visibility="hidden";

		data.chart_style[0].disabled = true;
		data.chart_style[1].disabled = true;

		data.chart_style[0].checked = false;
		data.chart_style[1].checked = false;
	}
}

function actionCheckChartStyle(){
	if(data.group_by[0].checked){//Country
		data.chart_style[0].checked=false;
		data.chart_style[1].checked=true;
		data.chart_style[2].checked=false;

	}
	else if (data.group_by[1].checked){//Month
		data.chart_style[0].checked=true;
		data.chart_style[1].checked=false;
		data.chart_style[2].checked=false;
	}
	else if (data.group_by[2].checked){//Year
		data.chart_style[0].checked=true;
		data.chart_style[1].checked=false;
		data.chart_style[2].checked=false;
	}
}
</SCRIPT>

</HEAD>

<BODY onload="init()">
<?
include("connectdb.php");
include ("member.class");

$Obj = new Report;
$Obj->connectDB();
$result_lookup=mysql_query($query_first_date_download);
$n=mysql_numrows($result_lookup);
if($n>0){
	$default_date = mysql_result($result_lookup,0, "download_date");
}
			$thismonth=substr(date("Y-m-d"),5,2);
			$thisyear=substr(date("Y-m-d"),0,4);
			$lastdate=$Obj->LastDateofMonth($thismonth,$thisyear);
			/*echo "<br>".$thismonth."<br>";
			echo "<br>".$thisyear."<br>";
			echo "<br>".$lastdate."<br>";*/
			$lastdate = $thisyear."-".$thismonth."-".$lastdate;
			//echo "<br>".$lastdate."<br>";

echo "<p><center><h1><image src='/cormas/images/report_icon7.gif'  ALT='Summary Report'>Summary Report</h1></center>";
?>

<FORM NAME="data" action="g1_test.php" method="POST">
<?
echo "<br><center><table border=0>";

//Lable for report type
echo "<tr>".$TD3.$Header[$HeaderColor]."Step 1 : Select report </font><td></tr>";
//Report name
echo "<tr>".$TD4.$TD2."Report :</td>".$TD2;
echo "<input type =radio name=report_name value='1'>Download";
echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name=report_name value='2'>Subscribe";
echo"</td></tr>";

//Period
echo "<tr>".$TD3.$Header[$HeaderColor]."Step 2 : Select period</font><td></tr>";
//Period  from
echo "<tr>".$TD4.$TD2."Period : </td>".$TD2." from ";
?>
<INPUT TYPE="TEXT" NAME="d1" VALUE="<?echo $default_date;?>" SIZE="10">

<INPUT TYPE="button" VALUE="..." onClick="newWindow1()">
<?
//Period  from
echo "to ";
?>
<INPUT TYPE="TEXT" NAME="d2" VALUE="<?echo $lastdate;?>" SIZE="10">
<INPUT TYPE="button" VALUE="..." onClick="newWindow2()">
<?
"</td></tr>";

//Report type
echo "<tr>".$TD3.$Header[$HeaderColor]."Step 3 : Select report type </font><td></tr>";
echo "<tr>".$TD4.$TD2."Report type</td>".$TD2;
//Report type
?>
<input type ="radio" name="report_style" value='1' onClick="actionShowHideChartStyle()">Chart
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="report_style" value='2' onClick="actionShowHideChartStyle()">Table
</td></tr>
<?

//Lable for date range
echo "<tr>".$TD3.$Header[$HeaderColor]."Step 4 : Select country</font><td></tr>";

$Obj = new Member;// create an object of Member class
$Obj->connectDB();
//Country
$i_country=0;
$query_country=$query_country."'".$language_en."'";
$result_country=mysql_query($query_country);
$num_country=mysql_numrows($result_country);

echo "<tr>".$TD4.$TD2."Country :</td>";
echo $TD2;
?>
<input type="radio" name=show_country value="all_country" onClick="actionShowHideme3()" >All country
<br><input type="radio" name=show_country value="specific" onClick="actionShowHideme3()">Only&nbsp;&nbsp;&nbsp;

<select name="country">
<?
while($i_country<$num_country){
	$c_id=mysql_result($result_country, $i_country, "country_id");
	$c_name=mysql_result($result_country, $i_country, "clause");
		$str1= "<option value='" .$c_id."'> ".$c_name."</option>";
	echo $str1;
	$i_country++;
}
echo "</select>";
?>
<INPUT name="button_country" TYPE="button" VALUE="Find" onClick="openLookupCountry0()"><br>
<input type="radio" name=show_country value="five_country" onClick="actionShowHideme3()">Compare counties
<?
echo"<table>";
//-----------------------------------Country # 1----------------------------------------
$i_country=0;
echo "<tr><td>1 :</td> ";
echo "<td><select name=country1>";
while($i_country<$num_country){
	$c_id=mysql_result($result_country, $i_country, "country_id");
	$c_name=mysql_result($result_country, $i_country, "clause");
		$str1= "<option value='" .$c_id."'> ".$c_name."</option>";
	echo $str1;
	$i_country++;
}
echo "</select>";
?>
<td bgcolor='#FFFFCC'><INPUT TYPE="button" name='button1' VALUE="Find" onClick="openLookupCountry1()">
<?
echo "</td></tr>";
//-----------------------------------Country # 2----------------------------------------
$i_country=0;
echo "<tr><td>2 :</td> ";
echo "<td><select name=country2>";
while($i_country<$num_country){
	$c_id=mysql_result($result_country, $i_country, "country_id");
	$c_name=mysql_result($result_country, $i_country, "clause");
		$str1= "<option value='" .$c_id."'> ".$c_name."</option>";
	echo $str1;
	$i_country++;
}
echo "</select>";
?>
<td bgcolor='#FFFFCC'><INPUT TYPE="button" name='button2' VALUE="Find" onClick="openLookupCountry2()">
<?
echo "</td></tr>";
//-----------------------------------Country # 3----------------------------------------
$i_country=0;
echo "<tr><td>3 :</td> ";
echo "<td><select name=country3>";
while($i_country<$num_country){
	$c_id=mysql_result($result_country, $i_country, "country_id");
	$c_name=mysql_result($result_country, $i_country, "clause");
		$str1= "<option value='" .$c_id."'> ".$c_name."</option>";
	echo $str1;
	$i_country++;
}
echo "</select>";
?>
<td bgcolor='#FFFFCC'><INPUT TYPE="button" name='button3' VALUE="Find" onClick="openLookupCountry3()">
<?
echo "</td></tr>";
//-----------------------------------Country # 4----------------------------------------
$i_country=0;
echo "<tr><td>4 :</td> ";
echo "<td><select name=country4>";
while($i_country<$num_country){
	$c_id=mysql_result($result_country, $i_country, "country_id");
	$c_name=mysql_result($result_country, $i_country, "clause");
		$str1= "<option value='" .$c_id."'> ".$c_name."</option>";
	echo $str1;
	$i_country++;
}
echo "</select>";
?>
<td bgcolor='#FFFFCC'><INPUT TYPE="button" name='button4' VALUE="Find" onClick="openLookupCountry4()">
<?
echo "</td></tr>";
//-----------------------------------Country # 5----------------------------------------
$i_country=0;
echo "<tr><td>5 :</td> ";
echo "<td><select name=country5>";
while($i_country<$num_country){
	$c_id=mysql_result($result_country, $i_country, "country_id");
	$c_name=mysql_result($result_country, $i_country, "clause");
		$str1= "<option value='" .$c_id."'> ".$c_name."</option>";
	echo $str1;
	$i_country++;
}
echo "</select>";
?>
<td bgcolor='#FFFFCC'><INPUT TYPE="button" name='button5' VALUE="Find" onClick="openLookupCountry5()">
<?
echo "</td></tr>";
echo "<tr><td colspan=2><input type=hidden name=txt1>";
echo "</table>";
//--------------------------------------------------------------------------------------

echo "</td></tr>";

//Group by
echo "<tr>".$TD3.$Header[$HeaderColor]."Step 5 : Group by </font><td></tr>";
echo "<tr>".$TD4.$TD2."Group by</td>".$TD2;
//Report type
?>
<input type ="radio" name="group_by" value='1' onClick="actionCheckChartStyle()">Country
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="group_by" value='2' onClick="actionCheckChartStyle()">Month
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="radio" name="group_by" value='3' onClick="actionCheckChartStyle()">Year
</td></tr>
<?
//Graph type
echo "<tr>".$TD3.$Header[$HeaderColor]."Step 6 : Graph style </font><td></tr>";
echo "<tr>".$TD4.$TD2."Graph</td>".$TD2;
//Report type
?>
<label for id="bar"><input type ="radio" id="bar" name="chart_style" value='2' >Bar</label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<label for id="pie"><input type="radio" id="pie" name="chart_style" value='1'>Pie </label>
</td></tr>

<?
//Buttons
echo"<tr>".$TD3."<center><input type='submit' value='View report'>";
echo"<input type='reset' value='Clear'>";
echo "<input type=button value='Close' onclick='window.close();'>";
echo "</center></td></tr>";

echo "</table></center>";
?>

<P> 
</FORM>
<P><A HREF="">Home</A>
</BODY>
</HTML>
