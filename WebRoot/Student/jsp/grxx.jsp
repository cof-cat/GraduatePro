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
<title>个人信息</title>
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
    <td width="99%" align="left" valign="top" id="addinfo">您的位置：学生管理&nbsp;&nbsp;>&nbsp;&nbsp;个人信息</td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <fieldset  align="left">
      <legend>个人信息</legend>
        <center>
      <table width="80%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
       	 <tr>
          <th align="center" colspan="10">学生基本信息一览表</th>  
          </tr>
        <tr>
          <td width="8%" align="center" valign="middle" class="borderright borderbottom">姓名</td>
          <td width="10%" align="center" valign="middle" class="borderright borderbottom">陈敏</td>
          <td width="9%" align="center" valign="middle" class="borderright borderbottom">性别</td>
          <td width="10%" align="center" valign="middle" class="borderright borderbottom"><form name="form1" method="post" action="">
            <input type="radio" name="radio" id="女" value="女">
            <label for="女"></label>
            女
            <input type="radio" name="radio" id="男" value="男">
            <label for="男"></label>
            男
          </form></td>
          <td width="8%" align="center" valign="middle" class="borderright borderbottom">学院</td>
          <td width="14%" align="center" valign="middle" class="borderright borderbottom">信息工程学院</td>
          <td width="7%" align="center" valign="middle" class="borderright borderbottom">系/专业</td>
          <td width="15%" align="center" valign="middle" class="borderright borderbottom">网络技术</td>
           <td width="8%" align="center" valign="middle" class="borderright borderbottom">班级</td>
          <td width="11%" align="center" valign="middle" class=" borderbottom">软件1504班</td>
          </tr>
       <tr>
          <td width="8%" align="center" valign="middle" class="borderright borderbottom">联系电话</td>
          <td align="center" valign="middle" class="borderright borderbottom" colspan="2">&nbsp;</td>
          <td width="10%" align="center" valign="middle" class="borderright borderbottom"><form name="form1" method="post" action="">
            电子邮箱
          </form></td>
          <td align="center" valign="middle" class="borderright borderbottom" colspan="2">&nbsp;</td>
          <td width="7%" align="center" valign="middle" class="borderright borderbottom">QQ</td>
          <td width="15%" align="center" valign="middle" class="borderright borderbottom">网络技术</td>
           <td width="8%" align="center" valign="middle" class="borderright borderbottom">年级</td>
          <td width="11%" align="center" valign="middle" class="borderbottom">2015级</td>
          </tr>
    </table>
      <p>&nbsp;</p>
      <form name="form2" method="post" action="">
        <label>
          <input type="submit" name="修改" id="修改" value="确认修改">
        </label>
      </form>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    <hr>
      <p>&nbsp;</p>
      <table width="80%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
       	 <tr>
          <th align="center" colspan="7">学生选题情况一览表</th>  
          </tr>
        <tr>
          <th width="7%" align="center" valign="middle" class="borderright">编号</th>
          <th width="8%" align="center" valign="middle" class="borderright">志愿</th>
          <th width="33%" align="center" valign="middle" class="borderright">课题名称</th>
          <th width="12%" align="center" valign="middle" class="borderright">课题教师</th>
          <th width="8%" align="center" valign="middle" class="borderright">课题状态</th>
          <th width="19%" align="center" valign="middle" class="borderright">选题时间</th>
          <th width="13%" align="center" valign="middle" >操作</th>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2031</td>
          <td align="center" valign="middle" class="borderright borderbottom">1</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试留言测试留言</td>
          <td align="center" valign="middle" class="borderright borderbottom">测试内容</td>
          <td align="center" valign="middle" class="borderright borderbottom">待审</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年11月12日 12:15:06</td>
          <td align="center" valign="middle" class="borderright borderbottom">选题|取消</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2032</td>
          <td align="center" valign="middle" class="borderright borderbottom">2</td>
          <td align="center" valign="middle" class="borderright borderbottom">2</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderbottom">通过</td>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2033</td>
          <td align="center" valign="middle" class="borderright borderbottom">3</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderbottom">通过</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2034</td>
          <td align="center" valign="middle" class="borderright borderbottom">4</td>
          <td align="center" valign="middle" class="borderright borderbottom">留言测试</td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          <td align="center" valign="middle" class="borderright borderbottom">15</td>
          <td align="center" valign="middle" class="borderright borderbottom">2015年</td>
          <td align="center" valign="middle" class="borderbottom">通过</td>
          </tr>
       
    </table>
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
