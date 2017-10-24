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
    <span>用户：<%=value %><br>角色：<font color="#ffcc00">系部</font></span>
</div>
    <div style="float: left" id="my_menu" class="sdmenu">
      <div class="collapsed">
        <span>系统常规管理</span>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">上传设置</a>
        <a href="main_list.jsp" target="mainFrame" onFocus="this.blur()">时间设置</a>
        <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">上传类型设置</a>
        <a href="main_message.jsp" target="mainFrame" onFocus="this.blur()">修改本人密码</a></div>
      <div>
        <span>教师管理</span>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">教师信息管理</a>
        <a href="main_list.jsp" target="mainFrame" onFocus="this.blur()">导师资格审核</a>
      <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">已审批资格申请</a></div>
      <div>
        <span>学生管理</span>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">学生信息管理</a>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">查找学生</a>
        <a href="main_list.jsp" target="mainFrame" onFocus="this.blur()">学生信息</a>
        <a href="jsp/tjxs.jsp" target="mainFrame" onFocus="this.blur()">添加学生</a>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">导入学生</a>
      </div>
      <div>
        <span>课题管理</span>
          <a href="main.jsp" target="mainFrame" onFocus="this.blur()">审批课题</a>
          <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">已通过课题</a>
        <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">未通过课题</a>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">选题情况</a>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">不足课题</a>
      </div>
          <div>
        <span>分组管理</span>
          <a href="main.jsp" target="mainFrame" onFocus="this.blur()">学生志愿情况</a>
          <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">课题志愿情况</a>
          <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">分组之前</a>
          <a href="main.jsp" target="mainFrame" onFocus="this.blur()">分组情况</a>
          <a href="jsp/sjtj.jsp" target="mainFrame" onFocus="this.blur()">数据统计</a>
          <a href="main.jsp" target="mainFrame" onFocus="this.blur()">未分组学生</a>
          <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">分组开关</a>
          <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">导出分组</a>
          <a href="main.jsp" target="mainFrame" onFocus="this.blur()">自动分组</a></div>
          <div>
        <span>文档管理</span>
          <a href="jsp/wdhz.jsp" target="mainFrame" onFocus="this.blur()">文档汇总</a>
      <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">文档打包下载</a></div>
          <div>
        <span>数据导出</span>
          <a href="main.jsp" target="mainFrame" onFocus="this.blur()">选题一览表</a>
      <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">指导老师情况表</a></div>
          <div>
        <span>新闻管理</span>
          <a href="main.jsp" target="mainFrame" onFocus="this.blur()">查看新闻</a>
          <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">添加新闻</a>
      <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">管理新闻</a></div>
          <div>
        <span>论文评阅管理</span>
          <a href="main.jsp" target="mainFrame" onFocus="this.blur()">论文评阅情况</a>
      <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">评阅教师分配</a></div>
    </div>
</body>
</html>
