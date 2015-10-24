<%@ page language="java" pageEncoding="gbk"%>

<html>
	<head>
		<title>dwr添加用户</title>
		<script type="text/javascript" src="dwr/interface/dwrlogin.js"></script>
		<script type='text/javascript' src='dwr/engine.js'></script>
		<script type='text/javascript' src='dwr/util.js'></script>
		<script type="text/javascript">
    function addusers()
    {
    	var name=$("name").value;
    	var pass=$("password").value;
    	var user = {};
		user.username = name;
		user.password =pass;
    	dwrlogin.addUser(user,checkname);
    }
    	//回调函数，获得返回结果，局部控制、刷新页面
    function checkname(data)
    {
    	if(data>0)
    	{
    		alert("添加成功");
    	}else
    	{
    	alert("添加失败");
    	}
    }
    </script>
	</head>

	<body>
		<table border="0">
			<tr>
				<td>
					name:
					<input type="text" name="name" id="name">
				</td><br>

				<td>
					password:
					<input type="text" name="password" id="password">
				</td>
				<td>
					<input type="button" value="提交" onclick="addusers()">
				</td>


			</tr>

		</table>
	</body>
</html>
