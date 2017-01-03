<?php
/*
*************************************************************************** 
*   Copyright (C) 2016 by Pravin Tripathi                                 * 
*   pravin.tripathi@ves.ac.in                                             * 
*   																	  *		
*	Permission is hereby granted, free of charge, to any person obtaining * 
*   a copy of this software and associated documentation files (the       * 
*   "Software"), to deal in the Software without restriction, including   * 
*   without limitation the rights to use, copy, modify, merge, publish,   * 
*   distribute, sublicense, and/or sell copies of the Software, and to    * 
*   permit persons to whom the Software is furnished to do so, subject to * 
*   the following conditions:                                             * 
*                                                                         * 
*   The above copyright notice and this permission notice shall be        * 
*   included in all copies or substantial portions of the Software.       * 
*                                                                         * 
*   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,       * 
*   EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF    * 
*   MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.* 
*   IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR     * 
*   OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, * 
*   ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR * 
*   OTHER DEALINGS IN THE SOFTWARE.                                       * 
*************************************************************************** 
*/
//server logic implementation
/**
 * @author Pravin Tripathi <pravin.tripathi@ves.ac.in>
 * @date September 25th, 2016
 */
//if we got something through $_POST
$message=array();

if(isset($_POST['search'])) 
{
	//test for empty string
	$string=$_POST['search'];
	$length=strlen($string);
	if($length!=0)
    {
		// here you would normally include some database connection
		include('./db.php');
		include('./spellCorrector.php');
		$db = new db();
		//echo $db->errorTest();
		
		// never trust what user wrote! We must ALWAYS sanitize user input
		$word = mysql_real_escape_string($_POST['search']);
		$word = htmlentities($word);
		$wordArray=explode(" ",$word);
		/*
		*	this part filter the input query
		*	Checking the spelling of the query for correct result
		*/
			$test=new SpellCorrector();
			$i=0;
			$size=count($wordArray);
			for($i=0;$i<$size;$i++)
				$wordArray[$i]=$test->correct($wordArray[$i]);		
		
			if($test->tracker)
			{
				
				$message['debug']='no error and word is : ' . $wordArray;
			}
			else
			{
				$message['debug']= 'has error and got modified to : ' . $wordArray;
			}
			
		
		$row = $db->search_list($wordArray,$size);
		if(count($row)) 
		{

			$message['count']=count($row);
			$end_result =array();
			$i=0;
			$j=0;
			$extra=array();
			$findme="http://";
			foreach($row as $r) {
				$end_result[$i++]['title'] ='' . $r['title'];
				$end_result[$i-1]['url'] ='' . $r['url'];
				$end_result[$i-1]['desc'] ='' . $r['description'];

				$result=exec('C:\\python27\\python C:\\python27\\xampp\\scrap.py ' . $r['url']);
				
				$result_array=json_decode($result);
				
					foreach ($result_array as $key => $value) {
					
						$pos=strpos($value->url, $findme);
						if($pos !== false)
						{
							if($value->name != "")
							{
								$extra[$j++]['name']="$value->name";
								$extra[$j-1]['url']="$value->url";
							}
						}
					}
			}
			$message['data']= $end_result;
			$message['extra']=$extra;
		} 
		else 
		{
			$message2[0]['title']='No results found';
			$message2[0]['url']='javascript:void()';
			$message2[0]['desc']='';
			$message['data']=$message2;
		}
		$db->keep_log($wordArray,$i);
	}
	else
		$message['empty']=1;
	header('content-type:application/json');
	echo json_encode($message);
}
?>