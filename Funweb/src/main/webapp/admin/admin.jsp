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
	<div id="wrap">
		<jsp:include page="../inc/top.jsp"></jsp:include>
			<h3 style="color: silver; font-size: 40px; padding-top: 60px; text-align: center;">회원관리</h3>		
		<div id="memberList">
			<table>
				<tr>
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
				
				ArrayList<MemberDTO> memberList = dao.selectMemberList();
				
				for(MemberDTO member : memberList) {
					%>
					<tr>
						<td><%=member.getId() %></td>
						<td><%=member.getPass() %></td>
						<td><%=member.getName() %></td>
						<td><%=member.getEmail() %></td>
						<td><%=member.getPost_code() %></td>
						<td><%=member.getAddress1() %></td>
						<td><%=member.getAddress2() %></td>
						<td><%=member.getPhone() %></td>
						<td><%=member.getMobile() %></td>
						<td><%=member.getDate() %></td>
					</tr>
				<%
				}
				%>
			</table>
		</div>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>


