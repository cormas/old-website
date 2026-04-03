<? 
include ("/wm/www/cormas/jpgraph-1.20.5/src/jpgraph.php");
include ("/wm/www/cormas/jpgraph-1.20.5/src/jpgraph_pie.php");
include ("/wm/www/cormas/jpgraph-1.20.5/src/jpgraph_bar.php");
include ("/wm/www/cormas/jpgraph-1.20.5/src/jpgraph_line.php");

include("connectdb.php");
include ("member.class");

	$date1=$_POST['d1'];
	$date2=$_POST['d2'];
	$report_name= $_POST['report_name']; 
	$report_type= $_POST['chart_style']; //report_type
	$show_country=$_POST['show_country'];
	$country=$_POST['country'];
	$group_by=$_POST['group_by']; // 1) Country  2) Month  3) Year
	$ydate1=substr($date1,0,4);
	$ydate2=substr($date2,0,4);

 $Obj = new Report;
 $Obj->connectDB();
 $myArry = new MyArray();	
$LabelField="";
$Displaytext="";
//------------------------------- 1. Group by Country --------------------------------------------------------------
if($show_country=="all_country" and $report_name=="1" and $group_by=="1"){//Download
	$mysql=$query_download_path1." and d.download_date between '".$date1."' and '".$date2."' ".$query_download_path2;
 	$title="Download Report\n from ".$date1." to ".$date2;
	$LabelField="country_name";
	$Displaytext="Country";
}
elseif($show_country!="all_country" and $report_name=="1" and $group_by=="1"){//Download and select country
	$mysql=$query_download_path1." and d.download_date between '".$date1."' and '".$date2."' "
			." and m.country_id like '".$country."' "
			.$query_download_path2;
	
	$Obj->LookupCountry($country);
 	$title="Download Report\n from ".$date1." to ".$date2.", from ".$Obj->country_desc;
	$LabelField="country_name";
	$Displaytext="Country";
}

elseif($show_country=="all_country" and $report_name=="2" and $group_by=="1"){//Subscribe
	$mysql=$query_subscribe_path1." and d.subscribe_date between '".$date1."' and '".$date2."' ".$query_subscribe_path2;
 	$title="Subscribe Report\n from ".$date1." to ".$date2;
	$LabelField="country_name";
	$Displaytext="Country";
}
elseif($show_country!="all_country" and $report_name=="2" and $group_by=="1"){//Subscribe and select country
	$mysql=$query_subscribe_path1." and d.subscribe_date between '".$date1."' and '".$date2."' "
			." and m.country_id like '".$country."' "
			.$query_subscribe_path2;

	$Obj->LookupCountry($country);
	$title="Subscribe Report\n from ".$date1." to ".$date2." from ".$Obj->country_desc;
	$LabelField="country_name";
	$Displaytext="Country";
}

elseif($show_country=="all_country" and $report_name=="3" and $group_by=="1"){//Unsubscribe
	$mysql=$query_unsubscribe_path1." and d.unsubscribe_date between '".$date1."' and '".$date2."' ".$query_unsubscribe_path2;
 	$title="Unsubscribe Report\n from ".$date1." to ".$date2;
	$LabelField="country_name";
	$Displaytext="Country";
}
elseif($show_country!="all_country" and $report_name=="3" and $group_by=="1"){//Unsubscribe and select country
	$mysql=$query_unsubscribe_path1." and d.unsubscribe_date between '".$date1."' and '".$date2."' "
			." and m.country_id like '".$country."' "
			.$query_unsubscribe_path2;

	$Obj->LookupCountry($country);
 	$title="Unsubscribe Report\n from ".$date1." to ".$date2." from ".$Obj->country_desc;
	$LabelField="country_name";
	$Displaytext="Country";
}


//----------------------------------------2. Group by month-------------------------------------------

elseif($show_country=="all_country" and $report_name=="1" and $group_by=="2"){//Download
	$mysql=	$query_download_by_month_path1." and d.download_date between '".$date1."' and '".$date2."' "
			.$query_download_by_month_path2;

	$title="Download Report (by month)\n from ".$date1." to ".$date2;
	$LabelField="month";
	$Displaytext="Month";
}
elseif($show_country!="all_country" and $report_name=="1" and $group_by=="2"){//Download and select country
	$mysql=	$query_download_by_month_path1." and d.download_date between '".$date1."' and '".$date2."' "
			."and m.country_id='".$country."' "
			.$query_download_by_month_path2;

	$Obj->LookupCountry($country);
	$title="Download Report (by month)\n from ".$date1." to ".$date2." from ".$Obj->country_desc;
	$LabelField="month";
	$Displaytext="Month";
}

