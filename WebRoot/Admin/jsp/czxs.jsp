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
       
       if  (  ! (check.equals("Adminpass")&&role.equals("4") ) ) 
       			{
       				response.sendRedirect("../../Timeout.jsp");
       			}
       			
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查找学生</title>
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
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
  <tr>
    <td width="99%" align="left" valign="top">您的位置：管理员&gt;&gt;查找学生</td>
  </tr>
  <tr>
    <td align="left" valign="top">
      <fieldset>
        <legend>查找学生</legend>
        <p>&nbsp;</p>
        <p align="center">查找类型：
          <label for="类型"></label>
          <select name="类型" id="类型">
          	<option value="1">学号</option>
            <option value="2">姓名</option>
          </select> 
        检测关键字：
          <label for="关键字"></label>
          <input type="text" name="关键字" id="关键字">
          <input type="submit" name="检测" id="检测" value="开始查找">
        </p>
        <p>&nbsp;</p>
        <hr>
         <p>&nbsp;</p>
         <center>
           <table width="85%" height="76" border="0" cellpadding="0" cellspacing="0" id="main-tab">
          <tr>
            <th width="7%" align="center" valign="middle" class="borderright">学号</th>
            <th width="10%" align="center" valign="middle" class="borderright">姓名</th>
            <th width="7%" align="center" valign="middle" class="borderright">性别</th>
            <th width="15%" align="center" valign="middle" class="borderright">所在系/专业</th>
            <th width="15%" align="center" valign="middle" class="borderright">联系方式</th>
            <th width="14%" align="center" valign="middle" class="borderright">班级</th>
            <th width="10%" align="center" valign="middle" class="borderright">年级</th>
            <th width="8%" align="center" valign="middle" class="borderright">状态</th>
            <th width="14%" align="center" valign="middle">操作</th>
            </tr>
          <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="center" valign="middle" class="borderright borderbottom">3012</td>
            <td align="center" valign="middle" class="borderright borderbottom">admin</td>
            <td align="center" valign="middle" class="borderright borderbottom">创始人</td>
            <td align="center" valign="middle" class="borderright borderbottom">已锁定</td>
            <td align="center" valign="middle" class="borderright borderbottom">admin</td>
            <td align="center" valign="middle" class="borderright borderbottom">创始人</td>
            <td align="center" valign="middle" class="borderright borderbottom">已锁定</td>
            <td align="center" valign="middle" class="borderright borderbottom">&nbsp;</td>
            <td align="center" valign="middle" class="borderbottom"><a href="add.html" target="mainFrame" onFocus="this.blur()" class="add">编辑</a><span class="gray">&nbsp;|&nbsp;</span><a href="add.html" target="mainFrame" onFocus="this.blur()" class="add">删除</a></td>
            </tr>
        </table>
        <p>&nbsp;</p>
        <p><span class="fenye">11 条数据 1/1 页&nbsp;&nbsp;<a href="#" target="mainFrame" onFocus="this.blur()">首页</a>&nbsp;&nbsp;<a href="#" target="mainFrame" onFocus="this.blur()">上一页</a>&nbsp;&nbsp;<a href="#" target="mainFrame" onFocus="this.blur()">下一页</a>&nbsp;&nbsp;<a href="#" target="mainFrame" onFocus="this.blur()">尾页</a></span></p>
    </center></fieldset>
    </td>
    </tr>
  <tr>
    <td align="left" valign="top" class="fenye">&nbsp;</td>
  </tr>
</table>
</body>
</html>
