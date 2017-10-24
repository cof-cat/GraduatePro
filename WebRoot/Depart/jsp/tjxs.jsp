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
       				response.sendRedirect("../../Timeout.jsp");
       			}
       			
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>添加学生</title>
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
#main-tab th{ font-size:14px; background:url(images/main/list_bg.jpg) repeat-x; height:30px; line-height:25px;}
#main-tab td{ font-size:13px; line-height:40px;}
#main-tab td a{ font-size:12px; color:#548fc9;}
#main-tab td a:hover{color:#565656; text-decoration:underline;}
.bordertop{ border-top:1px solid #ebebeb}
.borderright{ border-right:1px solid #ebebeb}
.borderbottom{ border-bottom:1px solid #ebebeb}
.borderleft{ border-left:1px solid #ebebeb}
.gray{ color:#dbdbdb;}
td.fenye{ padding:10px 0 0 0; text-align:right;}
.bggray{ background:#f9f9f9; font-size:14px; font-weight:bold; padding:10px 10px 10px 0; width:120px;}
.main-for{ padding:10px;}
.main-for input.text-word{ width:310px; height:36px; line-height:36px; border:#ebebeb 1px solid; background:#FFF; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; padding:0 10px;}
.main-for select{ width:310px; height:36px; line-height:36px; border:#ebebeb 1px solid; background:#FFF; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666;}
.main-for input.text-but{ width:100px; height:40px; line-height:30px; border: 1px solid #cdcdcd; background:#e6e6e6; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#969696; float:left; margin:0 10px 0 0; display:inline; cursor:pointer; font-size:14px; font-weight:bold;}
#addinfo a{ font-size:14px; font-weight:bold; background:url(images/main/addinfoblack.jpg) no-repeat 0 1px; padding:0px 0 0px 20px; line-height:45px;}
#addinfo a:hover{ background:url(images/main/addinfoblue.jpg) no-repeat 0 1px;}
</style>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
  <tr>
    <td width="99%" align="left" valign="top">您的位置：学生管理&nbsp;&nbsp;>&nbsp;&nbsp;添加学生</td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <form method="post" action="">
      <fieldset>
        <legend>添加学生
        </legend><center>
        <table width="44%" height="368" border="0" cellpadding="0" cellspacing="0" id="main-tab">
          <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="center" valign="middle" class="borderright borderbottom bggray" colspan="2">添加学生</td>
            </tr>
          <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td width="120" align="right" valign="middle" class="borderright borderbottom bggray">学 号：</td>
            <td width="354" align="left" valign="middle" class="borderright borderbottom main-for">
              <input type="text" name="" value="" class="text-word"></td>
            </tr>
          <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="right" valign="middle" class="borderright borderbottom bggray">真实姓名：</td>
            <td align="left" valign="middle" class="borderright borderbottom main-for">
              <input type="text" name="" value="" class="text-word"></td>
            </tr>
          <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="right" valign="middle" class="borderright borderbottom bggray"><p>性 别：</p></td>
            <td align="left" valign="middle" class="borderright borderbottom main-for"><input type="radio" name="radio" id="男" value="男">
              <label for="男"></label>
              男 
              <input type="radio" name="radio" id="女" value="女">
              <label for="女"></label>
              女</td>
            </tr>
          <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="right" valign="middle" class="borderright borderbottom bggray">学 院：</td>
            <td align="left" valign="middle" class="borderright borderbottom main-for">
              <select name="level" id="level">
                <option value="1" >信息工程学院</option>
                <option value="2" >经济管理学院</option>
                <option value="3" >农林科技学院</option>
                <option value="4" >机电工程学院</option>
                <option value="5" >设计艺术学院</option>
                <option value="6" >外国语学院</option>
                <option value="7" >公共课部</option>
                <option value="8" >继续教育学院</option>
                </select>
              </td>
            </tr>
              <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="right" valign="middle" class="borderright borderbottom bggray">专 业：</td>
            <td align="left" valign="middle" class="borderright borderbottom main-for">
              <input type="text" name="" value="" class="text-word"></td>
            </tr>
              <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="right" valign="middle" class="borderright borderbottom bggray">班级：</td>
            <td align="left" valign="middle" class="borderright borderbottom main-for">
              <input type="text" name="" value="" class="text-word"></td>
            </tr>
              <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="right" valign="middle" class="borderright borderbottom bggray">年 级：</td>
            <td align="left" valign="middle" class="borderright borderbottom main-for">
              <input type="text" name="" value="" class="text-word"></td>
            </tr>
              <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="right" valign="middle" class="borderright borderbottom bggray">身份证：</td>
            <td align="left" valign="middle" class="borderright borderbottom main-for">
              <input type="text" name="" value="" class="text-word"></td>
            </tr>
          <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="right" valign="middle" class="borderright borderbottom bggray">&nbsp;</td>
            <td align="left" valign="middle" class="borderright borderbottom main-for">
              <input type="submit" value="添加学生" class="text-but"></td>
            </tr>
        </table>
        </center>
      </fieldset>
    </form>
    </td>
    </tr>
</table>
</body>
</html>