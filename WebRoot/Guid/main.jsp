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
       
       if  (  ! (check.equals("Guidpass")&&role.equals("2") ) ) 
       			{
       				response.sendRedirect("../Timeout.jsp");
       			}
       			
%>

<!-- Cookie获取用户名 -->

<%
		Cookie cookie[] = request.getCookies();
		
		Cookie result = cookie[1];
		
		String value=result.getValue();
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>主要内容区main</title>
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

<style>
body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
#main{ font-size:12px;}
#main span.time{ font-size:14px; color:#528dc5; width:100%; padding-bottom:10px; float:left}
#main div.top{ width:100%; background:url(images/main/main_r2_c2.jpg) no-repeat 0 10px; padding:0 0 0 15px; line-height:35px; float:left}
#main div.sec{ width:100%; background:url(images/main/main_r2_c2.jpg) no-repeat 0 15px; padding:0 0 0 15px; line-height:35px; float:left}
.left{ float:left}
#main div a{ float:left}
#main span.num{  font-size:30px; color:#538ec6; font-family:"Georgia","Tahoma","Arial";}
.left{ float:left}
div.main-tit{ font-size:14px; font-weight:bold; color:#4e4e4e; background:url(images/main/main_r4_c2.jpg) no-repeat 0 33px; width:100%; padding:30px 0 0 20px; float:left}
div.main-con{ width:100%; float:left; padding:10px 0 0 20px; line-height:36px;}
div.main-corpy{ font-size:14px; font-weight:bold; color:#4e4e4e; background:url(images/main/main_r6_c2.jpg) no-repeat 0 33px; width:100%; padding:30px 0 0 20px; float:left}
div.main-order{ line-height:30px; padding:10px 0 0 0;}
</style>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="main">
  <tr>
    <td colspan="2" align="left" valign="top">
    <span class="time"><strong>您好！<%=value %></strong><u>[指导老师]</u></span>
    <div class="top"><span class="left">您登录的IP为：<%=request.getRemoteAddr() %> &nbsp;&nbsp;&nbsp;&nbsp;如非您本人操作，请及时</span><a href="changePass.jsp" target="_parent" onFocus="this.blur()"><font color="#22DD22">更改密码</font></a></div>
    </td>
  </tr>
 
  
</table>



</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
  <tr>
    <td width="99%" align="left" valign="top" id="addinfo">您的位置：欢迎界面</td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <fieldset  align="left">
      <legend>欢迎界面</legend>
      <p>&nbsp;</p>
       <center>
      <table width="80%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
        <tr>
          <th width="7%" align="center" valign="middle" class="borderright">编号</th>
          <th width="46%" align="center" valign="middle" class="borderright">标题</th>
          <th width="18%" align="center" valign="middle" class="borderright">发布时间</th>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2031</td>
          <td align="center" valign="middle" class="borderright borderbottom"><a href="message_info.html" target="mainFrame" onFocus="this.blur()" title="留言测试留言测试留言测试留言测试内容">留言测试留言测试留言测试留言测试内容</a></td>
          <td align="center" valign="middle" class="borderright borderbottom">2017年11月2日 22:52:06</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2032</td>
          <td align="center" valign="middle" class="borderright borderbottom"><a href="message_info.html" target="mainFrame" onFocus="this.blur()" title="留言测试留言测试留言测试留言测试内容">留言测试留言测试留言测试留言测试内容</a></td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2033</td>
          <td align="center" valign="middle" class="borderright borderbottom"><a href="message_info.html" target="mainFrame" onFocus="this.blur()" title="留言测试留言测试留言测试留言测试内容">留言测试留言测试留言测试留言测试内容</a></td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2034</td>
          <td align="center" valign="middle" class="borderright borderbottom"><a href="message_info.html" target="mainFrame" onFocus="this.blur()" title="留言测试留言测试留言测试留言测试内容">留言测试留言测试留言测试留言测试内容</a></td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2035</td>
          <td align="center" valign="middle" class="borderright borderbottom"><a href="message_info.html" target="mainFrame" onFocus="this.blur()" title="留言测试留言测试留言测试留言测试内容">留言测试留言测试留言测试留言测试内容</a></td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2036</td>
          <td align="center" valign="middle" class="borderright borderbottom"><a href="message_info.html" target="mainFrame" onFocus="this.blur()" title="留言测试留言测试留言测试留言测试内容">留言测试留言测试留言测试留言测试内容</a></td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2037</td>
         <td align="center" valign="middle" class="borderright borderbottom"><a href="message_info.html" target="mainFrame" onFocus="this.blur()" title="留言测试留言测试留言测试留言测试内容">留言测试留言测试留言测试留言测试内容</a></td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2038</td>
          <td align="center" valign="middle" class="borderright borderbottom"><a href="message_info.html" target="mainFrame" onFocus="this.blur()" title="留言测试留言测试留言测试留言测试内容">留言测试留言测试留言测试留言测试内容</a></td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
          <td align="center" valign="middle" class="borderright borderbottom">2039</td>
          <td align="center" valign="middle" class="borderright borderbottom"><a href="message_info.html" target="mainFrame" onFocus="this.blur()" title="留言测试留言测试留言测试留言测试内容">留言测试留言测试留言测试留言测试内容</a></td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
          </tr>
        <tr class="bggray" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
         <td align="center" valign="middle" class="borderright borderbottom">2040</td>
         <td align="center" valign="middle" class="borderright borderbottom"><a href="message_info.html" target="mainFrame" onFocus="this.blur()" title="留言测试留言测试留言测试留言测试内容">留言测试留言测试留言测试留言测试内容</a></td>
          <td align="center" valign="middle" class="borderright borderbottom">admin@sina.com</td>
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
  
  <tr>
    <td colspan="2" align="left" valign="top">
    <div class="main-corpy">系统提示</div>
    <div class="main-order">强烈建议您使用IE7及以上版本或其他的浏览器</div>
    </td>
  </tr>
  
 
</table>



</body>


</body>
</html>
