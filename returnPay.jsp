<%
/******************************************************************************
*
*	@ SYSTEM NAME		: 결제완료페이지
*	@ PROGRAM NAME		: returnPay.jsp
*	@ MAKER				: 
*	@ MAKE DATE			: 2017.07.21
*	@ PROGRAM CONTENTS	: 결제완료페이지
*
************************** 변 경 이 력 *****************************************
* 번호	작업자		작업일				변경내용
*******************************************************************************/
%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*" %>
<%
//request.setCharacterEncoding("utf-8");
	String PayMethod		= request.getParameter("PayMethod")==null?"":request.getParameter("PayMethod");
	String MID				= request.getParameter("MID")==null?"":request.getParameter("MID");
	String TID              = request.getParameter("TID")==null?"":request.getParameter("TID");
	String Amt				= request.getParameter("Amt")==null?"":request.getParameter("Amt");
	String BuyerName		= request.getParameter("BuyerName")==null?"":request.getParameter("BuyerName"); // 구매자명	
	String mallUserID       = request.getParameter("mallUserID")==null?"":request.getParameter("mallUserID"); // 구매자ID
	String GoodsName		= request.getParameter("GoodsName")==null?"":request.getParameter("GoodsName");
	String GoodsCl		= request.getParameter("GoodsCl")==null?"":request.getParameter("GoodsCl");
	String OID				= request.getParameter("OID")==null?"":request.getParameter("OID");
	String AuthDate			= request.getParameter("AuthDate")==null?"":request.getParameter("AuthDate");
	String AuthCode			= request.getParameter("AuthCode")==null?"":request.getParameter("AuthCode");
	String ResultCode		= request.getParameter("ResultCode")==null?"":request.getParameter("ResultCode");
	String ResultMsg		= request.getParameter("ResultMsg")==null?"":request.getParameter("ResultMsg");
	String VbankNum			= request.getParameter("VbankNum")==null?"":request.getParameter("VbankNum");
	String MallReserved     = request.getParameter("MallReserved")==null?"":request.getParameter("MallReserved");		
	
	// 매입사 코드
	String AcquCardCode     = request.getParameter("AcquCardCode")==null?"":request.getParameter("AcquCardCode");		
	String AcquCardName     = request.getParameter("AcquCardName")==null?"":request.getParameter("AcquCardName");		

	System.out.println("******** returnPay.jsp CALL ********");

%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="stylesheet" type="text/css" href="./css/jquery.mCustomScrollbar.css" />
        <link rel="stylesheet" type="text/css" href="./css/common.css" />
        <link href='./css/font.css' rel='stylesheet' type='text/css'>
        <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="./images/favicon.ico" type="image/x-icon">
        <script type="text/javascript" src="./js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="./js/jquery.mCustomScrollbar.js"></script>
        <script type="text/javascript" src="./js/common.js"></script>
        <title>INNOPAYPG 신용카드 자동결제서비스</title>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".error_notice .popup_cont").center();
        });
        $(window).resize(function() {
            $(".error_notice .popup_cont").center();
        });
    </script>
        
    </head>
    <body>
        <div class="innopay">
            <section class="innopay_wrap">
                <section class="float_wrap error_notice">
                    <div class="popup_cont">
                        <img src="./images/i_error.png" alt="알림" width="69px" height="auto">
                        <p>상점 결과 페이지</p>
                        <section class="btn_wrap_fl">
                            <div><p>
                            <%if(ResultCode.equals("3001")||"4000".equals(ResultCode)||"4100".equals(ResultCode)){ %>
				                <div><b>정상적으로 결제 되었습니다.</b></div>
				                <div>감사합니다.</div>       
				            <%}else{ %>
				                <div><b>결제실패[아래와 같은 사유로 결제 실패]</b></div>    
				                <div><%=ResultCode+" "+ResultMsg%></div>
				            <%} %>
                            </div></p>
                            <div>
                                <a class="btn_blue btn" href="javascript:window.close()">확인</a>
                            </div>
                        </section>
                    </div>
                </section>
            </section>
        </div>
    </body>

</html>