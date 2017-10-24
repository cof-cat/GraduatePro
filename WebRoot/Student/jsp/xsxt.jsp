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
       				response.sendRedirect("../../Timeout.jsp");
       			}
       			
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生选题</title>
<link href="css/css.css" type="text/css" rel="stylesheet" />
<link href="css/main.css" type="text/css" rel="stylesheet" />
<link rel="shortcut icon" href="images/main/favicon.ico" />
<style>
body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
#searchmain{ font-size:12px;}
#search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF}
#search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}
#search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
#search form input.text-but{height:24px; line-height:24px; width:55px; background:url(images/main/list_input.jpg) no-repeat left top; border:none; cursor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}
#search a.add{ background:url(images/main/add.jpg) no-repeat 0px 6px; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF}
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
#addinfo{ padding:0 0 10px 0;}
</style>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
  <tr>
    <td width="99%" align="left" valign="top" id="addinfo">您的位置：学生管理&nbsp;&nbsp;&gt;&nbsp;&nbsp;学生选题</td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <fieldset  align="left">
      <legend>学生选题
       </legend><p>&nbsp;</p>
       <center>
      <table width="80%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
        <tr>
          <th width="13%" align="center" valign="middle" class="borderright">学号</th>
          <th width="13%" align="center" valign="middle" class="borderright">姓名</th>
          <th width="13%" align="center" valign="middle" class="borderright">课题</th>
          <th width="12%" align="center" valign="middle" class="borderright">志愿</th>
          <th width="13%" align="center" valign="middle" class="borderright">课题</th>
          <th width="11%" align="center" valign="middle" class="borderright">志愿</th>
          <th width="13%" align="center" valign="middle" class="borderright">课题</th>
          <th width="12%" align="center" valign="middle" >志愿</th>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">201523030201</td>
          <td align="center" valign="middle" class="borderright borderbottom">学生选题</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">通过</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2032</td>
          <td align="center" valign="middle" class="borderright borderbottom">学生选题</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">通过</td>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2033</td>
          <td align="center" valign="middle" class="borderright borderbottom">学生选题</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">通过</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2034</td>
          <td align="center" valign="middle" class="borderright borderbottom">学生选题</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">通过</td>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2035</td>
          <td align="center" valign="middle" class="borderright borderbottom">学生选题</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
           <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
           <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">通过</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2036</td>
          <td align="center" valign="middle" class="borderright borderbottom">学生选题</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
           <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
           <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">通过</td>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2037</td>
         <td align="center" valign="middle" class="borderright borderbottom">学生选题</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
           <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
           <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">通过</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2038</td>
          <td align="center" valign="middle" class="borderright borderbottom">学生选题</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">通过</td>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2039</td>
          <td align="center" valign="middle" class="borderright borderbottom">学生选题</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
           <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
           <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">通过</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
         <td align="center" valign="middle" class="borderright borderbottom">2040</td>
         <td align="center" valign="middle" class="borderright borderbottom">学生选题</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
           <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
           <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">通过</td>
          </tr>
    </table>
      <p>&nbsp;</p>
      <p><span class="fenye">10 条数据 1/1 页&nbsp;&nbsp;<a href="#" target="mainFrame" onFocus="this.blur()">首页</a>&nbsp;&nbsp;<a href="#" target="mainFrame" onFocus="this.blur()">上一页</a>&nbsp;&nbsp;<a href="#" target="mainFrame" onFocus="this.blur()">下一页</a>&nbsp;&nbsp;<a href="#" target="mainFrame" onFocus="this.blur()">尾页</a></span></p>
      <p>&nbsp;</p> 
      </center>
      </fieldset>
    </td>
    </tr>
  <tr>
    <td align="left" valign="top" class="fenye">&nbsp;</td>
  </tr>
 
</table>
</body>
</html>
