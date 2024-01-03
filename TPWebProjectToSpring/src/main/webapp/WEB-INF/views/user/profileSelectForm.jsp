<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>취업의 신 가입을 환영합니다</title>
	<link type="text/css" rel="stylesheet" href="./resources/css/common.css">
	<link type="text/css" rel="stylesheet" href="./resources/css/user/profileSelectForm.css">
</head>
<body>

	<img alt="" src="./resources/image/icon.png">
	
	<div id="selectForm">
	
		<h2>취업의 신 가입을 환영합니다!</h2>
		<h5 style="color: #888888">
			활동하면서 보여질 프로필을 선택해 주세요!<br>
			이미지를 선택하지 않고 설정하기 버튼을 누를 경우 기본 이미지로 설정됩니다.
		</h5>
		<h3>프로필 선택</h3>
		<img alt="" src="./resources/image/defaultProfile.png" id="profile">
		<button id="btn" onclick="clickBtn()">이미지 선택</button>
		
		<form action="updateProfile" method="post" enctype="multipart/form-data">
			<input type="submit" value="설정하기" id="submit">
			<input type="file" value="" accept="image/*" id="input" style="display: none" name="profileImg">
		</form>
	
	</div>
	<hr>
	<img alt="" src="./resources/image/bg_profile_selectForm.png" id="bgimg">
	
	<script type="text/javascript">
		
		function clickBtn() {
			document.getElementById('input').click();
			document.getElementById('input').addEventListener('change', function() {
	            var profileImage = document.getElementById('profile');

	            if (this.files && this.files[0]) {
	                var reader = new FileReader();

	                reader.onload = function (e) {
	                	profileImage.src = e.target.result;
	                };

	                reader.readAsDataURL(this.files[0]);
	            }
	        });
		}
	
	</script>

</body>
</html>