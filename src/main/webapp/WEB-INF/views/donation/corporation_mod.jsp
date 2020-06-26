<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- META DATA -->
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/donation.css" type="text/css" />
<link rel="stylesheet" href="css/lifeSaver.css" type="text/css" />
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<script>
	$(document).ready(function move() {
		var elem = document.getElementById("myBar");
		var width = 1;
		var id = setInterval(frame, 10);
		function frame() {
			if (width >= 25) {
				clearInterval(id);
			} else {
				width++;
				elem.style.width = width + '%';
			}
		}
	});
	function openWin() {
		window.open("http://dart.fss.or.kr/", "네이버새창",
				"width=800, height=700, toolbar=no, menubar=no,resizable=yes");
	}
</script>
<script>
	// 유효성 검사
	$(document).ready(function() {
		$("#submit").click(function() {
			if ($("#cr_name").val().length == 0) {
				alert("법인체 명을 입력하세요.");
				$("#cr_name").focus();
				return false;
			}
			if ($("#cr_number").val().length == 0) {
				alert("법인등록번호를 입력하세요.");
				$("#cr_number").focus();
				return false;
			}
			if ($("#cr_number").val().length != 13) {
				alert("법인 등록번호는 '-제외' 13자리 입니다.");
				$("#cr_number").focus();
				return false;
			}
			if ($("#cr_man_name").val().length == 0) {
				alert("법인 담당자를 입력하세요.");
				$("#cr_man_name").focus();
				return false;
			}
			if ($("#cr_man_phone_number").val().length == 0) {
				alert("담당자 휴대폰번호를 입력하세요.");
				$("#cr_man_phone_number").focus();
				return false;
			}
			if ($("#cr_man_phone_number").val().length != 11) {
				alert("휴대폰 번호는 '-'제외  11자리입니다.'");
				$("#cr_man_phone_number").focus();
				return false;
			}
		});
	});
</script>


<link rel="shortcut icon" href="/images/ico/favicon.png">

    <!-- STYLESHEETS -->
    <link rel="stylesheet" href="/css/lifeSaver.css" type="text/css" />
    <link rel="stylesheet" href="/css/subPage.css" />

    <!-- GOOGLE WEB FONTS -->
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&family=Roboto:wght@700&display=swap" rel="stylesheet">


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

	<div class="topsi"></div>
	<div class="balis"></div>

	<div class="w3-container">
		<h2>1. 법인/단체 정보 입력단계 ::</h2>
		<div class="w3-light-grey" style="border: 1px solid;">
			<div id="myBar" class="w3-green" style="height: 24px; width: 0">
				25%</div>
		</div>
	</div>
	<br>
	<div id="text">
		<form action="/lifesaver/corporation_mod2" method="post">
			<!--form action="mod_2.jsp">  -->
			<table class="corporation_table">
				<!-- ****************************************************************************************************************************** -->
				<h3>&nbsp;&nbsp;&nbsp;법인/단체 정보 입력</h3>
				<tr class="pont_L">
					<th class="pont_L"><span>법인체 명 </span></th>
					<td><span> <input type="text" title="법인체 명"
							class="pont_L" id="cr_name" name="cr_name" placeholder=" 법인체 명"
							size="40" maxlength="20">
					</span></td>
				</tr>
				<!-- ****************************************************************************************************************************** -->
				<tr class="f_row">
					<th class="f_c_row"><span>법인등록번호</span> <!--법인 등록번호 13자리 | 사업자 등록번호 10자리 -->
					</th>
					<td><span> <input type="text" title="법인 등록번호"
							class="pont_L" id="cr_number" name="cr_number"
							placeholder="  13자리 '-'제외 " size="40" maxlength="20"> <input
							type="button" id="cr_number" name="cr_number"
							value=" 등록번호 조회 " size="50"
							onclick="javascript:openWin()">
					</span></td>
				</tr>
				<!-- ****************************************************************************************************************************** -->
				<tr>
					<th class="f_c_row"><span>담당자 명</span></th>
					<td><span> <input type="text" title="법인체 담당자"
							class="pont_L" id="cr_man_name" name="cr_man_name"
							placeholder=" 법인체 담당자 " size="20" maxlength="20">
					</span></td>
				</tr>
				<!-- ****************************************************************************************************************************** -->
				<tr class="f_row">
					<th class="f_c_row"><span>담당자 번호</span></th>
					<td><span> <input type="text" title="담당자 번호"
							class="pont_L" id="cr_man_phone_number"
							name="cr_man_phone_number" placeholder="  -제외 11자 입력 " size="40"
							maxlength="20">
					</span></td>
				</tr>
			</table>

			<input type="submit" title="다음" class="corporation_button"
				id="submit" name="Donation" value="다음 단계" size="40" maxlength="20" style= "margin: 1%;">
				<a href="/lifesaver/"><input type="button" value="뒤로가기" size="40" maxlength="20" /></a>
			<h5 style="text-align: center;">LifeSaver의 후원회원이 되시면,</h5>
			<h6 class="nbg" style="text-align: center;">지정기부금은 소득금액의 30%,
				법정기부금은 소득금액의 100% 한도 내에서 15% 세액공제 받으실 수 있습니다.</h6>

		</form>
	</div>
	<br>
	<br>
	<hr>

	<div class="falis"></div>
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

