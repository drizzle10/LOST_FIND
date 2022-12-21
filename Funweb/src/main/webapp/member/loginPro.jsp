<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String pass = request.getParameter("pass");

MemberDTO member = new MemberDTO();
member.setId(id);
member.setPass(pass);

MemberDAO dao = new MemberDAO();
boolean isLoginSuccess = dao.loginMember(member);

if(isLoginSuccess) { 
	session.setAttribute("sId", id);
	response.sendRedirect("../main/main.jsp");
} else {
	%>
	<script>
		alert("로그인 실패!");
		history.back();
	</script>
	<%
}
%>

















 

