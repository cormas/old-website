<?
//Global variables
//$action="subscribe";
//$action="download";
$strMark="<font color='#FF0000'>*</font>";
$RedFont="<font color ='#FF0000'>";
$BlackFont="<font color='#000000'>";
$Header[0]="<font color=000099><h4><b>";//bold with bule color
$Header[1]="<font color=black><h4><b>";//bold with bule color

$HeaderColor=1;

$TD1="<td bgcolor='#FFCC66'>";//yellow
$TD2="<td bgcolor='#FFFFCC'>";//light yellow
$TD3="<td colspan=3 bgcolor='#FFCC66'>";//yellow
$TD1_2="<td bgcolor='#FFCC66' colspan=2>";//yellow
$TD4="<td bgcolor='#FFFFCC'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>";//yellow

$NewRow="<tr><td colspan=2><br></td></tr>";

$language_en="2";
$language_fr="1";

$query_register_form="select q.form_id, q.lorder, c.clause as display_label from questionset q, SysDictionary s, Clause c, Language l where form_id=1 and q.label=s.clause_set and s.clause_id=c.clause_id and l.language_id=c.language_id and l.language_id like"; //'".$language_mode."'";
//echo "Query register_form=".$query_register_form."<br><br>";

$query_download_form="select q.form_id, q.lorder, c.clause as display_label from questionset q, SysDictionary s, Clause c, Language l where form_id=2 and q.label=s.clause_set and s.clause_id=c.clause_id and l.language_id=c.language_id and l.language_id like"; //'".$language_mode."'";

$query_subscribe_form="select q.form_id, q.lorder, c.clause as display_label from questionset q, SysDictionary s, Clause c, Language l where form_id=4 and q.label=s.clause_set and s.clause_id=c.clause_id and l.language_id=c.language_id and l.language_id like"; //'".$language_mode."'";

$query_country ="select ct.country_id as country_id, c.clause as clause from country ct, clause c, sysDictionary s, language l where c.clause_id=s.clause_id and ct.country_clause_set=s.clause_set and l.language_id=c.language_id and l.language_id like ";//'".$language_mode."'";

$query_know ="select k.know_id as know_id, c.clause as know from sysDictionary s, Clause c, Know k, Language l where s.clause_id=c.clause_id and k.know_clause_set=s.clause_set  and l.language_id=c.language_id and l.language_id like ";//'".$language_mode."'";

$query_purpose="select p.purpose_id, c.clause as purpose from sysDictionary s, Clause c, purpose p, Language l  where s.clause_id=c.clause_id and p.purpose_clause_set=s.clause_set and l.language_id=c.language_id and l.language_id like ";//

$query_level_interest="select li.level_id as level_interest_id, c.clause as clause from sysDictionary s, Clause c, level_interest li, Language l where s.clause_id=c.clause_id and li.level_interest_clause_set=s.clause_set  and l.language_id=c.language_id and l.language_id like";

//The first date for downloading
$query_first_date_download="select d.download_date from download d order by d.download_date asc limit 1";

// Report by country
$query_download_path1="select count(a.member_id) total, a.country_name "
						."from ( "
						."select distinct m.member_id, m.country_id, c.clause as country_name "
						."from member m, download d, country ct, clause c, sysDictionary s, language l "
						."where (m.member_id = d.member_id) and m.country_id=ct.country_id and c.clause_id=s.clause_id "
						."and ct.country_clause_set=s.clause_set and l.language_id=c.language_id "
						."and l.language_id like '2' ";
						//and d.download_date between '2006-01-01' and '2007-12-31' 
$query_download_path2=") a "
						."group by a.country_name";

$query_subscribe_path1 ="select m.country_id, c.clause as country_name, count(m.member_id) as total " 
						."from member m, subscribe d, country ct, clause c, sysDictionary s, language l "
						."where (m.member_id = d.member_id) and m.country_id=ct.country_id and c.clause_id=s.clause_id and "
						."ct.country_clause_set=s.clause_set and l.language_id=c.language_id and l.language_id like '2' "
						."and d.unsubscribe like '0' ";//and d.subscribe_date between '2006-01-01' and '2006-12-31'
