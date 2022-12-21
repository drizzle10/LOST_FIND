<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOST & FIND</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function checkId() {
		window.open("check_id.jsp", "ID중복확인", "width=400, height=200");
	}
	var isSamePass = false; 
	
	function checkForm() {
		if(document.fr.id.value == "") { 
			alert("아이디 입력 필수!");
			document.fr.id.focus();
			return false;
		} else if(!isSamePass) {
			alert("패스워드가 일치하지 않습니다!");
			document.fr.pass.select();
			return false;
		}
		return true;
	}
	
	function checkRetypePassword() {
		var pass = document.fr.pass.value;
		var pass2 = document.fr.pass2.value;
		
		if(pass == pass2) { 
			document.getElementById("retypePasswordResult").innerHTML = "패스워드 일치";
			document.getElementById("retypePasswordResult").style.color = "GREEN";
			
			isSamePass = true;
		} else {
			document.getElementById("retypePasswordResult").innerHTML = "패스워드 불일치";
			document.getElementById("retypePasswordResult").style.color = "RED";
			
			isSamePass = false;
		}
	}
	
</script>
<!-- 다음 주소 API 사용을 위한 코드 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                document.getElementById('post_code').value = data.zonecode; // 우편번호
                document.getElementById("address1").value = data.roadAddress; // 주소(도로명 주소)
                
				document.getElementById("address2").focus();                
            }
        }).open();
    }
</script>
<!-- ============================== -->
</head>
<body>
	<div id="wrap">
		<jsp:include page="../inc/top.jsp"></jsp:include>
		  <nav id="sub_menu">
		  	<ul>
		  		<li><a href="join.jsp">회원가입</a></li>
		  		<li><a href="login.jsp">로그인</a></li>
		  	</ul>
		  </nav>
		  <article>
<!-- 		  	<h1>Join Us</h1> -->
		  	<form action="joinPro.jsp" method="post" id="join" name="fr" onsubmit="return checkForm()">
		  		<fieldset>
<!-- 		  			<legend>Basic Info</legend> -->
		  			<label>아이디</label>
		  			<input type="text" name="id" class="id" id="id" placeholder="중복확인 클릭" required="required" readonly="readonly" style="width: 350px;">
		  			<input type="button" value="ID 중복확인" class="dup" id="btn" onclick="checkId()" style="cursor:pointer"><br>
		  			
		  			<label>패스워드</label>
		  			<input type="password" name="pass" id="pass" required="required"
		  					onchange="checkRetypePassword()" style="width: 350px;"><br> 			
		  			
		  			<label>패스워드 재입력</label>
		  			<input type="password" name="pass2" required="required" 
		  					onkeyup="checkRetypePassword()" style="width: 350px;">
		  			<span id="retypePasswordResult"></span><br>
		  			
		  			<label>이름</label>
		  			<input type="text" name="name" id="name" required="required" style="width: 350px;"><br>
		  			
		  			<label>이메일</label>
		  			<input type="email" name="email" id="email" required="required" style="width: 350px;"><br>
		  		</fieldset>
		  		<fieldset>
<!-- 		  			<legend>Optional</legend> -->
		  			<label>우편번호</label>
		  			<input type="text" name="post_code" id="post_code" placeholder="우편번호" style="width: 350px;">
		  			<input type="button" value="주소검색" onclick="execDaumPostcode()" class="dup"  id="btn" style="cursor:pointer"><br>
		  			<label>주소</label>
		  			<input type="text" name="address1" id="address1" placeholder="주소">
					<input type="text" name="address2" id="address2" placeholder="상세주소"><br>
		  			<label>전화번호</label>
		  			<input type="text" name="phone" style="width: 350px;"><br>
		  			<label>휴대전화번호</label>
		  			<input type="text" name="mobile" style="width: 350px;"><br>
		  		</fieldset>
		  		<div class="clear"></div>
		  		<div id="buttons">
		  			<input type="submit" value="Submit" style="cursor:pointer" class="submit">
		  			<input type="reset" value="Cancel" style="cursor:pointer" class="cancel">
		  		</div>
		  	</form>
		  </article>
		<div class="clear"></div>  
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>


