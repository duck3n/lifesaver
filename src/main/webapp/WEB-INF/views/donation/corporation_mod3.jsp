<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/donation.css" type="text/css" />
<link rel="stylesheet" href="css/lifeSaver.css" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="http://code.jquery.com/jquery-1.4.4.min.js"></script>

<%
request.setCharacterEncoding("UTF-8");
String cr_name = request.getParameter("cr_name");
String cr_number = request.getParameter("cr_number");
String cr_man_name = request.getParameter("cr_man_name");
String cr_man_phone_number = request.getParameter("cr_man_phone_number");
int price = Integer.parseInt(request.getParameter("price"));
String box = request.getParameter("box");
String box2 = request.getParameter("box2");
%>
<script>

	$(function(){
	
      var IMP = window.IMP; 
      IMP.init('imp94723924'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용

      IMP.request_pay({
          pg : 'inicis', // version 1.1.0부터 지원.
          pay_method : 'card',
          merchant_uid : 'merchant_' + new Date().getTime(),
          name : 'SAFETY : be someone hero ',
          amount : '${price }',
          buyer_name : '${name }',
          //company_nane : 'SAFETY' 
          buyer_tel : '${man_phone_number }',
          buyer_addr : '${man_name }',
          buyer_postcode : '${box }'
          <%-- buyer_postcoding : '<%=box2 %>' --%>
         // m_redirect_url : 'http://www.naver.com'

      }, function(rsp) {
          if ( rsp.success ) {
              var msg = '감사합니다. 결제가 성공적으로 완료되었습니다.';
              //msg += '고유ID : ' + rsp.imp_uid, '<br />';
              msg += '담당자 명 :' + rsp.buyer_addr;
              //msg += '구매 법인체 명 : ' + rsp.buyer_name; 
            		 // msg += '휴대폰 번호 :' + rsp.buyer_tel;
              //msg += '상점 거래ID : ' + rsp.buyer_manname;
              msg += '결제 금액 : ' + rsp.paid_amount;
              //msg += '카드 승인번호 : ' + rsp.apply_num;
              //msg += '결제 방법  :  ' + rsp.buyer_postcode;
             /*  msg += '결제 방법  :  ' + rsb.buyer_postcoding; */
             // msg += 'success';
              
              console.log("log" + msg +  rsp.imp_uid );
          	  if(msg !=null){
          	  console.log("loging" + msg+rsp.imp_uid+ rsp.buyer_name+  rsp.buyer_email+rsp.paid_amount );
          	  console.log("msg:: " + msg);
          	  LG = rsp.imp_uid;
         	  console.log("mspc ::" + LG);
         	  
         	  return true;
          	  }
          } else {
              var msg = '결제에 실패하였습니다.';
              msg += '에러내용 : ' + rsp.error_msg; 
              alert(msg);
              
              location.href = "/lifesaver/corporation_mod"
              
              return false;
              
              
              
          }
          alert("감사합니다"+".  " + "${name }" + "님 " + "${price }" +  "  " +"원 결제가 완료되었습니다.");		//데이터 전달 x

         
      });
      
   });
	
	
   
   $(document).ready(
		   function move() {
		     var elem = document.getElementById("myBar");   
		     var width = 1;
		     var id = setInterval(frame, 10);
		     function frame() {
		       if (width >= 75) {
		         clearInterval(id);
		       } else {
		         width++; 
		         elem.style.width = width + '%'; 
		       }
		     }
		   });

   </script>
   
<style>.topsi{height:75px;}</style>



</head>

    <!-- Wrapper -->

    <body class="is-preload" id="lawPage" style="padding-top: 12%;margin-top: 4%;">
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
	<!-- <div class="topsi"></div>-->
	<div class="balis"></div>
	<div class="alis">
	<%-- <%@include file="DoHeader.jsp" %>
  	 --%> <div class="w3-container">
  			<h2> 3. 후원금 결제 단계:: </h2>
  		<div class="w3-light-grey" style="border: 1px solid;">
    		<div id="myBar" class="w3-green" style="height:24px;width:0"> 75% </div>
  		</div>
	</div><br>
	
	
 
<div id="text">
    <form method="post" action="/lifesaver/corporation_mod4"> <!--form action="mod_2.jsp">  -->
 		<table class="corporation_table">
<!-- ****************************************************************************************************************************** -->
<h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;후원금 결제</h3>


<p align="center">(결제에 문제가 발생하였다면, 다시 하기를 눌러주세요.)</p>

   
   
   
     
		<tr class="f_c_row">
		<td>
			<input type="hidden" title="법인체 명" id="cr_name" name="cr_name" value="<%=cr_name %>" size="50">
			<input type="hidden" title="법인 등록번호" id="cr_number" name="cr_number" value="<%=cr_number %>" size="50">
			<input type="hidden" title="법인체 담당자" id="cr_man_name" name="cr_man_name" value="<%=cr_man_name %>" size="10">
			<input type="hidden" title="담당자 번호" id="cr_man_phone_number" name="cr_man_phone_number" value="<%=cr_man_phone_number %>" size="11">
			<input type="hidden" title="후원금액" class="pont_L" id="price" name="price"  placeholder=" 금액을 입력해 주세요." size="50" value="<%=price %>">
			<input type="hidden" name="box2" class="pont_L" id="" value="<%=box2 %>"/>
			<input type="hidden" name="box"  class="pont_L" id="" value="<%=box %>"/>
																											  
			<%-- <input type="hidden" title="후원금액" id="price" name="price"  placeholder="price" value="<%=price %>" size="50"> --%>
		<td>
	</tr>
</table>
	
  	<input type="submit" title="다음" class="corporation_button"  name="Donation" value="다음 단계" size="40" id="Donation" style="margin: 1%;">
		<a href="/corporation_mod">
		<input type="button" title="다시 하기" class="corporation_button_return"  name="Donation" value="다시 하기" size="40">
		
		</a>
		
			<h5 style="text-align: center;">LifeSaver의 후원회원이 되시면,</h5>
    <h6 class="nbg" style="text-align: center;">지정기부금은 소득금액의 30%, 법정기부금은 소득금액의 100% 한도 내에서 15% 세액공제 받으실 수 있습니다.</h6>
  
  
  
   </form>
</div>
  <br><br>
   <hr>
</div>

   <div class="falis">
 
   </div>
  <div class="footer">
<%--  <jsp:include page="../etc/project_footer.jsp" ></jsp:include>--%>

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