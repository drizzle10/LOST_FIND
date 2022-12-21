<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
String id = request.getParameter("id");
boolean isDuplicate = Boolean.parseBoolean(request.getParameter("isDuplicate"));
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOST & FIND</title>
<script type="text/javascript">
	
	function getCheckId() {
		<%if(id != null) {%>
			document.fr.id.value = "<%=id%>"; 
		
			<%if(isDuplicate == true) {%>
				document.getElementById("checkIdResult").innerHTML = "이미 사용중인 아이디";
				document.getElementById("checkIdResult").style.color = "RED";
			<%} else {%>
				var btn = "<input type='button' value='아이디사용' onclick='useId()'>";
				document.getElementById("checkIdResult").innerHTML = "사용 가능한 아이디<br>" + btn;
				document.getElementById("checkIdResult").style.color = "GREEN";
			<%} %>
			
		<%} %>
	}
	
	function useId() {
		
		window.opener.document.fr.id.value = "<%=id%>"; 
		
		window.close(); 
	}
</script>
</head>
<body onload="getCheckId()">
	<h1>ID 중복체크</h1>
	<form action="check_idPro.jsp" name="fr">
		<input type="text" name="id" required="required">
		<input type="submit" value="중복확인" style="cursor:pointer"><br>
		<div id="checkIdResult"></div>
	</form>
</body>
</html>