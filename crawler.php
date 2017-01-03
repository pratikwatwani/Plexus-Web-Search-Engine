<?php
/*
* This function will crawl the page and find all the links
*/
	$url="http://zeenews.india.com/";
    //$url="https://www.edx.org/";
	//$url="http://williamstallings.com/OperatingSystems/OS7e-Student/";
	$result=exec("C:\\python27\\python C:\\python27\\xampp\\scrap.py $url");
	//echo $result;
	$result_array=json_decode($result);
	print_r($result_array);
	//echo "<br/><br/><br/><br/>" .$result_array[0]->url;
		foreach ($result_array as $key => $value) {
		# code...
		
			if($value->name != "")
			{
				echo "<a href=\"$value->url\">$value->name <br/></a>";
				echo "URL: $value->url <br/><br/>";
			}
		}

?>