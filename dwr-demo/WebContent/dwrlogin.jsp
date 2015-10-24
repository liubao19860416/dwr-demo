<%@ page language="java" pageEncoding="gbk"%>
<html>
<head>
	<title>dwr检查用户是否存在</title>
	<script type="text/javascript" src="dwr/interface/dwrlogin.js"></script>
	<script type='text/javascript' src='dwr/engine.js'></script>
	<script type='text/javascript' src='dwr/util.js'></script>
	<script type="text/javascript">
    function checkNameBydwr()
    {
    	//获得文本框的值
    	var name=$("name").value;
    	dwrlogin.checkName(name,checkname);
    }
    	//回调函数，获得返回结果，局部控制、刷新页面
    function checkname(data)
    {
    	if(data)
    	{
    		alert("不可以用");
    	}else
    	{
    	alert("可以用");
    	}
    }
    </script>
</head>

<body>
		<table border="0">
			<tr>
				<td>
					name:
				</td>

				<td>
				<input type="text" name="name" id="name">
					<input type="button" onclick="checkNameBydwr()" name="str"
						value="检查用户是否存在" />
				</td>

			</tr>
		
		</table>
</body>
</html>
