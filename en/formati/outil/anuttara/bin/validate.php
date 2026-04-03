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

	$foundEmail="";
	$register_date = date("Y-m-d");
	$email=$_POST['email'];
	$myaction=$_REQUEST['action'];// Download or Subscribe or Unsubscribe
	
 echo "<center><h1>".strtoupper($myaction)."</h1></center>";
 /*$Sample->fname = "Anuttara";
 $Sample->lname = "Tianvorakoon";*/

 $Obj = new Member;// create an object of Member class

 $Obj->email=$email;
 //echo "Email=".$Obj->email."<br>";

 $Obj->action=$myaction;
 //echo "Action=".$Obj->action."<br>";

 $Obj->connectDB();
 list($userName, $mailDomain) = split("@", $Obj->email); 
 $email_good_format = $Obj->myCheckDNSRR($mailDomain,"");
 
 if($email_good_format==true){
	 $Obj->currentUser=$Obj->lookupEmail($email); //To lookup if the email address is exist.

	 $Obj->retrieveMemberID();

	 $onSubscribe=$Obj->lookupinSubscribe();
     $Obj->subscribeType=$onSubscribe;
	 $onDownload=$Obj->lookupinDownload();
     $Obj->downloadType=$onDownload;

	 if($onSubscribe==1 || $onSubscribe==2)
	 {
		$Obj->onSubscribe=true;
	 }
	 if($onDownload==1){
		$Obj->onDownload=true;
	 }
 
 }

//User is exist.
 if($Obj->currentUser==true && $Obj->action=="download" && $email_good_format==1){
	echo "<title>To download for current user.</title>";
    echo "<p>Hello ".$Obj->fname." ".$Obj->mname." ".$Obj->lname.",<br>";
	echo "<p>Please correct your information and click on the 'Save' button below to find out of our softwares.<br><br>";

	$Obj->retriveData();
	//$Obj->showInfo();

	$query_country=$query_country."'".$Obj->language."'";
	$query_know=$query_know."'".$Obj->language."'";
	$query_level_interest=$query_level_interest."'".$Obj->language."'";
	$query_purpose=$query_purpose."'".$Obj->language."'";

	DownloadForm($Obj,$query_country,$query_know,$query_purpose);
 }
 elseif($Obj->currentUser==true && $Obj->action=="subscribe" && $email_good_format==1){//User has subscribed.
	echo "<title>You have subscribed.</title>";
    echo "<p>Hello ".$Obj->fname." ".$Obj->mname." ".$Obj->lname.",<br>";
	echo "<p>Please correct your information and click on the 'Save' button below to subscribe.<br><br>";

	$query_country=$query_country."'".$Obj->language."'";
	$query_know=$query_know."'".$Obj->language."'";
	$query_level_interest=$query_level_interest."'".$Obj->language."'";
	SubscribeForm($Obj,$query_country,$query_know,$query_level_interest);
 }
 elseif($Obj->currentUser==true && $Obj->action=="unsubscribe" && $email_good_format==1){
	echo "<title>To unsubscribe for current user.</title>";
	//echo "To update unsubscribe = 1";
	$Obj->retrieveMemberID();
	$Obj->setUnSubscribe();
	ThankyouMessage();
 }
 elseif($email_good_format==1 && $Obj->subscribeType==3 && $Obj->action=="subscribe"){//NEW Member
	$Obj->language=$language_en;
	$query_country=$query_country."'".$Obj->language."'";
	$query_know=$query_know."'".$Obj->language."'";
	$query_level_interest=$query_level_interest."'".$Obj->language."'";
	BlankSubscribeForm($Obj,$query_country,$query_know,$query_level_interest);
 }
 elseif($email_good_format==1 && $Obj->downloadType==0 && $Obj->action=="download"){
	$Obj->language=$language_en;
	$query_country=$query_country."'".$Obj->language."'";
	$query_know=$query_know."'".$Obj->language."'";
	$query_level_interest=$query_level_interest."'".$Obj->language."'";
	$query_purpose=$query_purpose."'".$Obj->language."'";

	DownloadForm($Obj,$query_country,$query_know,$query_purpose); 
 }
 elseif($email_good_format==1 && $Obj->subscribeType==2 ){//To update unsubscribe to 0
	$Obj->language=$language_en;
	$query_country=$query_country."'".$Obj->language."'";
	$query_know=$query_know."'".$Obj->language."'";
	$query_level_interest=$query_level_interest."'".$Obj->language."'";
    echo "<p>Hello ".$Obj->fname." ".$Obj->mname." ".$Obj->lname.",<br>";
	BlankSubscribeForm($Obj,$query_country,$query_know,$query_level_interest);
 }
 elseif($email_good_format==0 ){ 
	echo "<center>Your email is not valid. Please try again.</center>";
 }
?>