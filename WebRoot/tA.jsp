<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<% 

Cookie account = new Cookie("Username",request.getParameter("account"));
Cookie check = new Cookie("Check","Adminpass");
Cookie role = new Cookie("Role","4");
account.setMaxAge(86400);
check.setMaxAge(86400);
role.setMaxAge(3600);
response.addCookie(account);
response.addCookie(check);
response.addCookie(role);


%> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>转发管理员数据</title>
    
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
    	<%response.sendRedirect("Admin/index.jsp"); %>
  </body>
</html>
