<%@ page language="java" pageEncoding="gbk"%>

<html>
	<head>
		<title>dwr����û�</title>
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
    	//�ص���������÷��ؽ�����ֲ����ơ�ˢ��ҳ��
    function checkname(data)
    {
    	if(data>0)
    	{
    		alert("��ӳɹ�");
    	}else
    	{
    	alert("���ʧ��");
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
					<input type="button" value="�ύ" onclick="addusers()">
				</td>


			</tr>

		</table>
	</body>
</html>
