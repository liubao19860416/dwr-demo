<html>
	<head>
		<title></title>
		<script type="text/javascript" src="../lib/jquery-1.4.1.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$('#b1').bind('click',function(){
					$.ajax({
						type:'get',
						url:'/ajax03/servlet/equipment?option=list',
						dataType:'json',
						success:function(content){
							for(var i=0;i<content.length;i++) {
								$('<li>'+content[i].id+','+content[i].name+','+content[i].model+','+content[i].number+','+content[i].price+'</li>').appendTo('#data');
							}
						}
					});		
				});
				
				$('#b2').bind('click',function(){
					//var formData = 'model='+$('#model').val()+'&name='+$('#name').val()+'&number='+$('#number').val()+'&price='+$('#price').val();
					var formData = $('#f1').serialize();
					alert(formData);
					$.ajax({
						type:'post',
						url:'/ajax03/servlet/equipment?option=add',
						data:formData
					})
				});
			});	
		</script>
	</head>
	<body>
		<div id='d1'></div>
		<input type="button" value="Load" id="b1" />
		<ul id="data">
		</ul>
		<input type="button" value="Save" id="b2" />
		<form id="f1">
			Model:
			<input type="text" id="model" name="model" />
			<br />
			Name:
			<input type="text" id="name" name="name" />
			<br />
			Number:
			<input type="text" id="number" name="number" />
			<br />
			Price:
			<input type="text" id="price" name="price" />
			<br />
		</form>
	</body>
</html>