$query_subscribe_path2= "group by c.clause, m.country_id";

$query_unsubscribe_path1 ="select m.country_id,c.clause as country_name, count(m.member_id) as total " 
						."from member m, subscribe d, country ct, clause c, sysDictionary s, language l "
						."where (m.member_id = d.member_id) and m.country_id=ct.country_id and c.clause_id=s.clause_id and "
						."ct.country_clause_set=s.clause_set and l.language_id=c.language_id and l.language_id like '2' "
						."and d.unsubscribe like '1' ";//and d.subscribe_date between '2006-01-01' and '2006-12-31'
$query_unsubscribe_path2= "group by c.clause, m.country_id";

// Report by month
$query_unsubscribe_by_month_path1 = "select b.desc_en month, ifnull(a.total,0) total, b.month_id mm "
							."from month b left join( "
							."select count(m.member_id) total,substring(d.unsubscribe_date,6,2)+0 mm "
							."from member m, subscribe d, language l, country c, clause cl "
							."where (m.member_id = d.member_id) and l.language_id like '2' and d.unsubscribe like '1' "
							."and c.country_clause_set=cl.clause_id and cl.language_id=l.language_id "
							."and c.country_id=m.country_id ";
							//and d.subscribe_date between '2006-01-01' and '2006-12-31'
$query_unsubscribe_by_month_path2="group by substring(d.unsubscribe_date,6,2))a on b.month_id = a.mm";

$query_subscribe_by_month_path1 = "select b.desc_en month, ifnull(a.total,0) total, b.month_id mm "
							."from month b left join( "
							."select count(m.member_id) total, substring(d.subscribe_date,6,2)+0 mm "
							."from member m, subscribe d, language l, country c, clause cl "
							."where (m.member_id = d.member_id) and l.language_id like '2' and d.unsubscribe like '0' "
							."and c.country_clause_set=cl.clause_id and cl.language_id=l.language_id "
							."and c.country_id=m.country_id ";
							//and d.subscribe_date between '2006-01-01' and '2006-12-31'
$query_subscribe_by_month_path2="group by substring(d.subscribe_date,6,2))a on b.month_id = a.mm";

$query_download_by_month_path1="select b.desc_en month, ifnull(aa.total,0) total, b.month_id mm "
								."from month b left join( "
								."select count(a.member_id) total,a.mm "
								."from ( "
								."select distinct m.member_id member_id,substring(d.download_date,6,2)+0 mm  "
								."from member m, download d, language l, country c, clause cl "
								."where (m.member_id = d.member_id) and l.language_id like '2' "
								."and c.country_clause_set=cl.clause_id and cl.language_id=l.language_id "
								."and c.country_id=m.country_id ";
								//."and d.download_date between '2006-01-01' and '2007-12-31'"
$query_download_by_month_path2=") a "
								."group by a.mm "
								.")aa on b.month_id = aa.mm ";
// Report by Year
$query_download_by_year_path1="select count(a.member_id) total, a.yyyy year "
								."from ( "
								."select distinct m.member_id member_id,substring(d.download_date,1,4)+0 yyyy "
								."from member m, download d, language l "
								."where (m.member_id = d.member_id) and l.language_id like '2' ";
								//." and d.download_date between '2006-01-01' and '2007-12-31' 
$query_download_by_year_path2=")a "
								."group by a.yyyy";
$query_subscribe_by_year_path1="select count(a.member_id) total, a.yyyy year "
								."from ( "
								."select distinct m.member_id member_id,substring(d.subscribe_date,1,4)+0 yyyy "
								."from member m, subscribe d, language l "
								."where (m.member_id = d.member_id) and l.language_id like '2' "
								."and d.unsubscribe like'0' ";
								//." and d.download_date between '2006-01-01' and '2007-12-31' 
$query_subscribe_by_year_path2=")a "
								."group by a.yyyy";

$query_unsubscribe_by_year_path1="select count(a.member_id) total, a.yyyy year "
								."from ( "
								."select distinct m.member_id member_id,substring(d.subscribe_date,1,4)+0 yyyy "
								."from member m, subscribe d, language l "
								."where (m.member_id = d.member_id) and l.language_id like '2' "
								."and d.unsubscribe like'1' ";
								//." and d.download_date between '2006-01-01' and '2007-12-31' 
