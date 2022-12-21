<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style type="text/css">
.dropmenu{
width: 100%;
border:none;
border:0px;
margin:0px;
padding-top:20px;
font: "sans-serif";
font-size:18px;
}

.dropmenu ul{
background: white;
color: silver;
height:100px;
list-style:none;
margin:0;
padding:0;
}

.dropmenu li{
float:left;
padding:0px;
}

.dropmenu li a{
background: white;
width: 180px;
color: silver;
display:block;
line-height:100px;
margin:0px 20px;
padding:0px 10px;
text-align:center;
text-decoration:none;
}

.dropmenu li a:hover, .dropmenu ul li:hover a{
/* background: silver; */
color:#FFFFFF;
text-decoration:none;
}

.dropmenu li ul{
background: #EAEAEA;
display:none; 
height:auto;
border:0px;
position:absolute;
width:200px;
z-index:200;
margin: 0 20px;
padding: 0;
/*top:1em;
/*left:0;*/
}

.dropmenu li:hover ul{
display:block;
}

.dropmenu li li {
background: #EAEAEA;
display:block;
float:none;
margin:0px;
padding:0px;
width:200px;
}

.dropmenu li:hover li a{
background:none;
}

.dropmenu li ul a{
display:block;
height:80px;
font-size:14px;
margin:0px;
padding:0px 10px 0px 15px;
text-align:left;
}

.dropmenu li ul a:hover, .dropmenu li ul li:hover a{
background: rgb(171,171,171);
border:0px;
color:#ffffff;
text-decoration:none;
}

.dropmenu p{
clear:left;
}

#current:hover{
	color: gray;
}

<%
String id = (String)session.getAttribute("sId");
%> 
</style>
<script>
	function confirm_logout() {
		var result = confirm("로그아웃 하시겠습니까?");
		
		if(result){
			location.href="../member/logout.jsp";
		}
	}
</script>  
<header>
  <div id="login">
  	<%if(id == null) {	%>
  		<a href="../member/login.jsp">LOGIN</a> | <a href="../member/join.jsp">JOIN</a>
  	<%} else {%>
  		<%=id %> 님 | <a href="javascript:confirm_logout()">LOGOUT</a> | <a href="../member/myPage.jsp">MYPAGE</a> |
  		<%if(id.equals("admin")) {%>
  			<a href="../admin/admin.jsp">ADIMN</a>
  		<% }%>
  	<%} %>
  </div>
  <div class="clear"></div>
  <div>
  	<img id="logo" src="../images/logo.png" style="cursor:pointer" onclick="location.href='../main/main.jsp'">
  </div>
  <div class="dropmenu">
  	<ul>
 		<li><a href="" id="current">종합 안내</a>
  			<ul>
    			<li><a href="../lostInfo/lostDeclare.jsp">유실물이란?</a></li>
     			<li><a href="../lostInfo/lostProcedures.jsp">유실물 신고 및 처리절차</a></li>
     			<li><a href="../lostInfo/lostLaw.jsp">유실물 관련 법령</a></li>
     			<li><a href="../lostInfo/lostCenter_list.jsp">유실물 센터</a></li>
   		 	</ul>
 		</li>
 		<li><a href="#" id="current">게시판</a>
 			<ul>
    			<li><a href="../center/notice.jsp">공지사항</a></li>
   				<li><a href="../center/findLost.jsp">분실물을 찾아요!</a></li>
   				<li><a href="../center/findOwner.jsp">주인을 찾아요!</a></li>
  			</ul>
 		</li>
 		<li><a href="#" id="current">커뮤니티</a>
 			<ul>
    			<li><a href="../community/community.jsp">실시간 소통</a></li>
  			</ul>
 		</li>
 		<li><a href="#" id="current">고객센터</a>
 			<ul>
    			<li><a href="../lostQna/question.jsp">자주 묻는 질문</a></li>
  			</ul>
 		</li>
	</ul>
</div>
</header>