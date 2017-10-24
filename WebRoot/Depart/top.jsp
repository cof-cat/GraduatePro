<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!-- Cookie验证防止非法登录 -->
<% 
	   Cookie userCookie[]=request.getCookies();
       String check=userCookie[2].getValue();
       String role=userCookie[3].getValue();
       
       if  (  ! (check.equals("Departpass")&&role.equals("3") ) ) 
       			{
       				response.sendRedirect("../Timeout.jsp");
       			}
       			
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台页面头部</title>
<link href="css/css.css" type="text/css" rel="stylesheet" />
</head>
<body onselectstart="return false" oncontextmenu=return(false) style="overflow-x:hidden;">
<!--禁止网页另存为-->
<noscript><iframe scr="*.htm"></iframe></noscript>
<!--禁止网页另存为-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="header">
  <tr>
    <td rowspan="2" align="left" valign="top" id="logo"><img src="images/main/logo.jpg" width="72" height="74" alt="logo" align="top"></td>
    <td align="left" valign="bottom">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="bottom" id="header-name">湖南应用技术学院</td>
        <td align="right" valign="top" id="header-right">
        <a href="../logout.jsp" target="_parent" onFocus="this.blur()" ><img src="images/main/logout.gif"/>&nbsp;<font color="#00FF00">注销</font></a> 
        <a href="index.jsp" target="_parent" onFocus="this.blur()" class="admin-index"><font color="red">网站首页</font></a>
          
          	
            <font color="#00CC00"><span>
<!-- 日历 -->
<SCRIPT type=text/javascript src="js/clock.js"></SCRIPT>
<SCRIPT type=text/javascript>showcal();</SCRIPT>
            </span></font>
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td align="left" valign="bottom">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="left" valign="top" id="header-admin">毕业设计管理系统</td>
        <td align="left" valign="bottom" id="header-menu">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