$query_unsubscribe_by_year_path2=")a "
								."group by a.yyyy";

function a(){
	echo"<center><br>+++++++++++++++++++++++++++++<br></center>";
}
function ThankyouMessage(){
		echo "<center><table>";
		echo "<form name=form1>";
		echo "<tr><td><h1>A bientôt.(^_^)<br><br></td></tr>";
		echo "<tr><td><center><input type=button value='Close' onclick='window.close();'></center>";
		echo "</td></tr>";
		echo "</form></table></center>";
}
function DownloadForm($Obj,$query_country,$query_know,$query_purpose){
		echo "<html><body OnLoad='document.form1.purpose.onchange();'>";
		echo "<table><form name=form1 action='validate_download.php' method='POST'>"; 
		echo "<tr>";
		ReEnterCommonQuestions($Obj,$query_country,$query_know,$query_purpose);
		ReEnterPurposeQuestions($Obj,$query_country,$query_know,$query_purpose);
		echo"<tr><td></td><td><input type='submit' value='Save'>";
		echo"<input type='reset' value='Clear'>";
		echo "<input type=button value='Close' onclick='window.close();'>";
		echo "</td></tr>";
		echo "</form></table>";
		echo "</body><html>";
}

function SubscribeForm($Obj,$query_country,$query_know,$query_level_interest){
		$result_level_interest = mysql_query($query_level_interest);
		$num_level_interest=mysql_numrows($result_level_interest);

		echo "<table><form name=form1 action='validate_subscribe.php' method='POST'>"; 
		echo "<tr>";
		ReEnterCommonQuestions($Obj,$query_country,$query_know,$query_level_interest);
		ReEnterInterestQuestions($Obj,$query_country,$query_know,$query_level_interest);
		echo"<tr><td></td><td><input type='submit' value='Save' />";
		echo"<input type='reset' value='Clear'>";
		echo "<input type=button value='Close' onclick='window.close();'>";
		echo "</td></tr>";
		echo "</form></table>";
}

function BlankSubscribeForm($Obj,$query_country,$query_know,$query_level_interest){
		$result_level_interest = mysql_query($query_level_interest);
		$num_level_interest=mysql_numrows($result_level_interest);

		echo "<table><form name=form1 action='validate_subscribe.php' method='POST'>"; 
		echo "<tr>";
		BlankCommonQuestions($Obj,$query_country,$query_know,$query_level_interest);
		BlankInterestQuestions($query_level_interest);
		echo"<tr><td></td><td><input type='submit' value='Save' />";
		echo"<input type='reset' value='Clear' /></td></tr>";
		echo "</form></table>";
}

