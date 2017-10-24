<%@page import="edu.td.model.AllInfoId"%>
<%@page import="edu.td.model.AllInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>用户信息修改</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<center>
		<%
			AllInfo infoDB = (AllInfo) request.getAttribute("allInfoDB");
			AllInfoId oId = infoDB.getId();
		%>
		<form action="update" method="post">
			<table>
				<caption>用户信息修改</caption>
				<tr>
					<td>账户</td>
					<td><input name="account" type="text"
						value="<%=oId.getAccount().trim()%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input name="pw" type="text" value="<%=oId.getPw().trim()%>">
					</td>
				</tr>
				<tr>
					<td>性别</td>
					<td>
						<%
						
							if (oId.getSex().trim().equals("1")) {
						%> <input name="sex" type="radio"
						checked="checked" value="1">男&nbsp;<input name="sex"
						type="radio" value="0">女
					<%
						} else {
					%>
					<input name="sex" type="radio" value="1">男&nbsp;
					<input name="sex" type="radio" value="0" checked="checked">女
					
					<%
						}
					%>
</td>
				</tr>
				<tr>
					<td>邮编</td>
					<td><input name="addId" type="text"
						value="<%=oId.getAddId().trim()%>"></td>
				</tr>
				<tr>
					<td>地址</td>
					<td><input name="deail" type="text"
						value="<%=oId.getDeail().trim()%>"></td>
				</tr>
				<tr>
					<td>电话</td>
					<td><input name="phone" type="text"
						value="<%=oId.getPhone().trim()%>"></td>
				</tr>
				<tr>
					<td><input value="取消" type="reset">
					</td>
					<td><input value="提交修改" type="submit"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
