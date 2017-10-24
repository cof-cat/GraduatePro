<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
       				response.sendRedirect("../Timeout.jsp");
       			}
       			
%>

<!-- Cookie获取用户名 -->

<%
	Cookie cookies[] = request.getCookies();
	
	Cookie cookie=cookies[1];
	
	String value=cookie.getValue();
 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/changePass.js"></script>
<link href="css/changePass.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">

var b=true;

function  isValid( )
{

	
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
	
	if(b)
		return b;
	
	
}

</script>




<base href="<%=basePath%>">

<title>密码修改</title>

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
			密码修改<sup>ChangePass</sup>
		</h1>

		<div class="login" style="margin-top:50px;">

			<div class="header">
				<div class="switch" id="switch">
					<a class="switch_btn_focus" id="switch_qlogin"
						href="javascript:void(0);" tabindex="7">提示</a> <a
						class="switch_btn" id="switch_login" href="javascript:void(0);"
						tabindex="8">密码修改</a>
					<div class="switch_bottom" id="switch_bottom"
						style="position: absolute; width: 64px; left: 0px;"></div>
				</div>
			</div>


			<div class="web_qr_login" id="web_qr_login"
				style="display: block; height: 235px;">
				<br> <br> <br> <br> <br> <br>
				<p>
					<font color="#00FFFF" size=5 face="微软雅黑">单击“密码修改”标签修改密码</font>
				</p>
			</div>

			<!--密码修改-->
			<div class="qlogin" id="qlogin" style="display: none; ">

				<div class="web_login">
					<form name="form" id="regUser" action="changePassDepart"
						method="post" onSubmit="return isValid( )">
						<input type="hidden" name="to" value="reg" /> <input
							type="hidden" name="did" value="0" />
						<ul class="reg_form" id="reg-ul">

							<li><label for="user" class="input-tips2">用&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;户：</label>
								<div class="inputOuter2">
									<input type="text" id="uname" name="account" value="<%=value %>" disabled="disabled"
										maxlength="16" class="inputstyle2" />
								</div>
								</li>
								
							<li><label for="user" class="input-tips2">原&nbsp;&nbsp;密&nbsp;&nbsp;码：</label>
								<div class="inputOuter2">
									<input type="password" id="oldpass" name="pw"
										maxlength="16" class="inputstyle2" />
								</div></li>

							<li><label for="passwd" class="input-tips2">新&nbsp;&nbsp;密&nbsp;&nbsp;码：</label>
								<div class="inputOuter2">
									<input type="password" id="upass"
										name="newpass" maxlength="16" class="inputstyle2" />
								</div></li>
							<li><label for="passwd2" class="input-tips2">确认密码：</label>
								<div class="inputOuter2">
									<input type="password" id="ConfirmPass" maxlength="16"
										class="inputstyle2" />
								</div>
							</li>


							<li>
								<div class="inputArea">
									<input type="submit" id="reg"
										style="margin-top:10px;margin-left:85px;" class="button_blue"
										value="立即修改" />
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
