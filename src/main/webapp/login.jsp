<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.login-page {
	width: 360px;
	padding: 8% 0 0;
	margin: auto;
}

.form {
	position: relative;
	z-index: 1;
	background: #e0f1c9;
	max-width: 360px;
	margin: 0 auto 100px;
	padding: 45px;
	text-align: center;
}

.form img {
	padding: 15px;
	margin: 0 0 15px;
}

.form .txt {
	font-family: "Roboto", sans-serif;
	outline: 0;
	background: #f4b7b7;
	width: 100%;
	border: 0;
	margin: 0 0 15px;
	padding: 15px;
	box-sizing: border-box;
	font-size: 14px;
}

.form .btn  {
	font-family: "Roboto", sans-serif;
	text-transform: uppercase;
	outline: 0;
	background: #029cf4;
	width: 100%;
	border: 0;
	padding: 15px;
	color: #FFFFFF;
	font-size: 14px;
}

.form .message {
	margin: 15px 0 0;
	color: #b3b3b3;
	font-size: 12px;
}

.form .message a {
	color: #029cf4;
	text-decoration: none;
}

.form .register-form {
	display: none;
}

body {
	background: #f1c9c9;
	font-family: "Roboto", sans-serif;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="login-page">
	<div class="form">
		<form class="login-form" name="loginF" action="loginservlet">
			<h2>Login Page</h2> 
			<input type="text" name="unm" placeholder="username" class="txt"/>
			<input type="password" name="pass" placeholder="password" class="txt" />
			 <input	type="submit" value="login" class="btn"/>
			<p class="message">
				Not registered? <a href="register.jsp" >
				Create an account</a>
			</p>
			<%
			if (request.getAttribute("Message") != null) {
			%>
			<p><%=request.getAttribute("Message")%></p>
			<%
			}
			%>
		</form>
	</div>
	</div>
</body>
</html>

