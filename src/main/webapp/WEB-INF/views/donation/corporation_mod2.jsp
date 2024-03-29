<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

    <!-- STYLESHEETS -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/donation.css" type="text/css" />
<link rel="stylesheet" href="css/lifeSaver.css" type="text/css" />
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<link rel="shortcut icon" href="/images/ico/favicon.png">

 
<!-- GOOGLE WEB FONTS -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@700&family=Roboto:wght@700&display=swap" rel="stylesheet">



<title>mod.jsp</title>
<script>
$(document).ready(
		function move() {
		  var elem = document.getElementById("myBar");   
		  var width = 1;
		  var id = setInterval(frame, 10);
		  function frame() {
		    if (width >= 50) {
		      clearInterval(id);
		    } else {
		      width++; 
		      elem.style.width = width + '%'; 
		    }
		  }
		});
function openWin(){window.open("http://dart.fss.or.kr/", "네이버새창", "width=800, height=700, toolbar=no, menubar=no,resizable=yes" );}  

</script>
<script>
$(document).ready(function(){ 
	$("#submit").click(function(){
		if($("#price").val().length==0){ alert("금액을 입력하세요."); $("#price").focus(); return false; }
if (!$("input:checked[Name='box']").is(":checked")){ alert("후원 방법에 체크를 해주십시오"); $("#box").focus(); return false; }
if (!$("input:checked[Name='box2']").is(":checked")){ alert("후원 선택에 체크를 해주십시오"); $("#box2").focus(); return false; }
		});		
});


</script>



<style>
.falis{margin-top: 670px;margin-right: -800px;}
.balis{background-image: url("../image/chd.jpg");height:300px;width:1920px;}
.topsi{height:75px;}
</style>


</head>
<body>

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
</div></div></div></nav>
                        <!-- END LOGO -->

                      

	<%-- <div class="top"><jsp:include page="../etc/sf_nav.jsp" ></jsp:include></div>--%>
	<!-- <div class="topsi"></div> -->
<!-- <div class="balis"></div> -->
	<%-- <div class="alis"><%@include file="DoHeader.jsp" %>	
	 --%>	<div class="w3-container">
  			<h2> 2. 후원 금액 및 매체 선택 단계 :: </h2>
  			<div class="w3-light-grey" style="border: 1px solid;">
    			<div id="myBar" class="w3-green" style="height:24px;width:0"> 50% </div>
  			</div>
		</div> <br>
		
		<%
			request.setCharacterEncoding("UTF-8");
			String cr_name = request.getParameter("cr_name");
			String cr_number = request.getParameter("cr_number");
			String cr_man_name = request.getParameter("cr_man_name");
			String cr_man_phone_number = request.getParameter("cr_man_phone_number");

		%>




	<div id="text">
 		<form method="post" action="/lifesaver/corporation_mod3">
 			<table class="corporation_table">		
<!-- ****************************************************************************************************************************** -->
				<h3>&nbsp;&nbsp;&nbsp;후원 금액 및 매체 선택</h3>
	   				<tr class="pont_L">
	  					<th class="pont_L">
							<span>후원 방법  </span>
	  					</th>
	  					<td>
							<input type="checkbox" name="box"  class="pont_L" id="" value="kakao"/> 카카오페이
							<input type="checkbox" name="box"  id="" value="kg"/> KG이니시스
							<input type="checkbox" name="box"  id="" value="toss"/> 토스
						</td>   
	   				</tr>
	   
	<!-- ****************************************************************************************************************************** -->
	   				<tr class="f_row">  
	   					<th class="f_c_row">
	    					<span>후원 선택</span>
	  					</th>
	  					<td>
	  						<input type="checkbox" name="box2" class="pont_L" id="" value="regular"/>정기  후원
							<input type="checkbox" name="box2"  id="" value="irregular"/>비 정기 후원
						</td>   
	   				</tr>
	<!-- ****************************************************************************************************************************** -->
					<tr class="f_c_row">
	  					<th class="f_c_row">
	      				<span>후원금액</span>
	  					</th>
	  					<td>
	  						<span>
	  							<input type="text" title="후원금액"class="pont_L" id="price" name="price"  placeholder=" 금액을 입력해 주세요." size="30">
	  						</span>
	  					</td>   
	   				</tr>
	<!-- ****************************************************************************************************************************** -->
					<tr class="f_c_row">
						<td>
							<input type="hidden" title="법인체 명" id="cr_name" name="cr_name" value="<%=cr_name %>" size="50">
							<input type="hidden" title="법인 등록번호" id="cr_number" name="cr_number" value="<%=cr_number %>" size="50">
							<input type="hidden" title="법인체 담당자" id="cr_man_name" name="cr_man_name" value="<%=cr_man_name %>" size="10">
							<input type="hidden" title="담당자 번호" id="cr_man_phone_number" name="cr_man_phone_number" value="<%=cr_man_phone_number %>" size="11"> 																									  
						<td>
					</tr>
				</table>
					<input type="submit" title="다음" class="corporation_button" id="submit" name="Donation" value="다음 단계" size="50" style="margin: 1%;">
						<h5 style="text-align: center;">LifeSaver의 후원회원이 되시면,</h5>
	    				<h6 class="nbg" style="text-align: center;">지정기부금은 소득금액의 30%, 법정기부금은 소득금액의 100% 한도 내에서 15% 세액공제 받으실 수 있습니다.</h6>
	   		</form>
		</div><br><br><hr>

<!--    <div class="falis"></div> -->
   <%-- <div class="footer"><jsp:include page="../etc/project_footer.jsp" ></jsp:include></div>
 --%>
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
 
 