function BlankCommonQuestions($Obj,$query_country,$query_know,$query_level_interest){
		$result_country=mysql_query($query_country);
		$num_country=mysql_numrows($result_country);

		$result_know=mysql_query($query_know);
		$num_know=mysql_numrows($result_know);

		/*-----------------------------------Body--------------------------------------------------------*/
	$width_1=50;
		echo "<td></td><td><input type=hidden name=onsubscribe value='".$Obj->onSubscribe."'></td></tr>";
		echo "<td></td><td><input type=hidden name=ondownload value='".$Obj->onDownload."'></td></tr>";
		echo "<td></td><td><input type=hidden name=txtaction value='".$Obj->action."'></td></tr>";

		echo "<td></td><td><input type=hidden name=lmode value='".$GLOBALS['language_en']."'></td></tr>";//Mode
		echo "<td><b>Please fill in your information</td></tr>";
		echo "<tr>".$GLOBALS['TD1']."Firstname".$GLOBALS['strMark']."</td>".$GLOBALS['TD1']."<input type=text name=fname size=".$width_1."></td></tr>";
		echo "<tr>".$GLOBALS['TD2']."Middlename</td>".$GLOBALS['TD2']."<input type=text name=mname size=".$width_1."></td></tr>";
		echo "<tr>".$GLOBALS['TD1']."Lastname".$GLOBALS['strMark']."</td>".$GLOBALS['TD1']."<input type=text name=lname size=".$width_1."></td></tr>";
		echo "<tr>".$GLOBALS['TD2']."Email".$GLOBALS['strMark']."</td>".$GLOBALS['TD2']."<input type=text name=email size=".$width_1." value='".$Obj->email."'></td></tr>";
		echo "<tr>".$GLOBALS['TD1']."Institute/Company</td>".$GLOBALS['TD1']."<input type=text name=company size=".$width_1."></td></tr>";
		echo $GLOBALS['TD2']."City</td>".$GLOBALS['TD2']."<input type=text name=city size=".$width_1."></td></tr>";

		echo $GLOBALS['TD1']."Country".$GLOBALS['strMark']."</td>";
		echo $GLOBALS['TD1'];
		$i_country=0;
		echo "<select name=country>";
		while($i_country<$num_country){
			$c_id=mysql_result($result_country, $i_country, "country_id");
			$c_name=mysql_result($result_country, $i_country, "clause");

				$str1= "<option value='" .$c_id."'> ".$c_name."</option>";

			echo $str1;
			$i_country++;
		}
		echo "</select></td></tr>";

		echo $GLOBALS['TD2']."Interest/Research area".$GLOBALS['strMark']."</td>".$GLOBALS['TD2']."<TEXTAREA name=interest COLS=40 ROWS=6></TEXTAREA></td></tr>";


		echo $GLOBALS['TD1']."How do you know cormas?".$GLOBALS['strMark']."</td>";
		echo $GLOBALS['TD1'];
		$i_know=0;
		echo "<select name=know>";
		while($i_know<$num_know){
			$k_id=mysql_result($result_know, $i_know, "know_id");
			$k_desc=mysql_result($result_know, $i_know, "know");

				$str1= "<option value='" .$k_id."'> ".$k_desc."</option>";

			echo $str1;
			$i_know++;
		}

		echo "</select></td></tr>";
}

function BlankInterestQuestions($query_level_interest){
		$result_level_interest = mysql_query($query_level_interest);
		$num_level_interest=mysql_numrows($result_level_interest);

		//------------------------------The 1st interest------------------------------
		echo "<tr><td><br><b>Please rang your interests which show below :</b></td><td></td></tr>";
		echo "<tr>".$GLOBALS['TD1']."Jobs/conferences announcements related to Agent-Based Modeling ?".$GLOBALS['strMark']."</td>".$GLOBALS['TD1'];
		echo "<select name=levelinterest1>";
		$i_l=0;
		while($i_l<$num_level_interest){
			$level_interest_id=mysql_result($result_level_interest, $i_l, "level_interest_id");
			$level_clause1=mysql_result($result_level_interest, $i_l, "clause");

				$str1= "<option value='" .$level_interest_id."'> ".$level_clause1."</option>";

			echo $str1;
			$i_l++;
		}
		echo "</select></td></tr>";

		//------------------------------The 2nd interest------------------------------
		echo "<tr>".$GLOBALS['TD2']."Discussion about using ABM in Integrated Natural Resources Management ?".$GLOBALS['strMark']."</td>".$GLOBALS['TD2'];
		$i_l=0;

		echo "<select name=levelinterest2>";

		//echo "<select name=purpose>";
		while($i_l<$num_level_interest){
			$level_interest_id=mysql_result($result_level_interest, $i_l, "level_interest_id");
			$level_clause1=mysql_result($result_level_interest, $i_l, "clause");

				$str1= "<option value='" .$level_interest_id."'> ".$level_clause1."</option>";

			echo $str1;
			$i_l++;
		}
		//echo "</select></td></tr>";
		echo "</select></td></tr>";

		//------------------------------The 3rd interest------------------------------
		echo "<tr>".$GLOBALS['TD1']."Cormas hot-line".$GLOBALS['strMark']."</td>".$GLOBALS['TD1'];
		$i_l=0;

		echo "<select name=levelinterest3>";
		//echo "<select name=purpose>";
		while($i_l<$num_level_interest){
			$level_interest_id=mysql_result($result_level_interest, $i_l, "level_interest_id");
			$level_clause1=mysql_result($result_level_interest, $i_l, "clause");

				$str1= "<option value='" .$level_interest_id."'> ".$level_clause1."</option>";

			echo $str1;
			$i_l++;
		}
		//echo "</select></td></tr>";
		echo "</select></td></tr>";
}

