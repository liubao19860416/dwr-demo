<%@ page language="java" pageEncoding="GBK"%>
<html>
	<head>
		<title>ʡ�м���dwr</title>
		<script type='text/javascript' src='dwr/engine.js'></script>
		<script type='text/javascript' src='dwr/util.js'></script>
		<script type='text/javascript' src='dwr/interface/dwrcity.js'></script>
		<script type="text/javascript">
		function changeCity()
		{
			 var pid=$("sheng").value;
			dwrcity.findByPid(pid,callbackchangecity);
		
		}
		function callbackchangecity(data){
				// ��������������
				dwr.util.removeAllOptions("shi");
				//��ӳ����������ֵ
				dwr.util.addOptions("shi",data,"cid","cname");			
		}
		
	</script>

	</head>

	<!-- ҳ����ص�ʱ��ͳ�ʼ�������б� -->
	<body >
		ʡ
		<select id="sheng" onchange="changeCity()">
			<option value="2">
				����ʡ
			</option>
			<option value="1">
				����ʡ
			</option>
		
		</select>
		��
		<select id="shi"></select>
	</body>
</html>