elseif($show_country=="all_country" and $report_name=="2" and $group_by=="2"){//Subscribe
	$mysql=	$query_subscribe_by_month_path1." and d.subscribe_date between '".$date1."' and '".$date2."' "	
			.$query_subscribe_by_month_path2;
 	
	$title="Subscribe Report (by month)\n from ".$date1." to ".$date2;
	$LabelField="month";
	$Displaytext="Month";
}
elseif($show_country!="all_country" and $report_name=="2" and $group_by=="2"){//Subscribe and select country
	$mysql=	$query_subscribe_by_month_path1." and d.subscribe_date between '".$date1."' and '".$date2."' "	
			."and m.country_id='".$country."' "
			.$query_subscribe_by_month_path2;
 	
	$Obj->LookupCountry($country);
	$title="Subscribe Report (by month)\n from ".$date1." to ".$date2." from ".$Obj->country_desc;
	$LabelField="month";
	$Displaytext="Month";
}

elseif($show_country=="all_country" and $report_name=="3" and $group_by=="2"){//Unsubscribe
	$mysql=	$query_unsubscribe_by_month_path1." and d.unsubscribe_date between '".$date1."' and '".$date2."' "
			.$query_unsubscribe_by_month_path2;

 	$title="Unsubscribe Report (by month)\n from ".$date1." to ".$date2;
	$LabelField="month";
	$Displaytext="Month";
}

elseif($show_country!="all_country" and $report_name=="3" and $group_by=="2"){//Unsubscribe and select country
	$mysql=	$query_unsubscribe_by_month_path1." and d.unsubscribe_date between '".$date1."' and '".$date2."' "
			."and m.country_id='".$country."' "
			.$query_unsubscribe_by_month_path2;

	$Obj->LookupCountry($country);
 	$title="Unsubscribe Report (by month)\n from ".$date1." to ".$date2." from ".$Obj->country_desc;
	$LabelField="month";
	$Displaytext="Month";
}


//--------------------------------------------2. Group by year---------------------------------------------
elseif($show_country=="all_country" and $report_name=="1" and $group_by=="3"){//Download
	$mysql=	$query_download_by_year_path1." and d.download_date between '".$date1."' and '".$date2."' "
			.$query_download_by_year_path2;

	$title="Download Report (by month)\n from ".$date1." to ".$date2;
	$LabelField="year";
	$Displaytext="Year";
}
elseif($show_country!="all_country" and $report_name=="1" and $group_by=="3"){//Download and select country
	$mysql=	$query_download_by_year_path1." and d.download_date between '".$date1."' and '".$date2."' "
			."and m.country_id='".$country."' "
			.$query_download_by_year_path2;

	$Obj->LookupCountry($country);
	$title="Download Report (by month)\n from ".$date1." to ".$date2." from ".$Obj->country_desc;
	$LabelField="year";
	$Displaytext="Year";
}

elseif($show_country=="all_country" and $report_name=="2" and $group_by=="3"){//Subscribe
	$mysql=	$query_subscribe_by_year_path1." and d.subscribe_date between '".$date1."' and '".$date2."' "
			.$query_subscribe_by_year_path2;

	$title="Subscribe Report (by month)\n from ".$date1." to ".$date2;
	$LabelField="year";
	$Displaytext="Year";
}
elseif($show_country!="all_country" and $report_name=="2" and $group_by=="3"){//Subscribe and select country
	$mysql=	$query_subscribe_by_year_path1." and d.subscribe_date between '".$date1."' and '".$date2."' "
			."and m.country_id='".$country."' "
			.$query_subscribe_by_year_path2;

	$Obj->LookupCountry($country);
	$title="Subscribe Report (by month)\n from ".$date1." to ".$date2." from ".$Obj->country_desc;
	$LabelField="year";
	$Displaytext="Year";
}

elseif($show_country=="all_country" and $report_name=="2" and $group_by=="3"){//Unsubscribe
	$mysql=	$query_unsubscribe_by_year_path1." and d.subscribe_date between '".$date1."' and '".$date2."' "
			.$query_unsubscribe_by_year_path2;

	$title="Subscribe Report (by month)\n from ".$date1." to ".$date2;
	$LabelField="year";
	$Displaytext="Year";
}
elseif($show_country!="all_country" and $report_name=="2" and $group_by=="3"){//Unsubscribe and select country
	$mysql=	$query_unsubscribe_by_year_path1." and d.subscribe_date between '".$date1."' and '".$date2."' "
			."and m.country_id='".$country."' "
			.$query_unsubscribe_by_year_path2;

	$Obj->LookupCountry($country);
	$title="Subscribe Report (by month)\n from ".$date1." to ".$date2." from ".$Obj->country_desc;
	$LabelField="year";
	$Displaytext="Year";
}

