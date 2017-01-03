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
//database code logic implementation
/**
 * @author Pravin Tripathi <pravin.tripathi@ves.ac.in>
 * @date September 25th, 2016
 */
  class db 
  {
	protected $connection;
	private	$hostURL='localhost';
	private	$username='bp6am';
	private	$passward='bp6ampass';
	private	$Database='sengine';
    function __construct()
    {
		$this->connection = mysqli_connect($this->hostURL,$this->username,
		$this->passward,$this->Database);
    }
	function errorTest()
	{
		if(!$this->connection)
			return '<br/>Unable to connect to the database[' . mysqli_connect_error() . '].';
		else
			return '<br/>Connection created..';
	}
	function keep_log(Array $query,$count)
	{
		$time = date("Y-m-d H:i:s");
		$q="" . implode(" ",$query);
		$ref="" . @$_SERVER[HTTP_REFERER];
		
		$sql="INSERT INTO search_log(time,q,results,referrer) 
		values('" . $time . "','". $q . "'," . $count . ",'" . $ref . "')";		
		$result=mysqli_query($this->connection,$sql);

		mysqli_free_result($result);
		mysqli_close($this->connection);
	}

    function search_list($query,$size)
    {
		$i=0;
		$q="term.term LIKE '%" . $query[$i] . "%' ";
		for($i=1;$i<$size;$i++)
		{
			$q .="OR" . " term.term LIKE '%" . $query[$i] . "%' ";
		}
		$sql="SELECT page.title,page.url,page.description from search_page as page 
		INNER JOIN search_term_page_link as link ON page.pageid=link.pageid 
		INNER JOIN search_term as term ON term.termid=link.termid 
		where " . $q;
        $result = mysqli_query($this->connection,$sql);
        
		if (!$result)
			return null;
		
        $ret = array();
		$resultCount=mysqli_num_rows($result);

        while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            array_push($ret, $row);
        }
        mysqli_free_result($result);
        return $ret;
    }
    /**
    * This function result in top frequently typed query
    */
	function top_queries()
	{
		$date1=date('Y-m-d',strtotime("-30 days"));
		$date2=date('Y-m-d') . " 00:00:00";
		$sql="SELECT q AS Search, count(*) AS NumSearches 
			FROM search_log WHERE  time between '" . $date1 . " 'AND' " . $date2 . "' 
			GROUP BY q 
			ORDER BY NumSearches DESC";
		$sql2="
			SELECT q AS Search, count(*) AS NumSearches 
			FROM search_log WHERE  time between '2016-9-01' and '2016-11-01 00:00:00' 
			GROUP BY q 
			ORDER BY NumSearches DESC
		";
		$result=mysqli_query($this->connection,$sql);
		if (!$result)
		{
			return null;
		}
        $ret = array();
		$resultCount=mysqli_num_rows($result);
        while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            array_push($ret, $row);
        }
        mysqli_free_result($result);
		mysqli_close($this->connection);
		return $ret;
	}
  }
?>
