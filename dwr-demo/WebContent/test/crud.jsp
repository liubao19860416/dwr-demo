<%@page pageEncoding="utf-8"%>
<html>
	<head>
		<title></title>
		<script type="text/javascript" src="../lib/jquery-1.4.1.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$.ajax({
					type:'get',
					url:'/ajax03/servlet/equipment?option=list',
					dataType:'json',
					success:function(arry){
						fill(arry);
					}
				});
				
				$('#add').bind('click',function(){
					$('<tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr>').appendTo('#tb');
				})	
			})
			
			function fill(arry) {
				for(var i=0;i<arry.length;i++) {
					var str = "<tr><td>"+arry[i].id+"</td><td>"+arry[i].model+"</td><td>"+arry[i].name+"</td><td>"+arry[i].number+"</td><td>"+arry[i].price+"</td></tr>";
					$(str).appendTo('#tb');		
				}
				
				//$('#tb td').each(function(i){
				//   if(i>4) {
				//	$(this).bind('mouseover',function() {
				//	   $(this).css('backgroundColor','#ff6666');
				//   });	
				//    }
				// });
				
				var content = $('#tb td:gt(4)');
				content.live('mouseover',function() {
					$(this).css('backgroundColor','#ffff00');
				});	
				content.live('mouseout',function() {
					$(this).css('backgroundColor','#ffffff');
				});	
			}
		</script>
	</head>
	<body>
		<table id='tb' border="1" width="500px">
			<tr>
				<td width="100px">
					编号
				</td>
				<td width="100px">
					型号
				</td>
				<td width="100px">
					名称
				</td>
				<td width="100px">
					数量
				</td>
				<td width="100px">
					价格
				</td>
			</tr>
		</table>
		<input type="button" value="添加" id="add" />
		<input type="button" value="确定" id="ok" />
	</body>
</html>
