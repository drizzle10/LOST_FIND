<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = (String)session.getAttribute("sId");

MemberDAO dao = new MemberDAO();

int deleteMemberCount = dao.deleteMember(id);

if(deleteMemberCount > 0){
%>
	<script>
		alert("회원탈퇴 성공하였습니다");
		<%
		response.sendRedirect("../main/main.jsp");
		session.invalidate();
		%>
	</script>
<%}else {%>
	<script>
		alert("회원탈퇴 실패하였습니다");
		history.back();
	</script>
<%} %>