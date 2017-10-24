<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/registe.js"></script>
<link href="css/registe.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

var b=true;

function  isValid( )
{

if(document.getElementById( 'uname' ).value=="")
	{
		window.alert("用户名不能为空！");
		b=false;
		return false;
	}
	
if(document.getElementById( 'upass' ).value=="")
	{
		window.alert("密码不能为空！");
		b=false;
		return false;
	}
	
if ( document.getElementById( 'ConfirmPass' ).value != document.getElementById( 'upass' ).value )
	{
		window.alert("二次密码不一致！");
		b=false;
		document.getElementById( 'ConfirmPass' ).value="";
		document.getElementById( 'upass' ).value="";
		return false;
		
	}
	
if ( b )
	{
		return b;
	}	
	
	
}

</script>




<base href="<%=basePath%>">

<title>用户注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<center>

		<h1>
			用户注册<sup>Register</sup>
		</h1>

		<div class="login" style="margin-top:50px;">

			<div class="header">
				<div class="switch" id="switch">
					<a class="switch_btn_focus" id="switch_qlogin"
						href="javascript:void(0);" tabindex="7">注册提示</a> <a
						class="switch_btn" id="switch_login" href="javascript:void(0);"
						tabindex="8">注册</a>
					<div class="switch_bottom" id="switch_bottom"
						style="position: absolute; width: 64px; left: 0px;"></div>
				</div>
			</div>


			<div class="web_qr_login" id="web_qr_login"
				style="display: block; height: 235px;">
				<br> <br> <br> <br> <br> <br>
				<p>
					<font color="#00FFFF" size=5 face="微软雅黑">单击“注册”标签进行用户注册</font>
				</p>
			</div>

			<!--注册-->
			<div class="qlogin" id="qlogin" style="display: none; ">

				<div class="web_login">
					<form name="form" id="regUser" action="regist" method="post" onSubmit="return isValid( )">
						<input type="hidden" name="to" value="reg" /> <input
							type="hidden" name="did" value="0" />
						<ul class="reg_form" id="reg-ul">

							<li><label for="user" class="input-tips2">用&nbsp;户&nbsp;名：</label>
								<div class="inputOuter2">
									<input type="text" id="uname" name="account"
										maxlength="16" class="inputstyle2" />
								</div></li>
								
								<li><label for="user" class="input-tips2">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
								<div class="inputOuter2">
									<input type="password" id="upass" name="pw" maxlength="16" class="inputstyle2" />
								</div></li>
								
								<li><label for="user" class="input-tips2">确认密码：</label>
								<div class="inputOuter2">
									<input type="password" id="ConfirmPass" maxlength="16" class="inputstyle2" />
								</div></li>
								
								<li><label for="user" class="input-tips2">角&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色：</label>
								<div class="inputOuter2">
									<select name="role" >
										<option value="1">学生</option>
										<option value="2">指导老师</option>
										<option value="3">系部或教研组</option>
										<option value="4">系统管理员</option>
									</select>
								</div></li>
								
								<li><label for="user" class="input-tips2">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</label>
								<div class="inputOuter2">
									<input name="sex" type="radio" checked="checked" value="1">男&nbsp;
									<input name="sex" type="radio" value="0">女
								</div></li>
								
								<li><label for="user" class="input-tips2">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;编：</label>
								<div class="inputOuter2">
									<input type="text" id="uname" name="addId" maxlength="16" class="inputstyle2" />
								</div></li>

							<li><label for="passwd" class="input-tips2">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</label>
								<div class="inputOuter2">
									<input type="text" name="deail" maxlength="16" class="inputstyle2" />
								</div></li>
							<li><label for="passwd" class="input-tips2">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</label>
								<div class="inputOuter2">
									<input type="text" name="phone" maxlength="16" class="inputstyle2" />
								</div>
							</li>


							<li>
								<div class="inputArea">
									<input type="submit" id="reg"
										style="margin-top:10px;margin-left:85px;" class="button_blue"
										value="立即注册" />
								</div>

							</li>

						</ul>
					</form>


				</div>


			</div>
			<!--注册end-->
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
		<br>
		<br>
		<div class="Copyright"><p><b><font color="#FF0000">版权所有</font> <font color="#00FF00">湖南应用技术学院</font><font color="#FFB500">© Copyright 2014 - 2017 Hunan Applied Technology University All Rights Reserved.</font> </p></b></div>


	</center>
</body>
</html>
