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
<title>导入教师</title>
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
	<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
  <tr>
    <td width="99%" align="left" valign="top" id="addinfo">您的位置：管理员&gt;&gt;导入教师</td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <fieldset>
      <legend>导入教师</legend>
      <p>&nbsp;</p>
      <form name="form1" method="post" action="">
        <input type="submit" name="button" id="button" value="一键导入">
      </form>
      <p>&nbsp;</p>
       <center>
         <table width="90%" height="73" border="0" cellpadding="0" cellspacing="0" id="main-tab">
           <tr>
          <th width="8%" align="center" valign="middle" class="borderright">工号</th>
          <th width="9%" align="center" valign="middle" class="borderright">姓名</th>
          <th width="10%" align="center" valign="middle" class="borderright">性别</th>
          <th width="10%" align="center" valign="middle" class="borderright">职称</th>
          <th width="14%" align="center" valign="middle" class="borderright">院</th>
          <th width="22%" align="center" valign="middle" class="borderright">专业</th>
          <th width="27%" align="center" valign="middle" >联系方式</th>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2022</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">3</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderright borderbottom">已选</td>
          <td width="27%" align="center" valign="middle" class="borderright borderbottom">2015年11月10日 22:12:00</td>
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