function ReEnterCommonQuestions($Obj,$query_country,$query_know,$query_level_interest){
		$result_country=mysql_query($query_country);
		$num_country=mysql_numrows($result_country);

		$result_know=mysql_query($query_know);
		$num_know=mysql_numrows($result_know);
		//echo "<br>Obj->country=".$Obj->country."<br>";

		/*-----------------------------------Body--------------------------------------------------------*/
	$width_1=50;
		echo "<td></td><td><input type=hidden name=lmode value='".$Obj->language."'></td></tr>";
		echo "<td></td><td><input type=hidden name=onsubscribe value='".$Obj->onSubscribe."'></td></tr>";
		echo "<td></td><td><input type=hidden name=ondownload value='".$Obj->onDownload."'></td></tr>";
		echo "<td></td><td><input type=hidden name=txtaction value='".$Obj->action."'></td></tr>";

		echo "<td></td><td><input type=hidden name=txtmember_id value='".$Obj->id."'></td></tr>";
		echo "<td></td><td><input type=hidden name=userkey value='".$Obj->userkey."' size=".$width_1."></td></tr>";
		echo "<td><b>Please fill in your information</td></tr>";
		if(empty($Obj->fname)==ture or is_null($Obj->fname)==ture){
			$fontColor=$GLOBALS['RedFont'];
		}
		else $fontColor=$GLOBALS['BlackFont'];
		echo "<tr>".$GLOBALS['TD1']."".$fontColor."Firstname".$GLOBALS['strMark']."</font></td>".$GLOBALS['TD1']."<input type=text name=fname value='".$Obj->fname."' size=".$width_1."></td></tr>";
		
		echo "<tr>".$GLOBALS['TD2']."Middlename</td>".$GLOBALS['TD2']."<input type=text name=mname value='".$Obj->mname."' size=".$width_1."></td></tr>";
		
		if(empty($Obj->lname)==ture or is_null($Obj->lname)==ture){
			$fontColor=$GLOBALS['RedFont'];
		}
		else $fontColor=$GLOBALS['BlackFont'];
		echo "<tr>".$GLOBALS['TD1'].$fontColor."Lastname".$GLOBALS['strMark']."</font></td>".$GLOBALS['TD1']."<input type=text name=lname value='".$Obj->lname."' size=".$width_1."></td></tr>";

		if(empty($Obj->email)==ture or is_null($Obj->email)==ture){
			$fontColor=$GLOBALS['RedFont'];
		}
		else $fontColor=$GLOBALS['BlackFont'];
		echo "<tr>".$GLOBALS['TD2']."".$fontColor."Email".$GLOBALS['strMark']."</font></td>".$GLOBALS['TD2']."<input type=text name=email value='".$Obj->email."' size=".$width_1."></td></tr>";

		echo "<tr>".$GLOBALS['TD1']."Institute/Company</td>".$GLOBALS['TD1']."<input type=text name=company value='".$Obj->company."' size=".$width_1."></td></tr>";


		echo "<tr>".$GLOBALS['TD2']."City</td>".$GLOBALS['TD2']."<input type=text name=city value='".$Obj->city."' size=".$width_1."></td></tr>";


		if(empty($Obj->country)==ture or is_null($Obj->country)==ture){
			$fontColor=$GLOBALS['RedFont'];
		}
		else $fontColor=$GLOBALS['BlackFont'];
		echo "<tr>".$GLOBALS['TD1']."".$fontColor."Country".$GLOBALS['strMark']."</td>";
//////////////////////////
		echo $GLOBALS['TD1'];
		$i_country=0;
		echo "<select name=country>";
		while($i_country<$num_country){
			$c_id=mysql_result($result_country, $i_country, "country_id");
			$c_name=mysql_result($result_country, $i_country, "clause");
				if($c_id==$Obj->country && empty($Obj->country)==false && is_null($Obj->country)==false){
					$str1= "<option selected value='" .$c_id."'> ".$c_name."</option>";
				}
				else{
					$str1= "<option value='" .$c_id."'> ".$c_name."</option>";
				}
			echo $str1;
			$i_country++;
		}//while($i_country)
		echo "</select></td></tr>";
//////////////////////////

		if(empty($Obj->interest)==ture or is_null($Obj->interest)==ture){
			$fontColor=$GLOBALS['RedFont'];
		}
		else $fontColor=$GLOBALS['BlackFont'];
		echo $GLOBALS['TD2'].$fontColor."Interest/Research area".$GLOBALS['strMark']."</td>".$GLOBALS['TD2']."<TEXTAREA name=interest COLS=40 ROWS=6>".$Obj->interest."</TEXTAREA></td></tr>";



		if(empty($Obj->know)==ture or is_null($Obj->know)==ture){
			$fontColor=$GLOBALS['RedFont'];
		}
		else $fontColor=$GLOBALS['BlackFont'];
		echo $GLOBALS['TD1'].$fontColor."How do you know cormas?".$GLOBALS['strMark']."</td>";
		echo $GLOBALS['TD1'];
		$i_know=0;
		echo "<select name=know>";
		while($i_know<$num_know){
			$k_id=mysql_result($result_know, $i_know, "know_id");
			$k_desc=mysql_result($result_know, $i_know, "know");

				if($k_id==$Obj->know && empty($Obj->know)==false && is_null($Obj->know)==false){
					$str1= "<option selected value='" .$k_id."'> ".$k_desc."</option>";
				}
				else{
					$str1= "<option value='" .$k_id."'> ".$k_desc."</option>";
				}
			echo $str1;
			$i_know++;
		}//while($i_know)

		echo "</select></td></tr>";

//-----------------------------------------------------------------------

}

