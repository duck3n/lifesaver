<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="kr.co.lifesaver.support.service.impl.SupportServiceImpl"%>
<%@page import="kr.co.lifesaver.support.service.SupportVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/donation.css" type="text/css" />
<link rel="stylesheet" href="css/lifeSaver.css" type="text/css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>

<script>
	$(document).ready(function move() {
		var elem = document.getElementById("myBar");
		var width = 1;
		var id = setInterval(frame, 10);
		function frame() {
			if (width >= 99.9) {
				clearInterval(id);
			} else {
				width++;
				elem.style.width = width + '%';
			}
		}
	});
</script>

<style>
.falis {
	margin-top: 950px;
	margin-right: -800px;
}

.balis {
	background-image: url("../image/chd.jpg");
	height: 300px;
	width: 1920px;
}

.topsi {
	height: 75px;
}
</style>
</head>

    <!-- Wrapper -->

    <body class="is-preload" id="lawPage" style="padding-top: 7%;margin-top: 5%;">
        <!-- NAVIGATION -->
        <nav class="navbar-fixed-top" id="navigation">
            <div class="headernavibar01">
                <div class="headernavbar02">
                    <div class="phone">
                        <a href=""><img src='<c:url value="/img/phone.png"></c:url>' alt=""><span style="font-family: 'Roboto', sans-serif; font-size:12px; color:white;">080-8282-1253</span></a>

                    </div>
                    <ul class="nav__menu">

                        <li><a href="">세이버소개</a></li>
                        <li>
                            <img src='<c:url value="/img/sideBar.png"></c:url>' alt="">
                        </li>
                        <li><a href="">로그인</a></li>
                        <li>
                            <img src='<c:url value="/img/sideBar.png"></c:url>' alt="">
                        </li>
                        <li><a href="">회원가입</a></li>
                        <li>
                            <img src='<c:url value="/img/sideBar.png"></c:url>' alt="">
                        </li>
                        <li><a href="">ENG</a></li>
                    </ul>
                </div>
            </div>
            <div class="container">
                <div class="row" style="height: 50px;">
                    <div class="col-md-12 center">
                        <!-- LOGO -->
                       <a class="brand pull-left" href="/lifesaver">
                           <img src='<c:url value="/img/logo_re.png"/>' id="logo_mobile" alt="LifeSaver">
                        </a>
                        <!-- END LOGO -->

                      
</div></div></div></nav>

	<div class="top">
		<%-- 		<jsp:include page="../etc/sf_nav.jsp" ></jsp:include>
 --%>
	</div>
<!-- <div class="topsi"></div>-->
<!-- <div class="balis"></div> -->
	<div class="alis">
		<%-- <%@include file="DoHeader.jsp" %>
 --%>
		<div class="w3-container">
			<h2>4. 결제내역 확인 단계::</h2>
			<div class="w3-light-grey" style="border: 1px solid;">
				<div id="myBar" class="w3-green" style="height: 24px; width: 0">
					100%</div>
			</div>
		</div>
		<br>


		<div id="text">
			<form method="post" action="done_main.jsp">
				<!--form action="mod_2.jsp">  -->
				<table class="corporation_table">
					<!-- ****************************************************************************************************************************** -->
					<h3>&nbsp;&nbsp;&nbsp;결제내역 최종 확인 단계</h3>

					<tr class="pont_L">
						<th class="pont_L"><span>법인체 명 </span></th>
						<td><span><input type="text" title="법인체 명"
								class="pont_L" id="cr_name" name="cr_name" placeholder=" 법인체 명"
								size="40" value="${name }"></span></td>
					</tr>
					<!-- ****************************************************************************************************************************** -->
					<tr class="f_row">
						<th class="f_c_row"><span>법인등록번호</span> <!--법인 등록번호 13자리 | 사업자 등록번호 10자리 -->
						</th>
						<td><span> <input type="text" title="법인 등록번호"
								class="pont_L" id="cr_number" name="cr_number"
								placeholder="  13자리 '-'제외 " size="40" value="${number }">
								<!-- <input type="button" id="cr_number" name="cr_number" value=" 법인 등록번호가 기억이 안나요." size="50"  onclick="javascript:openWin()"> -->
						</span></td>
					</tr>
					<!-- ****************************************************************************************************************************** -->

					<tr>
						<th class="f_c_row"><span>담당자 명</span></th>
						<td><span><input type="text" title="법인체 담당자"
								class="pont_L" id="cr_man_name" name="cr_man_name"
								placeholder=" 법인체 담당자 " size="20" value="${man_name }"></span>
						</td>
					</tr>
					<!-- ****************************************************************************************************************************** -->
					<tr class="f_row">
						<th class="f_c_row"><span>담당자 번호</span></th>
						<td><span> <input type="text" title="담당자 번호"
								class="pont_L" id="cr_man_phone_number"
								name="cr_man_phone_number" placeholder="  -제외 11자 입력 " size="40"
								value="${man_phone_number }">
						</span></td>
					</tr>
					<!-- ****************************************************************************************************************************** -->
					<tr class="pont_L">
						<th class="pont_L"><span>후원 방법 </span></th>
						<td><input type="text" name="box" class="pont_L" id=""
							value="${box }" /></td>
					</tr>
					<!-- ****************************************************************************************************************************** -->
					<tr class="f_row">
						<th class="f_c_row"><span>후원 선택</span></th>
						<td><input type="text" name="box2" class="pont_L" id=""
							value="${box2 }" /></td>
					</tr>
					<!-- ****************************************************************************************************************************** -->
					<tr class="f_c_row">
						<th class="f_c_row"><span>후원금액</span></th>
						<td><span> <input type="text" title="후원금액"
								class="pont_L" id="price" name="price"
								placeholder=" 금액을 입력해 주세요." size="50" value="${price }">
						</span></td>
					</tr>




				</table>
				<br>
				<br>
				<br>
				<h4 align="center">
					후원해주셔서 감사합니다. <br> 결제 내역이 다르다면, 문의해주시길 바랍니다.
				</h4>
		 	<a href="/lifesaver/"><input type="button" value="메인 화면으로" style="border: 1px solid;margin: 1%;" size="50" maxlength="30" ></a></form>
			
		<hr>


	</div>
	<!-- <div class="falis"></div> -->
	<div class="footer">
		<%--  <jsp:include page="../etc/project_footer.jsp" ></jsp:include>
 --%>
	</div>
	
            <!-- PAGE | footer start -->
            <footer id="lifesaver_footer">
                <div class="lifesaver_footer_container">
                    <div class="lifesaver_footer_text_row">
                        <div class="lifesaver_footer_text">
                            <ul class="lifesaver_footer_textCol">
                                <strong>
                                <li><a href="#">이용약관</a></li>
                                <li><a href="#">개인정보처리방침</a></li>
                                <li><a href="#">환자의 권리와 의무</a></li>
                                <li><a href="#">책임의 한계와 법적 고지</a></li>
                            </strong>

                            </ul>
                            <address>

                            <a href="#"><strong><img src='<c:url value="/img/footer_logo.png"></c:url>' alt=""></strong></a>
                            
                            <!-- <img src="/img/footerLogo01.png" alt="">
                        <img src="/img/footerLogo02.png" alt="">
                        <img src="/img/footerLogo03.png" alt="">-->
                            <p>Copyright LifeSaver corp.©All Rights Reserved.</p>
                        </address>
                        </div>
                    </div>
                </div>
            </footer>
           <!-- PAGE | footer end  -->




</body>
</html>