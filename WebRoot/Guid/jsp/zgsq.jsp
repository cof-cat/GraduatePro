<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!-- Cookie验证防止非法登录 -->
<% 
	   Cookie userCookie[]=request.getCookies();
       String check=userCookie[2].getValue();
       String role=userCookie[3].getValue();
       
       if  (  ! (check.equals("Guidpass")&&role.equals("2") ) ) 
       			{
       				response.sendRedirect("../../Timeout.jsp");
       			}
       			
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>教师资格申请</title>
<link href="css/css.css" type="text/css" rel="stylesheet" />
<link href="css/main.css" type="text/css" rel="stylesheet" />
<link rel="shortcut icon" href="images/main/favicon.ico" />
<script type="text/javascript" charset="utf-8"
	src="unditor/ueditor.config.js "></script>
<script type="text/javascript" charset="utf-8"
	src="unditor/ueditor.all.js "></script>
<script type="text/javascript" charset="utf-8"
	src="unditor/ueditor.zh-cn.js "></script>
<!-- 
<script type="text/javascript" src="zh-cn.js"></script>
<script type="text/javascript" src="ueditor.all.min.js"></script>
<script type="text/javascript" src="ueditor.config.js"></script>
 -->
<!-- 
<script type="text/javascript" charset="utf-8" src="ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="zh-cn/zh-cn.js"></script> -->
<style type="text/css">
div {
	width: 80%;
}
</style>
<style>
body {
	overflow-x: hidden;
	background: #f2f0f5;
	padding: 15px 0px 10px 5px;
}

#searchmain {
	font-size: 12px;
}

#search {
	font-size: 12px;
	background: #548fc9;
	margin: 10px 10px 0 0;
	display: inline;
	width: 100%;
	color: #FFF
}

#search form span {
	height: 40px;
	line-height: 40px;
	padding: 0 0px 0 10px;
	float: left;
}

#search form input.text-word {
	height: 24px;
	line-height: 24px;
	width: 180px;
	margin: 8px 0 6px 0;
	padding: 0 0px 0 10px;
	float: left;
	border: 1px solid #FFF;
}

#search form input.text-but {
	height: 24px;
	line-height: 24px;
	width: 55px;
	background: url(images/main/list_input.jpg) no-repeat left top;
	border: none;
	cursor: pointer;
	font-family: "Microsoft YaHei", "Tahoma", "Arial", '宋体';
	color: #666;
	float: left;
	margin: 8px 0 0 6px;
	display: inline;
}

#search a.add {
	background: url(images/main/add.jpg) no-repeat 0px 6px;
	padding: 0 10px 0 26px;
	height: 40px;
	line-height: 40px;
	font-size: 14px;
	font-weight: bold;
	color: #FFF
}

#search a:hover.add {
	text-decoration: underline;
	color: #d2e9ff;
}

#main-tab {
	border: 1px solid #eaeaea;
	background: #FFF;
	font-size: 12px;
}

#main-tab th {
	font-size: 12px;
	background: url(images/main/list_bg.jpg) repeat-x;
	height: 32px;
	line-height: 32px;
}

#main-tab td {
	font-size: 12px;
	line-height: 40px;
}

#main-tab td a {
	font-size: 12px;
	color: #548fc9;
}

#main-tab td a:hover {
	color: #565656;
	text-decoration: underline;
}

.bordertop {
	border-top: 1px solid #ebebeb
}

.borderright {
	border-right: 1px solid #ebebeb
}

.borderbottom {
	border-bottom: 1px solid #ebebeb
}

.borderleft {
	border-left: 1px solid #ebebeb
}

.gray {
	color: #dbdbdb;
}

td.fenye {
	padding: 10px 0 0 0;
	text-align: right;
}

.bggray {
	background: #f9f9f9
}

#addinfo {
	padding: 0 0 10px 0;
}
</style>
</head>
<body>
	<!--main_top-->
	<form action="" method="post">
		<table width="99%" border="0" cellspacing="0" cellpadding="0"
			id="searchmain">
			<tr>
				<td width="99%" align="left" valign="top" id="addinfo">您的位置：教师管理&nbsp;&nbsp;>&nbsp;&nbsp;资格申请</td>
			</tr>
			<tr>
				<td align="left" valign="top">
					<fieldset>
						<legend>资格申请</legend>
						<center>
							<p>&nbsp;</p>
							<table width="1000px" border="0" align="center" border="0"
								cellpadding="0" cellspacing="0" id="main-tab">
								<tr>
									<th scope="col">毕业设计导师资格申请</th>
								</tr>
								<tr>
									<td align="center"><b>注意：请在以下空格中，填写个人简介（含研究方向，指导经验），该简介仅导师可见！</b>
									</td>
								<tr>
									<td>
										<textarea id="content" name="content" style="width:95%; height:95%;"></textarea> 
   											<script type="text/javascript" charset="utf-8">
														UE.getEditor('content');
											</script>
									</td>
								</tr>



								<tr>
									<td>导师指导毕业设计专业：<input name="" type="checkbox" value="">&nbsp;软件技术&nbsp;&nbsp;&nbsp;&nbsp;
										<input name="" type="checkbox" value="">&nbsp;电子商务&nbsp;&nbsp;&nbsp;&nbsp;
										<input name="" type="checkbox" value="">&nbsp;安卓&nbsp;&nbsp;&nbsp;&nbsp;
										<input name="" type="checkbox" value="">&nbsp;计算机应用基础&nbsp;&nbsp;&nbsp;&nbsp;
										<input name="" type="checkbox" value="">&nbsp;计算机网络</td>
								</tr>

								<tr>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="submit" value="申请" />
									</td>
								</tr>

							</table>


						</center>
					</fieldset></td>
			</tr>
			<tr>
				<td align="left" valign="top" class="fenye">&nbsp;</td>
			</tr>

		</table>
	</form>
</body>
</html>