function ReEnterPurposeQuestions($Obj,$query_country,$query_know,$query_purpose){

		$result_purpose=mysql_query($query_purpose);
		$num_purpose=mysql_numrows($result_purpose);

	echo "Purpose :".$Obj->purpose.", ".$Obj->remarks."<br>";

		//------------------------------Purpose------------------------------
		if((empty($Obj->purpose)==ture or is_null($Obj->purpose)==ture) || (empty($Obj->purpose_remarks)==true or is_null($Obj->purpose_remarks)==true) and ($Obj->purpose=="4" or $Obj->purpose=="0")){
			$fontColor=$GLOBALS['RedFont'];
		}
		else $fontColor=$GLOBALS['BlackFont'];

		echo "<tr>".$GLOBALS['TD2']. $fontColor."Purpose for downloading</font><font color='red'>*</font></td>";
		echo $GLOBALS['TD2'];
		?>
		<select name=purpose onchange="toSpecificPurpose();">
		<?
		//echo "<select name=purpose>";
		while($i_purpose<$num_purpose){
			$purpose_id=mysql_result($result_purpose, $i_purpose, "purpose_id");
			$purpose=mysql_result($result_purpose, $i_purpose, "purpose");

				$str1= "<option value='" .$purpose_id."'> ".$purpose."</option>";
				
				if($purpose_id==$Obj->purpose && empty($Obj->purpose)==false && is_null($Obj->purpose)==false){
					$str1= "<option selected value='" .$purpose_id."'> ".$purpose."</option>";
				}
				else{
					$str1= "<option value='" .$purpose_id."'> ".$purpose."</option>";		
				}

			echo $str1;
			$i_purpose++;
		}
		//echo "</select></td></tr>";
		echo "</select></td></tr>";
		//echo $GLOBALS['TD2']."<input type=text name=purpose_remarks value=''></td></tr>";
		//echo $GLOBALS['TD2']."<TEXTAREA name=purpose_remarks COLS=40 ROWS=6>".$Obj->purpose_remarks."</TEXTAREA></td></tr>";
		echo "<tr><td></td><td><TEXTAREA name=purpose_remarks COLS=40 ROWS=6>".$Obj->purpose_remarks."</TEXTAREA></tr>";
}

