
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

<title>用户详细信息</title>
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
		<table width="30%">
			<caption>用户详细信息</caption>
			<tr>
				<td>账户</td>
				<td><%=oId.getAccount()%></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><%=oId.getPw()%></td>
			</tr>
			<tr>
				<td>性别</td>
				<td><%=oId.getSex()%></td>
			</tr>
			<tr>
				<td>邮编</td>
				<td><%=oId.getAddId()%></td>
			</tr>
			<tr>
				<td>地址</td>
				<td><%=oId.getDeail()%></td>
			</tr>
			<tr>
				<td>电话</td>
				<td><%=oId.getPhone()%></td>
			</tr>

		</table>

	</center>
</body>
</html>
