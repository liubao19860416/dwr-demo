<%@page pageEncoding="utf-8"%>
<html>
	<head>
		<title></title>
		<script type="text/javascript" src="../js/jquery-1.4.1.min.js"></script>
		<script type="text/javascript" src="../dwr/engine.js"></script>
		<script type="text/javascript" src="../dwr/interface/EquipmentDao.js"></script>
		<script type="text/javascript">
			function Equipment(model,name,number,price) {
				this.model = model;
				this.name = name;
				this.number = number;
				this.price = price;
			}
		
			$(function(){
				list();
				$('#save').bind('click',function(){
					var equipment = new Equipment($('#model').val(),$('#name').val(),
												$('#number').val(),$('#price').val());
					EquipmentDao.addEquipment(equipment,function(){
						list();
						$('#form input').val('');
					});
					
				});
			});
			
			function list() {
				EquipmentDao.findAllEquipment(function(list){
					fill(list);
				});
			}
			
			function fill(arry) {
				$('#list').empty();
				for(var i=0;i<arry.length;i++) {
					var str = "<tr><td>"+arry[i].id+"</td><td>"+arry[i].model+"</td><td>"+arry[i].name+"</td><td>"+arry[i].number+"</td><td>"+arry[i].price+"</td></tr>";
					$(str).appendTo('#list');		
				}				
				$('#list td').bind('mouseover',function() {
					$(this).css('backgroundColor','#ffff00');
				});	
				$('#list td').bind('mouseout',function() {
					$(this).css('backgroundColor','#ffffff');
				});	
			}
			
		</script>


	</head>
	<body>
		<table border="1" width="500px">
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
			<tbody id="list">
			</tbody>
		</table>
		<br />
		<table width="60%" id="form">
			<tr>
				<td>
					型号
				</td>
				<td>
					<input type="text" id="model" name="model" />
				</td>
			</tr>
			<tr>
				<td>
					名称
				</td>
				<td>
					<input type="text" id="name" name="name" />
				</td>
			</tr>
			<tr>
				<td>
					数量
				</td>
				<td>
					<input type="text" id="number" name="number" />
				</td>
			</tr>
			<tr>
				<td>
					价格
				</td>
				<td>
					<input type="text" id="price" name="price" />
				</td>
			</tr>
		</table>
		<input type="button" value="Save" id="save" />
	</body>
</html>
