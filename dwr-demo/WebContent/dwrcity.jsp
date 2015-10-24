<%@ page language="java" pageEncoding="GBK"%>
<html>
	<head>
		<title>省市级联dwr</title>
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
				// 清除城市下拉框的
				dwr.util.removeAllOptions("shi");
				//添加城市下拉框的值
				dwr.util.addOptions("shi",data,"cid","cname");			
		}
		
	</script>

	</head>

	<!-- 页面加载的时候就初始化下拉列表 -->
	<body >
		省
		<select id="sheng" onchange="changeCity()">
			<option value="2">
				湖南省
			</option>
			<option value="1">
				湖北省
			</option>
		
		</select>
		市
		<select id="shi"></select>
	</body>
</html>
