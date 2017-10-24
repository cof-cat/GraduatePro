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
<title>诚信检测稿上传</title>
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
<link href="../SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css">
<script src="../SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
  <tr>
    <td width="99%" align="left" valign="top" id="addinfo">您的位置：学生管理&nbsp;&nbsp;&gt;&nbsp;&nbsp;诚信检测稿上传</td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <fieldset>
      <legend>诚信检测稿上传</legend>
      <p>&nbsp;</p>
       <center>
      <table width="35%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
        <tr>
          <td align="center" class="borderright borderbottom">
       		  <p>
       		    <legend>诚信检测稿上传</legend>
       		  </p>
       		  <p>文档类型:
                <select name="level" id="level">
              	  <option value="1" >&nbsp;&nbsp;学生</option>
              	  <option value="2" >&nbsp;&nbsp;教师</option>
               	  <option value="3" >&nbsp;&nbsp;系部或教研组</option>
               	  <option value="4" >&nbsp;&nbsp;超级管理员</option>
                </select>
       		  </p>
       		  <p>文档名称：</p>
       		  <form name="form2" method="post" action="">
       		    <p>
       		      <input type="submit" name="确认上传" id="确认上传" value="确认上传">
       		    </p>
       		  </form>
       		</td>
           
          </tr>
         
    </table>
    <p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>
      <table width="64%" height="87" border="0" id="main-tab">
          	 <tr>
         		 <td align="left" class="borderright borderbottom">
       		      <p>上传注意事项：</p>
       		      <p> 1.学生可以在规定的时间内上传N次文档，但只保存最近一次文档</p>
       		      <p> 2. 只允许上传的文档类型为：.doc, .docx</p>
       		     </td>
             </tr>
          </table>
      <p>&nbsp;</p>
      <p>&nbsp;</p> 
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
