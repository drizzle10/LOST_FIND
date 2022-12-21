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

		<nav id="sub_menu">
			<ul>
				<li><a href="lostDeclare.jsp">유실물이란</a></li>
				<li><a href="lostProcedures.jsp">유실물 신고 및 처리절차</a></li>
				<li><a href="lostLaw.jsp">유실물 관련 법령</a></li>
				<li><a href="lostCenter_list.jsp">전국 유실물 센터</a></li>
			</ul>
		</nav>
		<article>
<!-- 			<h1>유실물 관련 법령</h1> -->
			<div class="lostLaw">
				<select onchange="if(this.value) location.href=(this.value);">
					<optgroup label="관련 법 조항">
						<option value="lostLaw.jsp">유실물법</option>
						<option value="lostLaw2.jsp">유실물법 시행령</option>
						<option value="lostLaw3.jsp">자동차 관리법</option>
						<option value="lostLaw4.jsp">자동차 관리법 시행령</option>
						<option value="lostLaw5.jsp">도로법</option>
						<option value="lostLaw6.jsp">수상에서의 수색, 구조 등에 관한 법</option>
						<option value="lostLaw7.jsp">동물보호법</option>
					</optgroup>
				</select>
			</div>
			<h2>자동차관리법시행령</h2>
			<hr>
			<div>
				<h3>제6조(자동차의 강제처리)</h3>
				<ol>
				  <li>①  특별자치도지사·시장·군수 또는 구청장(구청장은 자치구의 구청장을 말한다. 이하 "시장·군수 또는 구청장"이라 한다)은 자동차에 대하여 법 제26조제2항에 따른 처분등 또는 명령을 하고자 하는 때에는 해당 자동차가 법 제26조제1항 각 호의 어느 하나에 해당하는 자동차(이하 "방치자동차"라 한다)임을 확인하여야 한다. 이 경우 방치자동차인지 여부는 해당 자동차의 상태, 발견장소, 방치기간, 인근주민의 진술 또는 신고내용 기타 제반정황을 종합하여 판단하여야 한다.  &lt;개정 1999.7.29., 2009.3.27.&gt;</li>
				  <li>② 시장·군수 또는 구청장은 법 제26조제3항의 규정에 의하여 방치자동차를 폐차 또는 매각하고자 하는 때에는 그 뜻을 자동차등록원부에 기재된 소유자와 이해관계인 또는 점유자에게 서면으로 통지하여야 한다. 다만, 자동차의 소유자 또는 점유자를 알 수 없는 경우에는 7일이상 공고하여야 한다. &lt;개정 1999.7.29., 2009.3.27.&gt;</li>
				  <li>③ 시장·군수 또는 구청장이 법 제26조제3항의 규정에 의하여 방치자동차를 폐차 또는 매각할 수 있는 시기는 다음 각호와 같다. <br/>&lt;개정 1999.7.29., 2001.3.17.&gt;</li>
			        <ul>
				       <li>1. 제2항의 규정에 의한 통지를 한 경우에는 통지를 한 날부터 20일이 경과한 때 </li>
				       <li>2. 당해 방치자동차의 소유자 또는 점유자를 알 수 없는 경우에는 제2항의 규정에 의한 공고기간이 만료된 때</li>
				       <li>3. 방치자동차의 소유자·점유자 및 이해관계인이 그 권리를 포기한다는 의사표시를 한 경우에는 의사표시가 있는 때</li>
			        </ul>
				  <li> ④ 시장·군수 또는 구청장은 방치자동차중 다음 각호의 1에 해당하는 자동차는 이를 폐차할 수 있다. &lt;개정 1999.7.29.&gt;</li>		  
			        <ul>
				       <li> 1. 자동차등록원부에 등록되어 있지 아니한 자동차(법 제27조의 규정에 의하여 임시운행허가를 받은 자동차는 등록된 자동차로 본다 </li>
				       <li> 2. 장소의 이전이나 견인이 곤란한 상태의 자동차 </li>
				       <li> 3. 구조·장치의 대부분이 분해·파손되어 정비·수리가 곤란한 자동차 </li>
				       <li> 4. 매각비용의 과다등으로 인하여 특히 폐차할 필요가 있는 자동차 </li>		  
			        </ul>
				  <li> ⑤ 시장·군수 또는 구청장은 등록된 자동차를 제4항에 따라 폐차한 때에는 지체없이 그 등록을 한 시·도지사에게 해당폐차사실을 통보하여야 한다. &lt;개정 1999.7.29., 2009.3.27., 2011.11.25.&gt;</li>
				  <li> ⑥ 시·도지사는 제5항에 따라 폐차사실을 통보받은 때에는 지체없이 법 제13조제3항제4호에 따라 해당 자동차의 등록을 말소하여야 한다. <br/>&lt;개정 1999.7.29., 2016.1.6.&gt;</li>
				  <li> ⑦ 삭제  &lt;1999.7.29.&gt; </li>
				</ol>
			</div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>


