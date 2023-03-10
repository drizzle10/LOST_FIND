<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOST & FOUND</title>
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
			<h2>유실물법</h2>
			<p>[시행 2014.1.7.] [법률 제12210호, 2014.1.7. 일부개정]<p>
			<hr>
			<div>
				<h3>제1조 (습득물의 조치)</h3>
				<ol>
				  <li>① 타인이 유실한 물건을 습득한 자는 이를 신속하게 유실자 또는 소유자, 그 밖에 물건회복의 청구권을 가진 자에게 반환하거나 경찰서(지구대·파출소 등 소속 경찰관서를 포함한다. 이하 같다) 또는 제주특별자치도의 자치경찰단 사무소(이하 "자치경찰단"이라 한다)에 제출하여야 한다. 다만, 법률에 따라 소유 또는 소지가 금지되거나 범행에 사용되었다고 인정되는 물건은 신속하게 경찰서 또는 자치경찰단에 제출하여야 한다.</li>
				  <li>② 물건을 경찰서에 제출한 경우에는 경찰서장이, 자치경찰단에 제출한 경우에는 제주특별자치도지사가 물건을 반환받을 자에게 반환하여야 한다. 이 경우에 반환을 받을 자의 성명이나 주거를 알 수 없을 때에는 대통령령으로 정하는 바에 따라 공고하여야 한다.[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제1조의2(유실물 정보 통합관리 등 시책의 수립)</h3>
				<ol>
				  <li>국가는 유실물의 반환이 쉽게 이루어질 수 있도록 유실물 정보를 통합관리하는 등 관련 시책을 수립하여야 한다.[본조신설 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제2조 (보관방법)</h3>
				<ol>
				  <li>① 경찰서장 또는 자치경찰단을 설치한 제주특별자치도지사는 보관한 물건이 멸실되거나 훼손될 우려가 있을 때 또는 보관에 과다한 비용이나 불편이 수반될 때에는 대통령령으로 정하는 방법으로 이를 매각할 수 있다.</li>
				  <li>② 매각에 드는 비용은 매각대금에서 충당한다.</li>
				  <li>③ 매각 비용을 공제한 매각대금의 남은 금액은 습득물로 간주하여 보관한다.[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제3조 (비용 부담)</h3>
				<ol>
				  <li>습득물의 보관비, 공고비(公告費), 그 밖에 필요한 비용은 물건을 반환받는 자나 물건의 소유권을 취득하여 이를 인도(引渡)받는 자가 부담하되, 「민법」 제321조부터 제328조까지의 규정을 적용한다.[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제4조 (보상금)</h3>
				<ol>
				  <li>물건을 반환받는 자는 물건가액(物件價額)의 100분의 5 이상 100분의 20 이하의 범위에서 보상금(報償金)을 습득자에게 지급하여야 한다. 다만, 국가·지방자치단체와 그 밖에 대통령령으로 정하는 공공기관은 보상금을 청구할 수 없다.[전문개정 2011.5.30]</li>
				</ol>
				<hr>
				
				<h3>제5조 (매각한 물건의 가액)</h3>
				<ol>
				  <li>제2조에 따라 매각한 물건의 가액은 매각대금을 그 물건의 가액으로 한다.[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제6조 (비용 및 보상금의 청구기한)</h3>
				<ol>
				  <li>제3조의 비용과 제4조의 보상금은 물건을 반환한 후 1개월이 지나면 청구할 수 없다.[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제7조 (습득자의 권리포기)</h3>
				<ol>
				  <li>습득자는 미리 신고하여 습득물에 관한 모든 권리를 포기하고 의무를 지지 아니할 수 있다.[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제8조 (유실자의 권리 포기)</h3>
				<ol>
				  <li>① 물건을 반환받을 자는 그 권리를 포기하고 제3조의 비용과 제4조의 보상금 지급의 의무를 지지 아니할 수 있다.</li>
				  <li>② 물건을 반환받을 각 권리자가 그 권리를 포기한 경우에는 습득자가 그 물건의 소유권을 취득한다. 다만, 습득자는 그 취득권을 포기하고 제1항의 예에 따를 수 있다.</li>
				  <li>③ 법률에 따라 소유 또는 소지가 금지된 물건의 습득자는 소유권을 취득할 수 없다. 다만, 행정기관의 허가 또는 적법한 처분에 따라 그 소유 또는 소지가 예외적으로 허용되는 물건의 경우에는 그 습득자나 그 밖의 청구권자는 제14조에 따른 기간 내에 허가 또는 적법한 처분을 받아 소유하거나 소지할 수 있다.[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제9조 (습득자의 권리 상실)</h3>
				<ol>
				  <li>습득물이나 그 밖에 이 법의 규정을 준용하는 물건을 횡령함으로써 처벌을 받은 자 및 습득일부터 7일 이내에 제1조제1항 또는 제11조제1항의 절차를 밟지 아니한 자는 제3조의 비용과 제4조의 보상금을 받을 권리 및 습득물의 소유권을 취득할 권리를 상실한다.[전문개정 2011.5.30]</li>
				</ol>
				<hr>
				
				<h3>제10조 (선박, 차량, 건축물 등에서의 습득)</h3>
				<ol>
				  <li>① 관리자가 있는 선박, 차량, 건축물, 그 밖에 일반인의 통행을 금지한 구내에서 타인의 물건을 습득한 자는 그 물건을 관리자에게 인계하여야 한다</li>
				  <li>② 제1항의 경우에는 선박, 차량, 건축물 등의 점유자를 습득자로 한다. 자기가 관리하는 장소에서 타인의 물건을 습득한 경우에도 또한 같다.</li>
				  <li>③ 이 조의 경우에 보상금은 제2항의 점유자와 실제로 물건을 습득한 자가 반씩 나누어야 한다.</li>
				  <li>④ 「민법」 제253조에 따라 소유권을 취득하는 경우에는 제2항에 따른 습득자와 제1항에 따른 사실상의 습득자는 반씩 나누어 그 소유권을 취득한다. 이 경우 습득물은 제2항에 따른 습득자에게 인도한다.[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제11조 (장물의 습득)</h3>
				<ol>
				  <li>① 범죄자가 놓고간 것으로 인정되는 물건을 습득한 자는 신속히 그 물건을 경찰서에 제출하여야 한다.</li>
				  <li>② 제1항의 물건에 관하여는 법률에서 정하는 바에 따라 몰수할 것을 제외하고는 이 법 및 「민법」 제253조를 준용한다. 다만, 공소권이 소멸되는 날부터 6개월간 환부(還付)받는 자가 없을 때에만 습득자가 그 소유권을 취득한다.&lt;개정 2014.1.7.&gt;</li>
				  <li>③ 범죄수사상 필요할 때에는 경찰서장은 공소권이 소멸되는 날까지 공고를 하지 아니할 수 있다.</li>
				  <li>④ 경찰서장은 제1항에 따라 제출된 습득물이 장물(贓物)이 아니라고 판단되는 상당한 이유가 있고, 재산적 가치가 없거나 타인이 버린 것이 분명하다고 인정될 때에는 이를 습득자에게 반환할 수 있다.[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제11조의2 제11조의2 삭제  &lt;1999.3.31.&gt;</h3>
				<hr>
				
				<h3>제12조 (준유실물)</h3>
				<ol>
				  <li>착오로 점유한 물건, 타인이 놓고 간 물건이나 일실(逸失)한 가축에 관하여는 이 법 및 「민법」 제253조를 준용한다. 다만, 착오로 점유한 물건에 대하여는 제3조의 비용과 제4조의 보상금을 청구할 수 없다.[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제13조 (매장물)</h3>
				<ol>
				  <li>① 매장물(埋藏物)에 관하여는 제10조를 제외하고는 이 법을 준용한다.</li>
				  <li>② 매장물이 「민법」 제255조에서 정하는 물건인 경우 국가는 매장물을 발견한 자와 매장물이 발견된 토지의 소유자에게 통지하여 그 가액에 상당한 금액을 반으로 나누어 국고(國庫)에서 각자에게 지급하여야 한다. 다만, 매장물을 발견한 자와 매장물이 발견된 토지의 소유자가 같을 때에는 그 전액을 지급하여야 한다.</li>
				  <li>③ 제2항의 금액에 불복하는 자는 그 통지를 받은 날부터 6개월 이내에 민사소송을 제기할 수 있다.[전문개정 2011.5.30]</li>
				</ol>
				<hr>
				
				<h3>제14조(수취하지 아니한 물건의 소유권 상실)</h3>
				<ol>
				  <li>이 법 및 「민법」 제253조, 제254조에 따라 물건의 소유권을 취득한 자가 그 취득한 날부터 3개월 이내에 물건을 경찰서 또는 자치경찰단으로부터 받아가지 아니할 때에는 그 소유권을 상실한다.  &lt;개정 2014.1.7.&gt;[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제15조 (수취인이 없는 물건의 귀속)</h3>
				<ol>
				  <li>이 법의 규정에 따라 경찰서 또는 자치경찰단이 보관한 물건으로서 교부받을 자가 없는 경우에는 그 소유권은 국고 또는 제주특별자치도의 금고에 귀속한다.[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>제16조 (인터넷을 통한 유실물 정보 제공)</h3>
				<ol>
				  <li>경찰청장은 경찰서장 및 자치경찰단장이 관리하고 있는 유실물에 관한 정보를 인터넷 홈페이지 등을 통하여 국민에게 제공하여야 한다.[전문개정 2011.5.30.]</li>
				</ol>
				<hr>
				
				<h3>부칙 &lt;법률 제717호, 1961.9.18.&gt;</h3>
				<ol>
				  <li>① 본법은 공포 후 90일을 경과한 날로부터 시행한다.</li>
				  <li>② 본법 시행당시의 유실물에 관하여는 종전의 법령을 적용한다.</li>
				  <li>③ 단기4245년 제령 제23호 유실물기타의물건에관한건과 단기 4245년 조선총독부령 제97호 유실물기타물건에관한제령시행에관한건은 이를 폐지한다.</li>	  
				</ol>
				<hr>
				
				<h3>부칙 &lt;법률 제4876호, 1995.1.5.&gt;</h3>
				<ul>
				  <li> 이 법은 공포한 날부터 시행한다.</li>
				</ul>
				<hr>
				
				<h3>부칙 &lt;법률 제5935호, 1999.3.31.&gt;</h3>
				<ul>
				  <li> 이 법은 공포한 날부터 시행한다.</li>
				</ul>
				<hr>
				
				<h3>부칙 [법률 제7247호, 2004.12.23] (경찰법)</h3>
				<ul>
				  <li>제1조 (시행일) 이 법은 공포한 날부터 시행한다.</li>
				</ul>
				<ul>
				  <li>제2조 (다른 법률의 개정)</li>
				</ul>
				<ol>
				  <li>① 생략</li>
				  <li>② 유실물법중 다음과 같이 개정한다.<br />
					제1조제1항 본문중 "지서"를 "지구대"로 한다. </li>
				  <li>③ 및 ④생략</li>
				</ol>
				<hr>
				
				<h3>부칙 &lt;법률 제7849호, 2006.2.21.&gt;  (제주특별자치도 설치 및 국제자유도시 조성을 위한 특별법)</h3>
				<ul>
				  <li>제1조 (시행일) 이 법은 2006년 7월 1일부터 시행한다.  &lt;단서 생략&gt;</li>
				</ul>
				<ul>
				  <li>제2조 내지 제39조 생략</li>
				</ul>	
				<ul>
				  <li>제40조 (다른 법령의 개정)</li>
				</ul>
				<ol>
				  <li>① 내지 &lt;21&gt;생략<br/>&lt;22&gt;유실물법 일부를 다음과 같이 개정한다.제1조제1항 본문 중 "경찰서(지구대, 파출소, 출장소를 포함한다. 이하같다)"를 "경찰서(지구대, 파출소, 출장소를 포함한다. 이하 같다) 또는 제주특별자치도의 자치경찰단 사무소(이하 "자치경찰단"이라 한다)"로 하고, 동조제2항 전단 중 "경찰서장"을 "경찰서장은, 자치경찰단에 제출한 때에는 제주특별자치도지사"로 한다.제2조제1항 중 "경찰서장"을 "경찰서장 또는 자치경찰단을 설치한 제주특별자치도지사"로 한다.제14조 중 "경찰서"를 "경찰서 또는 자치경찰단"으로 한다.제15조 제목 중 "국고귀속"을 "귀속"으로 하고, 동조 중 "경찰서"를 "경찰서 또는 자치경찰단"으로, "국고"를 "국고 또는 제주특별자치도의 금고"로 한다.<br/>&lt;23&gt; 내지 &lt;47&gt;생략</li>
				</ol>
				<ul>
				  <li>제41조 생략</li>
				</ul>
				<hr>
				
				<h3>부칙 &lt;법률 제10747호, 2011.5.30.&gt;</h3>
				<ul>
				  <li> 이 법은 공포한 날부터 시행한다.</li>
				</ul>
				<hr>
					
				<h3>부칙 &lt;법률 제12210호, 2014.1.7.&gt;</h3>
				<ul>
				  <li>제1조 (시행일) 이 법은 공포한 날부터 시행한다.</li>
				</ul>
				<ul>
				  <li>제2조(적용례) 제11조제2항 단서와 제14조의 개정규정은 이 법 시행 후 최초로 경찰서 또는 제주특별자치도의 자치경찰단 사무소에 제출되는 유실물분부터 적용한다. </li>
				</ul>	 		
			</div>
		</article>
		<div class="clear"></div>
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
	</div>
</body>
</html>


