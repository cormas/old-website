<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<script type="text/javascript">
<!--
function actionShowHideme() 
{ 
	if(form1.combo.selectedIndex == 1){
		form1.txt1.style.visibility="hidden";
		form1.txt3.style.visibility="hidden";
	}
	else if(form1.combo.selectedIndex == 2){
		form1.txt2.style.visibility="hidden";
		form1.txt4.style.visibility="hidden";
	}
	else if(form1.combo.selectedIndex == 3 || form1.combo.selectedIndex == 0){
		form1.txt1.style.visibility="visible";
		form1.txt2.style.visibility="visible";

		form1.txt3.style.visibility="visible";
		form1.txt4.style.visibility="visible";
	}
} 

function actionShowHideme2() 
{ 
	if(form1.purpose.selectedIndex == 1){
		form1.txt1.style.visibility="hidden";
		form1.txt3.style.visibility="hidden";
	}
	else if(form1.purpose.selectedIndex == 2){
		form1.txt2.style.visibility="hidden";
		form1.txt4.style.visibility="hidden";
	}
	else if(form1.purpose.selectedIndex == 3 || form1.purpose.selectedIndex == 0){
		form1.txt1.style.visibility="visible";
		form1.txt2.style.visibility="visible";

		form1.txt3.style.visibility="visible";
		form1.txt4.style.visibility="visible";
	}
}

//function actionShowHideme3() 
function toSpecificPurpose()
{ 
	if(form1.purpose.options[form1.purpose.selectedIndex].value == 4){
		form1.purpose_remarks.style.visibility="visible";
		form1.purpose_remarks.focus();
//		form1.purpose_remarks.value="Please specific about your purpose.";
	}
	else if(form1.purpose.options[form1.purpose.selectedIndex].value != 4){
		form1.purpose_remarks.style.visibility="hidden";
		form1.purpose_remarks.value="";
	}
}
//-->
</script>
</head>

<?
include("connectdb.php");
include ("member.class");

	$id=$_POST['txtmember_id'];
	$mode=$_POST['lmode'];
	$fname= $_POST['fname']; 
	$mname= $_POST['mname']; 
	$lname= $_POST['lname']; 
	$email= $_POST['email']; 
	$company= $_POST['company']; 
	$city= $_POST['city']; 
	$country= $_POST['country']; 
	$interest= $_POST['interest']; 
	$know= $_POST['know']; 
	$register_date = date("Y-m-d");
	$myaction=$_POST['txtaction'];
	$purpose=$_POST['purpose'];
	$purpose_remarks=$_POST['purpose_remarks'];

	$Obj = new Member;// create an object of Member class
	$Obj->language=$mode;
	//$Obj->fname = ereg_replace("[^A-Za-z0-9]", "", $fname);
	$Obj->id=$id;
	$Obj->fname=trim($fname);
	$Obj->mname=trim($mname);
	$Obj->lname=trim($lname);
	$Obj->email=$email;
	$Obj->company=trim($company);
	$Obj->city=trim($city);
	$Obj->country=trim($country);
	$Obj->interest=trim($interest);
	$Obj->know=$know;
	$Obj->action=$myaction;
	$Obj->purpose=$purpose;
	$Obj->purpose_remarks=$purpose_remarks;
	
	//$Obj->showInfo();
	list($userName, $mailDomain) = split("@", $Obj->email); 
	$email_good_format = $Obj->myCheckDNSRR($mailDomain,"");
	
	 $onSubscribe=$_POST['onsubscribe'];
	 $onDownload=$_POST['ondownload'];
	 /*echo "1.".$_POST['onsubscribe'];
	 echo "2.".$_POST['ondownload'];*/

	 if($onSubscribe==1 || $onSubscribe==2)
	 {
		$Obj->onSubscribe=true;
	 }
	 if($onDownload==1){
		$Obj->onDownload=true;
	 }
	
	$Obj->connectDB();

	/*echo "Purpose=".$Obj->purpose."<br>";
	echo "Remarks=".$Obj->purpose_remarks;*/

	if($Obj->action=="download" && empty($Obj->fname)==false && is_null($Obj->fname)==false && empty($Obj->lname)==false && is_null($Obj->lname)==false && empty($Obj->email)==false && is_null($Obj->email)==false && empty($Obj->country)==false && is_null($Obj->country)==false && empty($Obj->interest)==false && is_null($Obj->interest)==false && empty($Obj->know)==false && is_null($Obj->know)==false && empty($Obj->purpose)==false && is_null($Obj->purpose)==false && $email_good_format==1 && $Obj->checkDuplicateEmail()==0 && $Obj->purpose!="4"){
		//Allow to save
		echo "To save data.<br>";
		if($Obj->onSubscribe==false && $Obj->onDownload==false){
			//Add new user
			//1. Add to member
			$Obj->AddNewProfile();
		}
		else{
			//Update user info
			$Obj->updateProfile();			
		}
			$Obj->retrieveMemberID();
			$Obj->AddNewDownload();
			ThankyouMessage();
	}//end if#1
	elseif($Obj->action=="download" && empty($Obj->fname)==false && is_null($Obj->fname)==false && empty($Obj->lname)==false && is_null($Obj->lname)==false && empty($Obj->email)==false && is_null($Obj->email)==false && empty($Obj->country)==false && is_null($Obj->country)==false && empty($Obj->interest)==false && is_null($Obj->interest)==false && empty($Obj->know)==false && is_null($Obj->know)==false && empty($Obj->purpose)==false && is_null($Obj->purpose)==false && $email_good_format==1 && $Obj->checkDuplicateEmail()==0 && $Obj->purpose=="4" && empty($Obj->purpose_remarks)==false && is_null($Obj->purpose_remarks)==false){
			//Allow to save
			//echo "To save data.<br>";	
		if($Obj->onSubscribe==false && $Obj->onDownload==false){
			//Add new user
			//1. Add to member
			$Obj->AddNewProfile();
		}
		else{
			//Update user info
			$Obj->updateProfile();			
		}
			$Obj->retrieveMemberID();
			$Obj->AddNewDownload();
			ThankyouMessage();
		}
	else{
			echo "<center><h1>".strtoupper($Obj->action)."</h1></center>";
			echo "<br><center>".$RedFont."<b>Your information is not completed, please check again.</font></center>";
			list($userName, $mailDomain) = split("@", $Obj->email); 
			$email_good_format = $Obj->myCheckDNSRR($mailDomain,"");
			if($email_good_format==0 || $Obj->checkDuplicateEmail()==1){
				$Obj->email="";
			}
			$query_country=$query_country."'".$Obj->language."'";
			$query_know=$query_know."'".$Obj->language."'";
			$query_level_interest=$query_level_interest."'".$Obj->language."'";
			$query_purpose=$query_purpose."'".$Obj->language."'";

			DownloadForm($Obj,$query_country,$query_know,$query_purpose);	
	}
?>