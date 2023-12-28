<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Insert title here</title>
	<style type="text/css">
		@font-face{
			font-family: 'font';
			src: url("./resources/font/notosans.ttf");
		}
		
		#headerContainer{
			position: relative;
			display: flex;
			align-items: center;
			font-size: 17px;
		}
		
		#mainIcon{
			margin-right: 2.5em;		
		}
		
		#headerContainer a{
			text-decoration: none;
		}
		
		#headerList{
			list-style: none;
			display: inline-block;
			
		}
		
		#headerList li{
			display: inline-block;
			margin: 0px 2em;
		}
		
		.memberInfo{
			position: absolute;
			display: flex;
			right: 0;
			align-items: center;	
		}
		
		#join{
			margin-left: 1em;
		}
		
		#memberInfo img{
			border: 1px solid lightgray;
			border-radius: 50%;
			height: 40px;
			width: 40px;
			margin-right: 1em;	
		}
		
		#btnLogout{
			display: none;
			position: absolute;
			right: 80px;
			top: 40px;
			width: 100px;
			height: 40px;
			background: floralwhite;
			border-radius: 24px;
			text-align: center;
			padding-top: 14px;
		}
		
		#memberInfo:hover #btnLogout{
			display: inline-block;
		}
	
	</style>
</head>

<!-- --------------------------------------------------------------------------------------------------- -->

<body>

	<div id="headerContainer">
	
		<a href="${request.contextPath() }">
			<img id="mainIcon" alt="b" src="./resources/image/icon.png">
		</a>
	
		<ul id="headerList">
			<li><a href="">포트폴리오</a></li>
			<li><a href="">취업신</a></li>
			<li><a href="">정보마당</a></li>
		</ul>
		
		<c:if test="${empty sessionScope.user }">
			<span class="memberInfo">
				<a href="" id="login">로그인</a>
				<a href="" id="join">회원가입</a>
			</span>
		</c:if>
		
		<c:if test="${not empty sessionScope.user }">
			<span class="memberInfo" id="memberInfo">
				<a href=""><img alt="" src="./resources/image/sampleprofile.png"></a>
				<span>sample님 환영합니다!</span>
				
				<span id="btnLogout">
					<a href="">로그아웃</a>
				</span>	
			</span>
		</c:if>
		
	</div>
	

</body>
</html>