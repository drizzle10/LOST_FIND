<%@page import="member.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="member.MemberDAO"%>
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
<%
String id = (String)session.getAttribute("sId");
%>
	<div id="wrap">
		<jsp:include page="../inc/top.jsp"></jsp:include>
			<h3 style="color: silver; font-size: 40px; padding-top: 60px; text-align: center;">나의 정보</h3>		
			<div id="myPage">
			<form action="updateMemberPro.jsp" method="post">
				<input type="hidden" name="id" value="<%=id%>">
				<table>
					<tr style="width: 20px">
						<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
						<th>이메일</th>
						<th>우편번호</th>
						<th>기본주소</th>
						<th>상세주소</th>
						<th>전화번호</th>
						<th>휴대 전화번호</th>
						<th>가입일자</th>
					</tr>
					<% 
					MemberDAO dao = new MemberDAO();
					
					ArrayList<MemberDTO> myPage = dao.selectMyPage(id);
					
					for(MemberDTO member : myPage) {
						%>
						<tr>
							<td><%=member.getId() %></td>
							<td><input type="text" name="pass" value="<%=member.getPass() %>"></td>
							<td><input type="text" name="name" value="<%=member.getName() %>"></td>
							<td><input type="text" name="email" value="<%=member.getEmail() %>"></td>
							<td><input type="text" name="post_code" value="<%=member.getPost_code() %>"></td>
							<td><input type="text" name="address1" value="<%=member.getAddress1() %>"></td>
							<td><input type="text" name="address2" value="<%=member.getAddress2() %>"></td>
							<td><input type="text" name="phone" value="<%=member.getPhone() %>"></td>
							<td><input type="text" name="mobile" value="<%=member.getMobile() %>"></td>
							<td><%=member.getDate() %></td>
						</tr>
					<%
					}
					%>
				</table>
				<br>
					<input type="submit" value="정보수정" style="cursor:pointer">
			</form>
			<br>
			</div>	
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>


