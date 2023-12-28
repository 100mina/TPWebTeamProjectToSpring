<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<html>
<head>
	<title>취업의 신</title>
	<link type="text/css" rel="stylesheet" href="./resources/css/common.css">
	<link type="text/css" rel="stylesheet" href="./resources/css/home.css">
	<%@ include file="header.jsp"%>
</head>
<body>
	

	<div id="main">
		<img alt="" src="./resources/image/bg_index.png" id="mainBg">
		<p id="mainText">
			취업의 명당 취업의 신<br><br>
			취업의 신은... 취준생 끼리 모여 정보를 공유하고 의견을 주고 받을	수 있는 사이트 입니다.<br>
			여러분이 추천하고 따르는 취준생은 순위의 오르게 되며 취업신 이라는 등급이 부여됩니다.<br>
			적극적으로 활동하고 취업신에 도전해 보세요.
		</p>
	</div>
	<br><br>
	<div id="mainContent">
		<br><h2>인기 포트폴리오 게시물</h2><br>
		<div id="portContainer">
			
			<!-- 반복문으로 게시물 조회수 순으로 가져오기 -->
			<c:forEach begin="0" end="10">
				<div id="itemContainer">
					<div>
						<a href=""><img alt="" src="./resources/image/sampleprofile.png" id="portThumbnail"></a>
					</div>
					
					<span id="portInfo">
						<a href=""><img alt="" src="./resources/image/sampleprofile.png" id="portProfile"></a>
						<a href="">sample</a>
						
						<span id="faview">
							<img alt="" src="./resources/image/favo.png"> 00 &nbsp;
							<img alt="" src="./resources/image/eye.png"> 00
						</span>
					</span>
				</div>
			</c:forEach>
			
		</div>
		<br><br>
		<div id="bg">
			<h1>지금 취업의 神에 가입 하고<br>인기 취업신에 도전해 보세요!</h1>
			<span id="btnContainer">
				<a href="" class="btn">인기 포트폴리오 둘러보기</a>
				<a href="" class="btn">취업의 신 가입하기</a>
			</span>
		</div>
	</div>

	<br><hr><br>
	
</body>
</html>
