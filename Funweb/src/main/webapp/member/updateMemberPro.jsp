<%@page import="member.MemberDTO"%>
<%@page import="member.MemberDAO"%>
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pass = request.getParameter("pass");
String name = request.getParameter("name");
String email = request.getParameter("email");
String post_code = request.getParameter("post_code");
String address1 = request.getParameter("address1");
String address2 = request.getParameter("address2");
String phone = request.getParameter("phone");
String mobile = request.getParameter("mobile");

MemberDAO dao = new MemberDAO();

MemberDTO member = new MemberDTO();
member.setPass(pass);
member.setName(name);
member.setEmail(email);
member.setPost_code(post_code);
member.setAddress1(address1);
member.setAddress2(address2);
member.setPhone(phone);
member.setMobile(mobile);
member.setId(id);

int updateMemberCount = dao.updateMember(member);

if(updateMemberCount > 0){%>
	<script>
		alert("정보수정이 완료되었습니다");
		location.href="myPage.jsp";
	</script>
<% } else {%>
	<script>
		alert("정보 수정 실패");
		history.back();
	</script>
<%} %>