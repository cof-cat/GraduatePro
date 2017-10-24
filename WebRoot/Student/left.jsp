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
       
       if  (  ! (check.equals("Studentpass")&&role.equals("1") ) ) 
       			{
       				response.sendRedirect("../Timeout.jsp");
       			}
       			
%>


<!-- Cookie获取用户名 -->

<%
		Cookie cookies[]=request.getCookies();
		
		Cookie cookie=cookies[1];
		
		String value=cookie.getValue();
 %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>左侧导航menu</title>
<link href="css/css.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/sdmenu.js"></script>
<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
</script>
<style type=text/css>
html{ SCROLLBAR-FACE-COLOR: #538ec6; SCROLLBAR-HIGHLIGHT-COLOR: #dce5f0; SCROLLBAR-SHADOW-COLOR: #2c6daa; SCROLLBAR-3DLIGHT-COLOR: #dce5f0; SCROLLBAR-ARROW-COLOR: #2c6daa;  SCROLLBAR-TRACK-COLOR: #dce5f0;  SCROLLBAR-DARKSHADOW-COLOR: #dce5f0; overflow-x:hidden;}
body{overflow-x:hidden; background:url(images/main/leftbg.jpg) left top repeat-y #f2f0f5; width:194px;}
</style>
</head>
<body onselectstart="return false;" ondragstart="return false;" oncontextmenu="return false;">
<div id="left-top">
	<div><img src="images/main/member.gif" width="44" height="44" /></div>
    <span>用户：<%=value %><br>角色：<font color="#ffcc00">学生</font></span>
</div>
    <div style="float: left" id="my_menu" class="sdmenu">
      <div class="collapsed">
        <span>学生管理</span>
        <a href="jsp/ckkxkt.jsp" target="mainFrame" onFocus="this.blur()">查看可选课题</a>
        <a href="jsp/xsxt.jsp" target="mainFrame" onFocus="this.blur()">学生选题</a>
        <a href="jsp/grxx.jsp" target="mainFrame" onFocus="this.blur()">个人信息</a>
        <a href="jsp/password.jsp" target="mainFrame" onFocus="this.blur()">修改密码</a></div>
      <div>
        <span>分组管理</span>
        <a href="jsp/wdxz.jsp" target="mainFrame" onFocus="this.blur()">我的小组</a>
        <a href="jsp/dsxx.jsp" target="mainFrame" onFocus="this.blur()">导师信息</a>
      </div>
      <div>
        <span>文档管理</span>
        <a href="jsp/wdsc.jsp" target="mainFrame" onFocus="this.blur()">上传文档</a>
        <a href="jsp/scxzhzwd.jsp" target="mainFrame" onFocus="this.blur()">上传小组汇总文档</a>
        <a href="jsp/cx.jsp" target="mainFrame" onFocus="this.blur()">上传诚信检测稿</a>
        <a href="jsp/wdxz.jsp" target="mainFrame" onFocus="this.blur()">最新文档下载</a>
        <a href="jsp/sywdxz.jsp" target="mainFrame" onFocus="this.blur()">所有文档下载</a>
        <a href="jsp/wdgl.jsp" target="mainFrame" onFocus="this.blur()">文档管理</a>
      </div>
      <div>
        <span>新闻管理</span>
          <a href="jsp/ckxw.jsp" target="mainFrame" onFocus="this.blur()">查看新闻</a>
      </div>
         
</body>
</html>
