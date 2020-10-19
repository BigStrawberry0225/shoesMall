<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>注册</title>
<link href="css/register.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
	var okay = '<%=request.getParameter("okay")%>';
	if(okay=='yes'){
 		window.location.href="login.jsp?backurl="+window.location.href;
		alert("注册成功，快去登陆吧");
	}if(okay=='no'){
		alert("用户名已存在");
	}
</script>
</head>
<body>
   	<div id="header">
   		<div id="logo">
  	 	<img src="images/26.gif"><img src="images/26.gif"><img src="images/26.gif"></div>
  	 	<div id="logotext">
	   	<font size="+3" >欢迎注册</font></div>
	   	<div id="denglu">
	   	<font color="#c0c0c0" size="+1" >已有账号？<a href="login.jsp">请登录></a></font>
	   	</div>
  	</div>
   	<div id="maincontent">
	   	<div id="content">
	   		<form action="register_user" name="register" method="post">
		  		<font size="+2" face="微软雅黑">用户名:</font>
		  		<input type="text" name="user_name" placeholder="请输入用户名"><br/>
		  		<font size="+2" face="微软雅黑">密  &nbsp;&nbsp;码:</font>
				<input type="password" name="user_password" placeholder="请输入密码..."><br/>
				<input type="submit" value="submit">
			</form></div>
   	</div>

</body>
</html>