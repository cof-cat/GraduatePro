<%@page import="edu.td.model.User"%><%@ page language="java"
	import="java.util.*" pageEncoding="utf-8"%>
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

<title>查看所有用户</title>
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

		<table>
			<caption>显示所有用户账户信息</caption>
			<tr>
				<th>账户</th>
				<th>密码</th>
				<th>操作</th>
			</tr>
			<%
				List<User> users = (List<User>) request.getAttribute("list");
				for (User u : users) {
			%>
			<tr>
				<td><%=u.getAccount()%></td>
				<td><%=u.getPw()%></td>

				<td><a href="infoquery?id=<%=u.getAccount()%>">详情</a>&nbsp;<a
					href="delete?id=<%=u.getAccount()%>">删除</a>&nbsp;<a href="edit?id=<%=u.getAccount()%>">修改</a></td>
			</tr>
			<%
				}
			%>
			
			
			
		</table>
		test:<%=request.getParameter("account") %>
	</center>
</body>
</html>