function ReEnterInterestQuestions($Obj,$query_country,$query_know,$query_level_interest){
		$result_level_interest = mysql_query($query_level_interest);
		$num_level_interest=mysql_numrows($result_level_interest);

		//------------------------------The 1st interest------------------------------
		$i_l=0;

		echo "<tr><td><br><b>Please rang your interests which show below :</b></td><td></td></tr>";

		if(empty($Obj->interest_level1)==ture or is_null($Obj->interest_level1)==ture){
			$fontColor=$GLOBALS['RedFont'];
		}
		else $fontColor=$GLOBALS['BlackFont'];
		echo "<tr>".$GLOBALS['TD2'].$fontColor."Jobs/conferences announcements related to Agent-Based Modeling ?".$GLOBALS['strMark']."</td>".$GLOBALS['TD2'];
		echo "<select name=levelinterest1>";
		//echo "<select name=purpose>";
		while($i_l<$num_level_interest){
			$level_interest_id=mysql_result($result_level_interest, $i_l, "level_interest_id");
			$level_clause1=mysql_result($result_level_interest, $i_l, "clause");

				if($level_interest_id==$Obj->interest_level1 && empty($Obj->interest_level1)==false && is_null($Obj->interest_level1)==false){
					$str1= "<option selected value='" .$level_interest_id."'> ".$level_clause1."</option>";
				}
				else{
					$str1= "<option value='" .$level_interest_id."'> ".$level_clause1."</option>";		
				}

			echo $str1;
			$i_l++;
		}
		echo "</select></td></tr>";

		//------------------------------The 2nd interest------------------------------
		if(empty($Obj->interest_level2)==ture or is_null($Obj->interest_level2)==ture){
			$fontColor=$GLOBALS['RedFont'];
		}
		else $fontColor=$GLOBALS['BlackFont'];
		echo "<tr>".$GLOBALS['TD1'].$fontColor."Discussion about using ABM in Integrated Natural Resources Management ?".$GLOBALS['strMark']."</td>".$GLOBALS['TD1'];
		$i_l=0;

		echo "<select name=levelinterest2>";

		//echo "<select name=purpose>";
		while($i_l<$num_level_interest){
			$level_interest_id=mysql_result($result_level_interest, $i_l, "level_interest_id");
			$level_clause1=mysql_result($result_level_interest, $i_l, "clause");

				if($level_interest_id==$Obj->interest_level2 && empty($Obj->interest_level2)==false && is_null($Obj->interest_level2)==false){
					$str1= "<option selected value='" .$level_interest_id."'> ".$level_clause1."</option>";
				}
				else{
					$str1= "<option value='" .$level_interest_id."'> ".$level_clause1."</option>";		
				}
			echo $str1;
			$i_l++;
		}
		//echo "</select></td></tr>";
		echo "</select></td></tr>";

		//------------------------------The 3rd interest------------------------------
		if(empty($Obj->interest_level3)==ture or is_null($Obj->interest_level3)==ture){
			$fontColor=$GLOBALS['RedFont'];
		}
		else $fontColor=$GLOBALS['BlackFont'];
		echo "<tr>".$GLOBALS['TD2'].$fontColor."Cormas hot-line".$GLOBALS['strMark']."</td>".$GLOBALS['TD2'];
		$i_l=0;

		echo "<select name=levelinterest3>";
		//echo "<select name=purpose>";
		while($i_l<$num_level_interest){
			$level_interest_id=mysql_result($result_level_interest, $i_l, "level_interest_id");
			$level_clause1=mysql_result($result_level_interest, $i_l, "clause");

				if($level_interest_id==$Obj->interest_level3 && empty($Obj->interest_level3)==false && is_null($Obj->interest_level3)==false){
					$str1= "<option selected value='" .$level_interest_id."'> ".$level_clause1."</option>";
				}
				else{
					$str1= "<option value='" .$level_interest_id."'> ".$level_clause1."</option>";		
				}
			echo $str1;
			$i_l++;
		}
		//echo "</select></td></tr>";
		echo "</select></td></tr>";

}

function generateKey($fname, $mname, $lname, $email){
	$date=date("Y-m-d");
	$time=time("HH:MM:SS");
	$userKey=md5($lname.$email.$mname.$fname.$date.$time);
	return $userKey;
}
?>
