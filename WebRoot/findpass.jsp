<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/FindPass.js"></script>
<link href="css/FindPass.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

var b=true;

function  isValid( )
{

if(document.getElementById( 'uname' ).value=="")
	{
		window.alert("请填写需要找回的用户名！");
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
		window.alert("找回成功！");
	}
	
	
}

</script>




<base href="<%=basePath%>">

<title>密码找回</title>

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
			密码找回<sup>FindPass</sup>
		</h1>

		<div class="login" style="margin-top:50px;">

			<div class="header">
				<div class="switch" id="switch">
					<a class="switch_btn_focus" id="switch_qlogin"
						href="javascript:void(0);" tabindex="7">提示</a> <a
						class="switch_btn" id="switch_login" href="javascript:void(0);"
						tabindex="8">密码找回</a>
					<div class="switch_bottom" id="switch_bottom"
						style="position: absolute; width: 64px; left: 0px;"></div>
				</div>
			</div>


			<div class="web_qr_login" id="web_qr_login"
				style="display: block; height: 235px;">
				<br> <br> <br> <br> <br> <br>
				<p>
					<font color="#00FFFF" size=5 face="微软雅黑">单击“密码找回”标签找回密码</font>
				</p>
			</div>

			<!--密码找回-->
			<div class="qlogin" id="qlogin" style="display: none; ">

				<div class="web_login">
					<form name="form" id="regUser" action="editUser_editInfo.action"
						method="post" onSubmit="return isValid( )">
						<input type="hidden" name="to" value="reg" /> <input
							type="hidden" name="did" value="0" />
						<ul class="reg_form" id="reg-ul">

							<li><label for="user" class="input-tips2">需找用户：</label>
								<div class="inputOuter2">
									<input type="text" id="uname" name="t_User1.name"
										maxlength="16" class="inputstyle2" />
								</div></li>

							<li><label for="passwd" class="input-tips2">新&nbsp;&nbsp;密&nbsp;&nbsp;码：</label>
								<div class="inputOuter2">
									<input type="password" id="upass"
										name="t_User1.password" maxlength="16" class="inputstyle2" />
								</div></li>
							<li><label for="passwd2" class="input-tips2">确认密码：</label>
								<div class="inputOuter2">
									<input type="password" id="ConfirmPass" name="ConfirmPass" maxlength="16"
										class="inputstyle2" />
								</div>
							</li>


							<li>
								<div class="inputArea">
									<input type="submit" id="reg"
										style="margin-top:10px;margin-left:85px;" class="button_blue"
										value="立即找回" />
								</div>

							</li>

						</ul>
					</form>


				</div>


			</div>
			<!--密码找回end-->
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
		<div class="Copyright"><p><b><font color="#FF0000">版权所有</font> <font color="#00FF00">湖南应用技术学院</font><font color="#FFB500">© Copyright 2014 - 2017 Hunan Applied Technology University All Rights Reserved.</font> </p></b></div>


	</center>
</body>
</html>
