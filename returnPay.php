<?php
/*******************************************************************************
 * FILE NAME : InnopayPgNoti_PHP.php
 * DATE : 2015.03.18
*******************************************************************************/

@extract($_GET);
@extract($_POST);
@extract($_SERVER);

$TEMP_IP = getenv("REMOTE_ADDR");
$PG_IP  = substr($TEMP_IP,0, 13);

$PayMethod			= $PayMethod;
$MID				= $MID;
$TID				= $TID;
$mallUserID			= $mallUserID;
$Amt				= $Amt;
$name				= $name;
$GoodsName			= $GoodsName;
$OID				= $OID;
$MOID				= $MOID;
$AuthDate			= $AuthDate;
$AuthCode			= $AuthCode;
$ResultCode			= $ResultCode;
$ResultMsg			= $ResultMsg;
$MerchantReserved	= $MerchantReserved;
$MallReserved		= $MallReserved;
$SUB_ID				= $SUB_ID;
$fn_cd				= $fn_cd;
$fn_name			= $fn_name;
$CardQuota			= $CardQuota;
$BuyerEmail			= $BuyerEmail;
$BuyerAuthNum		= $BuyerAuthNum;
$ErrorCode			= $ErrorCode;
$ErrorMsg			= $ErrorMsg;
$AcquCardCode		= $AcquCardCode;
$AcquCardName		= $AcquCardName;
$FORWARD			= $FORWARD;
$VbankNum			= $VbankNum;
$VbankName			= $VbankName;
$VbankExpDate       = $VbankExpDate;
$VBankAccountName   = $VBankAccountName;

?>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link rel="stylesheet" type="text/css" href="https://pg.innopay.co.kr/pay/css/jquery.mCustomScrollbar.css" />
        <link rel="stylesheet" type="text/css" href="https://pg.innopay.co.kr/pay/css/common.css" />
        <link href='https://pg.innopay.co.kr/pay/css/font.css' rel='stylesheet' type='text/css'>
        <link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="https://pg.innopay.co.kr/pay/images/favicon.ico" type="image/x-icon">
        <script type="text/javascript" src="https://pg.innopay.co.kr/pay/js/jquery-2.1.4.min.js"></script>
        <script type="text/javascript" src="https://pg.innopay.co.kr/pay/js/jquery.mCustomScrollbar.js"></script>
        <script type="text/javascript" src="https://pg.innopay.co.kr/pay/js/common.js"></script>
        <title>INNOPAYPG 신용카드 자동결제서비스</title>
    <script type="text/javascript">
        $(document).ready(function(){
            $(".error_notice .popup_cont").center();
        });
        $(window).resize(function() {
            $(".error_notice .popup_cont").center();
        });
        function goCancel() {
        	try{
        		if((opener!=null&&opener!=undefined)||('Y'=='<?=FORWARD?>')){
        			window.open('', '_self', '');
        		    window.close();
        		}else if((window.parent!=null&&window.parent!=undefined)||('X'=='<?=FORWARD?>')){
        			window.parent.postMessage('close','*');
        		}else{
        			history.go(-1);
        		}
        	}catch(e){}
        }
    </script>
        
    </head>
    <body>
        <div class="innopay">
            <section class="innopay_wrap">
                <section class="float_wrap error_notice">
                    <div class="popup_cont">
                        <img src="https://pg.innopay.co.kr/pay/images/i_error.png" alt="알림" width="69px" height="auto">
                        <p>상점 결과 페이지</p>
                        <section class="btn_wrap_fl">
                            <div><p>
                            <?if($ResultCode == "3001" || $ResultCode == "4000" || $ResultCode == "4100"){ ?>
				                <div><b>정상적으로 결제 되었습니다.</b></div>
				                <div>감사합니다.</div>       
				            <?}else{ ?>
				                <div><b>결제실패[아래와 같은 사유로 결제 실패]</b></div>    
				                <div><? echo $ResultCode . " " . $ResultMsg; ?></div>
				            <?} ?>
                            </div></p>
                            <div>
                                <a class="btn_blue btn" href="javascript:goCancel()">확인</a>
                            </div>
                        </section>
                    </div>
                </section>
            </section>
        </div>
    </body>

</html>