// For Debugging
/*
echo "group by = ".$group_by;
echo "<br>report_type = ".$report_type;
echo "<br>report_name = ".$report_name;
echo "<br>show_country = ".$show_country;
echo "<br>country = ".$country;

echo "<br>$mysql";
*/
 $result_lookup=mysql_query($mysql);
 $n=mysql_numrows($result_lookup);

 $i=0;
 while($i<$n){
	$count=mysql_result($result_lookup,$i, "total");
	$displaytext=mysql_result($result_lookup,$i, $LabelField);
	$myArray[$i]->data=$count;
	$myArray[$i]->leg=$displaytext;
	$data[$i]=$count;
	$leg[$i]=$displaytext;
	$i++;
 }

if($n>0){
	if($report_type=="1"){// Pie Graph
		$graph = new PieGraph(800,500,"auto");
		$graph->SetShadow();

		$graph->title->Set($title);
		$graph->title->SetFont(FF_VERDANA,FS_BOLD,16);

		$p1 = new PiePlot($data);
		//$p1->SetLegends($gDateLocale->GetShortMonth());
		$p1->SetLegends($leg);
		$p1->SetCenter(0.4);
		$p1->SetValueType(PIE_VALUE_ABS);
		$p1->value->SetFormat('%d member(s)');
		$graph->Add($p1);
		$graph->Stroke();
	}
	elseif($report_type=="2"){// Bar Graph
		// Create the graph. These two calls are always required
		$graph = new Graph(800,500,"auto");    
		$graph->SetScale("textint");

		// Add a drop shadow
		$graph->SetShadow();

		// Adjust the margin a bit to make more room for titles
		$graph->img->SetMargin(50,50,20,40);

		// Create a bar pot
		$bplot = new BarPlot($data);
		$graph->Add($bplot);
		
		// Setup the titles
		$graph->title->Set($title);
		$graph->xaxis->title->Set("Month");
		$graph->yaxis->title->Set("Total of member(s)");

		//$graph->title->SetFont(FF_FONT1,FS_BOLD);
		$graph->title->SetFont(FF_VERDANA,FS_BOLD,16);
		$graph->yaxis->title->SetFont(FF_FONT1,FS_BOLD);
		$graph->xaxis->title->SetFont(FF_FONT1,FS_BOLD);

		$graph->xaxis->SetTickLabels($leg);
		// Display the graph
		$graph->Stroke();
	}
	elseif($report_type=="3"){//Line Graph
		// A nice graph with anti-aliasing
		$graph = new Graph(400,200,"auto");
		$graph->img->SetMargin(40,180,40,40);    
		//$graph->SetBackgroundImage("tiger_bkg.png",BGIMG_FILLPLOT);

		// Adjust brightness and contrast for background image
		// must be between -1 <= x <= 1, (0,0)=original image
		$graph->AdjBackgroundImage(0,0);

		$graph->img->SetAntiAliasing("white");
		$graph->SetScale("textint");
		$graph->SetShadow();
		//$graph->title->Set("Background image");

		// Use built in font
		$graph->title->SetFont(FF_FONT1,FS_BOLD);

		// Slightly adjust the legend from it's default position in the
		// top right corner. 
		$graph->legend->Pos(0.05,0.5,"right","center");
		$graph->xaxis->SetTickLabels($leg);

		// Create the first line
		$p1 = new LinePlot($data);
		$p1->mark->SetType(MARK_FILLEDCIRCLE);
		$p1->mark->SetFillColor("red");
		$p1->mark->SetWidth(4);
		$p1->SetColor("blue");
		$p1->SetCenter();
		$p1->SetLegend("Member(s)");
		$graph->Add($p1);

		$graph->Stroke();
	}
	//elseif($report_type=="4"){//Table
	else{
		rsort($myArray);
		$max=max($myArray);
		$min=min($myArray);
		
	$row=1;
	$i=0;
		echo "<p><center><h1>".$title."</h1></center>";
		echo "Maximum : ".$max->leg." = ".$max->data."<br>";
		echo "Maximum : ".$min->leg." = ".$min->data."<br>";
		echo "<center><table>";
		echo "<tr>";
	 echo $TD1.$Header[$HeaderColor]."No</td>".$TD1.$Header[$HeaderColor].$Displaytext."</td>".$TD1.$Header[$HeaderColor]."Total</td></tr>";
		$sum=0;
		while($i<$n){
			$sum = $sum + $data[$i];
//			if($data[$i]>0){
			if($myArray[$i]->data>0){
				echo "<tr>".$TD2."".$row."</td>".$TD2.$myArray[$i]->leg."</td>".$TD2.$myArray[$i]->data."</td></tr>";
			}
			elseif($data[$i]==0){
				echo "<tr>".$TD2."".$row."</td>".$TD2.$myArray[$i]->leg."</td>".$TD2."-</td></tr>";
			}
			$i++;
			$row++;
		}
		echo "<tr>".$TD1_2.$Header[$HeaderColor]."<center>Total</center></td>".$TD1.$Header[$HeaderColor]."<center>".$sum."</center></td></tr>";
		echo "</table></center>";
	}



}//end if $n>0
?> 

