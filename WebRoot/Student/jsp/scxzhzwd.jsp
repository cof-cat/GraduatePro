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
<title>上传小组汇总文档</title>
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
    <td width="99%" align="left" valign="top" id="addinfo">您的位置：学生管理&nbsp;&nbsp;&gt;&nbsp;&nbsp;上传小组汇总文档</td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <fieldset>
      <legend>上传小组汇总文档
      </legend><p>&nbsp;</p>
       <center>
    <p>&nbsp;</p>
 <table width="85%" height="271" border="0" cellpadding="0" cellspacing="0" id="main-tab">
       <tr>
       	<th colspan="6">上传小组汇总文档列表</th>
       </tr>
        <tr>
          <th width="12%" align="center" valign="middle" class="borderright">文档编号</th>
          <th width="36%" align="center" valign="middle" class="borderright">文档名称</th>
          <th width="12%" align="center" valign="middle" class="borderright">导师</th>
          <th width="12%" align="center" valign="middle" class="borderright">学生</th>
          <th width="19%" align="center" valign="middle" class="borderright">上传时间</th>
          <th width="9%" align="center" valign="middle" class="borderright">文档状态</th>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td height="41" align="center" valign="middle" class="borderright borderbottom">201523030201</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">&nbsp;</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年11月5日 11:22:20</td>
          <td align="center" valign="middle" class="borderright borderbottom">下载</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td height="41" align="center" valign="middle" class="borderright borderbottom">2032</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">&nbsp;</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
          <td align="center" valign="middle" class="borderright borderbottom">下载</td>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td height="41" align="center" valign="middle" class="borderright borderbottom">2033</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">&nbsp;</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
          <td align="center" valign="middle" class="borderright borderbottom">下载</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td height="41" align="center" valign="middle" class="borderright borderbottom">2034</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">&nbsp;</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
          <td align="center" valign="middle" class="borderright borderbottom">下载</td>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td height="41" align="center" valign="middle" class="borderright borderbottom">2035</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">&nbsp;</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
          <td align="center" valign="middle" class="borderright borderbottom">下载</td>
          </tr>
    </table>
      </center>
    </fieldset>
    </td>
    </tr>
  <tr>
    <td align="left" valign="top" class="fenye">&nbsp;</td>
  </tr>
 
</table>
<script type="text/javascript">
var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1");
</script>
</body>
</html>
