<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOST & FIND</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrap">
		<jsp:include page="../inc/top.jsp" />
		  <nav id="sub_menu">
		  	<ul>
		  		<li><a href="join.jsp">회원가입</a></li>
		  		<li><a href="login.jsp">로그인</a></li>
		  	</ul>
		  </nav>
		  <article>
<!-- 		  	<h1>로그인</h1> -->
		  	<form action="loginPro.jsp" method="post" id="join">
		  		<fieldset>
<!-- 		  			<legend>로그인 정보</legend> -->
		  			<label>아이디</label>
		  			<input type="text" name="id" required="required" style="width: 350px;"><br>
		  			
		  			<label>패스워드</label>
		  			<input type="password" name="pass" required="required" style="width: 350px;"><br>
		  		</fieldset>
		
		  		<div class="clear"></div>
		  		<div id="buttons">
		  			<input type="submit" style="cursor:pointer" value="로그인" class="submit">
		  			<input type="reset" style="cursor:pointer" value="취소" class="cancel" onclick="location.href='../main/main.jsp'">
		  		</div>
		  	</form>
		  </article>
		<div class="clear"></div>  
		<jsp:include page="../inc/bottom.jsp" />
	</div>
</body>
</html>


