<%@ page language="java" pageEncoding="gbk"%>
<html>
<head>
	<title>dwr����û��Ƿ����</title>
	<script type="text/javascript" src="dwr/interface/dwrlogin.js"></script>
	<script type='text/javascript' src='dwr/engine.js'></script>
	<script type='text/javascript' src='dwr/util.js'></script>
	<script type="text/javascript">
    function checkNameBydwr()
    {
    	//����ı����ֵ
    	var name=$("name").value;
    	dwrlogin.checkName(name,checkname);
    }
    	//�ص���������÷��ؽ�����ֲ����ơ�ˢ��ҳ��
    function checkname(data)
    {
    	if(data)
    	{
    		alert("��������");
    	}else
    	{
    	alert("������");
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
						value="����û��Ƿ����" />
				</td>

			</tr>
		
		</table>
</body>
</html>
