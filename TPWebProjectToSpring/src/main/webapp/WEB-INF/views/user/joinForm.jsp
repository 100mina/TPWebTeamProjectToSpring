<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>취업의 신 회원가입</title>

	<link type="text/css" rel="stylesheet" href="./resources/css/user/joinForm.css">

</head>
<body>

	<div id="container">
	
		<div id="imgContainer">
			<img alt="" src="./resources/image/loginImg.png" id="bgimg">
			<h3 id="msg">
				명당이라 불리고..<br>
				취업의 신들이 모이는 이곳..
			</h3>
			<img alt="" src="./resources/image/icon.png" id="iconimg">
		</div>
		
		<div id="formContainer">
			<h2>취업의 神 회원가입</h2>
			<form action="join" method="post" enctype="application/x-www-form-urlencoded">
				<p>아이디</p>
				<input type="text" name="user_id">
				<p>비밀번호</p>
				<input type="password" name="user_pw">
				<p>닉네임</p>
				<input type="text" name="user_nickname"><br>
				<input type="submit" value="회원가입" id="submit">
			</form>
		</div>
		
	</div>
	

</body>
</html>