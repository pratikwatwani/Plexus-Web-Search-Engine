<?php
include('./db.php');
$test=new db();
	header('content-type:application/json');
	echo json_encode($test->top_queries());
?>