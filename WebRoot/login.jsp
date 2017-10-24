<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<link type="text/css" rel="stylesheet" href="css/login.css" />
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/keyboard.js"></script>
	
	<script type="text/javascript">
	function registerBtn() 
	{
		location.href = "registe.jsp";
	}

	function findpassBtn()
	{
		location.href = "findpass.jsp";
	}
	function deleteBtn() 
	{
		var name = document.getElementById("uname").value;
		var pw = document.getElementById("upass").value;
		location.href = "userDelete_delete.action?name=" + name + "&pw=" + pw;
	}
	</script>
	
	<script type="text/JavaScript">

 

	function isValid()
	{
			if(document.getElementById( 'uname' ).value=="")
			{
				window.alert("账号不能为空！");
				return false;
			}
			
			if(document.getElementById( 'upass' ).value=="")
			{
				window.alert("密码不能为空！");
				return false;
			}
			
			if(document.getElementById( 'role' ).value=="0")
			{
				window.alert("权限有误！");
				return false;
			}
			
			var str=document.getElementById("uname");
			
			
			return true;
	}

	</script>
	
  </head>
  
  <body>
  <center>
  <form action="login" method="post" onSubmit="return isValid();" >
  <div class="login-area">
    <div class="title" >
        <span></span>用户登录<span></span>
    </div>
    <label for="">
    <input id="uname" type="text" placeholder="账号"  class="common input" name="account" onFocus="xfjianpan(this.id)" /><br>
    <input id="upass" type="password"  placeholder="密码" class="common input psw-height" name="pw" onFocus="xfjianpan(this.id)"/>
    
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <select name="role"  id="role"  class="role">  <!-- common login-roles -->
    			<option value="0">请选择一个角色</option>
      			<option value="1">学生</option>
				<option value="2">指导老师</option>
				<option value="3">系部或教研组</option>
				<option value="4">系统管理员</option>
    </select>
    
    
    
    </label>
    
    <br>
    <br>
    <br>
    
    <div><input type="submit" value="登录" class="login" /></div>  <!-- "common login-btn" -->
    <div><input type="button" value="没有账号？注册一个" class="reg" onclick="registerBtn()"/></div>  <!-- "common reg-btn" --> 
    <div><input type="button" value="忘记密码？" class="find" onclick="findpassBtn()"/></div> <!-- common find-btn -->

    
</div>
</form>


<div id="jianpan">
    <div class="title" style="text-align:center;"><span id="jptitle"></span><span class="jianpan_hide" onClick="xfjianpan(false)">×</span></div>
    <table id="xfjp" class="jianpan" cellspacing="0" cellpadding="0" border="10">
        <tr>
            <td>1</td>
            <td>2</td>
            <td>3</td>
            <td>4</td>
            <td>5</td>
            <td>6</td>
            <td>7</td>
            <td>8</td>
            <td>9</td>
            <td>0</td>
        </tr>
        <tr>
            <td>q</td>
            <td>w</td>
            <td>e</td>
            <td>r</td>
            <td>t</td>
            <td>y</td>
            <td>u</td>
            <td>i</td>
            <td>o</td>
            <td>p</td>
        </tr>
        <tr>
            <td>a</td>
            <td>s</td>
            <td>d</td>
            <td>f</td>
            <td>g</td>
            <td>h</td>
            <td>j</td>
            <td>k</td>
            <td>l</td>
            <td>:</td>
        </tr>
        <tr>
            <td id="shift">shift</td>
            <td>z</td>
            <td>x</td>
            <td>c</td>
            <td>v</td>
            <td>b</td>
            <td>n</td>
            <td>m</td>
            <td colspan="2">+</td>
        </tr>
        <tr>
            <td>.</td>
            <td>@</td>
            <td>,</td>
            <td>[</td>
            <td>]</td>
            <td colspan="5">im </td>
        </tr>
    </table>
    
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<div><b><font color="#FF0000">版权所有</font> <font color="#00FF00">湖南应用技术学院</font><font color="#FFB500">© Copyright 2014 - 2017 Hunan Applied Technology University All Rights Reserved.</font></b></div>
  </center>
  
  </body>
</html>
