<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
       
       if  (  ! (check.equals("Adminpass")&&role.equals("4") ) )  
       			{
       				response.sendRedirect("../../Timeout.jsp");
       			}
       			
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>基本设置</title>
<link href="css/css.css" type="text/css" rel="stylesheet" />
<link href="css/main.css" type="text/css" rel="stylesheet" />
<link rel="shortcut icon" href="images/main/favicon.ico" />
<style>
body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
#searchmain{ font-size:12px;}
#search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF; float:left}
#search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}
#search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
#search form input.text-but{height:24px; line-height:24px; width:55px; background:url(images/main/list_input.jpg) no-repeat left top; border:none; cursor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}
#search a.add{ background:url(images/main/add.jpg) no-repeat -3px 7px #548fc9; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF; float:right}
#search a:hover.add{ text-decoration:underline; color:#d2e9ff;}
#main-tab{ border:1px solid #eaeaea; background:#FFF; font-size:12px;}
#main-tab th{ font-size:12px; background:url(images/main/list_bg.jpg) repeat-x; height:32px; line-height:32px;}
#main-tab td{ font-size:12px; line-height:40px;}
#main-tab td a{ font-size:12px; color:#548fc9;}
#main-tab td a:hover{color:#565656; text-decoration:underline;}
.bordertop{ border-top:1px solid #ebebeb}
.borderright{ border-right:1px solid #ebebeb}
.borderbottom{ border-bottom:1px solid #ebebeb}
.borderleft{ border-left:1px solid #ebebeb}
.gray{ color:#dbdbdb;}
td.fenye{ padding:10px 0 0 0; text-align:right;}
.bggray{ background:#f9f9f9}
</style>
</head>

<body>
	<table width="99%" border="0" cellspacing="0" cellpadding="0"
		id="searchmain">
		<tr>
			<td width="99%" align="left" valign="top">您的位置：管理员&gt;&gt;基本设置</td>
		</tr>
		<tr>
			<td align="left" valign="top">
				<fieldset>
					<legend>基本设置</legend>
					<p></p>
					<center>
						<table width="51%" height="76" border="0" cellpadding="0"
							cellspacing="0" id="main-tab">
							<tr>
								<th width="9%" align="center" valign="middle"
									class="borderright">配置编号</th>
								<th width="13%" align="center" valign="middle"
									class="borderright">配置名称</th>
								<th width="78%" align="center" valign="middle"
									class="borderright">配置设置</th>
							</tr>
							<tr onMouseOut="this.style.backgroundColor='#ffffff'"
								onMouseOver="this.style.backgroundColor='#edf5ff'">
								<td align="center" valign="middle"
									class="borderright borderbottom">1</td>
								<td align="center" valign="middle"
									class="borderright borderbottom">年份设置</td>
								<td align="center" valign="middle"
									class="borderright borderbottom"><label for="textarea"></label>
									<form name="form2" method="post" action="">
										<label for="textfield"></label> <input type="text"
											name="textfield" id="textfield">
									</form>
								</td>
							</tr>
							<tr onMouseOut="this.style.backgroundColor='#ffffff'"
								onMouseOver="this.style.backgroundColor='#edf5ff'">
								<td align="center" valign="middle"
									class="borderright borderbottom">2</td>
								<td align="center" valign="middle"
									class="borderright borderbottom">学院</td>
								<td align="center" valign="middle"
									class="borderright borderbottom"><form name="form3"
										method="post" action="">
										<label for="textfield2"></label> <input type="text"
											name="textfield2" id="textfield2">
									</form>
								</td>
							</tr>
							<tr onMouseOut="this.style.backgroundColor='#ffffff'"
								onMouseOver="this.style.backgroundColor='#edf5ff'">
								<td align="center" valign="middle"
									class="borderright borderbottom">3</td>
								<td align="center" valign="middle"
									class="borderright borderbottom">参与的系</td>
								<td align="center" valign="middle"
									class="borderright borderbottom"><input type="checkbox"
									name="CheckboxGroup1" value="计算机应用基础" id="CheckboxGroup1_0">计算机应用基础&nbsp;&nbsp;
									<input type="checkbox" name="CheckboxGroup1" value="计算机网络"
									id="CheckboxGroup1_1">计算机网络&nbsp;&nbsp; <input
									type="checkbox" name="CheckboxGroup1" value="软件技术"
									id="CheckboxGroup1_2">软件技术&nbsp;&nbsp; <input
									type="checkbox" name="CheckboxGroup1" value="电子商务"
									id="CheckboxGroup1_3">电子商&nbsp;&nbsp; <input
									type="checkbox" name="CheckboxGroup1" value="安卓方向"
									id="CheckboxGroup1_4">安卓方向</td>
							</tr>
							<tr onMouseOut="this.style.backgroundColor='#ffffff'"
								onMouseOver="this.style.backgroundColor='#edf5ff'">
								<td align="center" valign="middle"
									class="borderright borderbottom">4</td>
								<td align="center" valign="middle"
									class="borderright borderbottom">开发分组情况</td>
								<td align="center" valign="middle"
									class="borderright borderbottom"><label for="select"></label>
									<select name="select" id="select">
										<option value="0">不开放</option>
										<option value="1">开放</option>
								</select></td>
							</tr>
						</table>
						<p>&nbsp;</p>
						<form name="form1" method="post" action="">
							<input type="submit" name="button" id="button" value="确认修改">
						</form>
						<p>&nbsp;</p>
					</center>
				</fieldset></td>
		</tr>
		<tr>
			<td align="left" valign="top" class="fenye">&nbsp;</td>
		</tr>
	</table>
</body>
</html>
