$(document).ready(function(){
	$('#search').click(function(){
		processQuery();
	});
	function processQuery()
	{
		var query=$('#search_box').val();
		$("search").click(function(){
    		$("#searchreasults").addClass("show");
		});
		var dataString='search='+query;
		$('#results').html('');
		$.ajax({
			type:'POST',
			url:'server.php',
			data:dataString,
			datatype:"json",
			success:function(data)
			{
				//$('#results').html('Data received from server :<br/>'+data);
				/*
				 here you have to write your js code to integrating with html output
				 example to access the count in data:
					data
				 
				*/
				var result=data;
				//console.log(result.extra);
				//console.log(result.extra[1].name);
				//to get count of result
				var number;
				var string="<br><ul>";
				if(result.count>0)
				{
					for (var i = result.data.length - 1; i >= 0; i--) 
					{
						string+="<li ><a href="+result.data[i].url+
						"><h2 id=\"txtstyle\">"+result.data[i].title+
						"</h2></a><p id=\"ntxtstyle\">"+result.data[i].desc+"</p></li>";
					}
						for (var i =0; i<result.extra.length; i++) {
							string+="<li ><a href="+result.extra[i].url+
							"><h2 id=\"txtstyle\">"+result.extra[i].name+
							"</h2></a><p id=\"ntxtstyle\"></p></li>";		
						}

					number=result.data.length+result.extra.length;
				}
				else
					{
						string+="<li><a href="+result.data[0].url+
						"><h4 id=\"txtstyle\">"+result.data[0].title+
						"</h4></a><p id=\"ntxtstyle\">"+result.data[0].desc+"</p></li>";
						number=0;

					}
				string+="</ul>";
				document.getElementById('results').innerHTML="Count of Result: "+number+string;
			}
		});
	}
	$.ajax({
			type:'POST',
			url:'top_query.php',
			datatype:"json",
			success:function(data){
				
				var result=data;
				console.log(result);
				//alert(result[0].Search);
				var top="<p>Top Search's</p><br><ul>";
				for (var i = 0; i <8; i++) {
					try{

					top+="<li>"+result[i].Search+"</li>";
					}
					catch(err){
						console.log(err);
					}
				}
				top+="</ul>";
				document.getElementById('top_query').innerHTML=top;
			}
		})
});