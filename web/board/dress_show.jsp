
<%@ page import="Member.AscloSQL"%>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("euc-kr");%>

<%
    try {
        AscloSQL MICA = AscloSQL.getInstance();
    } catch (JSchException | ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }

    String num = request.getParameter("num");

    String title = AscloSQL.getDress(Integer.parseInt(num), 0);
    String content = AscloSQL.getDress(Integer.parseInt(num), 1);
    String img = AscloSQL.getDress(Integer.parseInt(num), 2);
    String price = AscloSQL.getDress(Integer.parseInt(num), 3);
    String goods_img = AscloSQL.getDress(Integer.parseInt(num), 4);

    int df_pirce = Integer.parseInt(price);
    DecimalFormat df = new DecimalFormat("###,###");

    // ajax에 값을 보내야해서 변수 생성
    out.print("<script>var num = "+num+"</script>");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><meta http-equiv="X-UA-Compatible" content="IE=edge"/><!-- PG크로스브라우징필수내용 --><meta http-equiv="Cache-Control" content="no-cache"/><meta http-equiv="Expires" content="0"/><meta http-equiv="Pragma" content="no-cache"/><!-- // PG크로스브라우징필수내용 --><!-- 해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요. --><!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. --><link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"/><link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet"/><span itemscope="" itemtype="http://schema.org/Organization">
  <link itemprop="url" href="http://asclo.com">
  <a itemprop="sameAs" href="https://www.instagram.com/hi880515/">
  <a itemprop="sameAs" href="https://www.facebook.com/hi880515"></a>
  <a itemprop="sameAs" href="https://itunes.apple.com/kr/app/id1213633181"></a>
  <a itemprop="sameAs" href="https://play.google.com/store/apps/details?id=com.asclo.byapps"></a>
 </span>
    <link rel="canonical" href="http://asclo.com/product/울-블렌디드-오드체크-자켓wool-60/9787/" />
    <link rel="alternate" href="http://m.asclo.com/product/울-블렌디드-오드체크-자켓wool-60/9787/" />
    <meta property="og:url" content="http://asclo.com/product/울-블렌디드-오드체크-자켓wool-60/9787/" />
    <meta property="og:title" content="<%=title%>" />
    <meta property="og:site_name" content="애즈클로" />
    <meta property="og:type" content="product" />
    <meta property="og:image" content="http://asclo.com/web/product/medium/20191122/3f8f6c7dd108c6810b9ae1ac689d4401.jpg" />
    <meta property="product:price:amount" content="92000" />
    <meta property="product:price:currency" content="KRW" />
    <meta property="product:sale_price:amount" content="92000" />
    <meta property="product:sale_price:currency" content="KRW" />
    <link rel="shortcut icon" href="http://asclo.com/web/upload/favicon_20141006131340.ico" />
    <meta http-equiv="ImageToolbar" content="No">
    <script type="text/javascript" src="http://asclo.com/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
    <script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>

    <script type='text/javascript'>
        var EC_FRONT_EXTERNAL_SCRIPT_VARIABLE_DATA = {"common_member_id_crypt":""};
    </script>

    <script type="text/javascript">var EC_SDE_SHOP_NUM = 1;var SHOP = {getLanguage : function() { return "ko_KR"; },getCurrency : function() { return "KRW"; },getFlagCode : function() { return "KR"; },getTimezone: function() { return "Asia/Seoul" },isMultiShop : function() { return true; },isDefaultShop : function() { return true; },isDefaultLanguageShop : function(sLanguageCode) { return SHOP.isDefaultShop() && SHOP.isLanguageShop(sLanguageCode); },isKR : function() { return true; },isUS : function() { return false; },isJP : function() { return false; },isCN : function() { return false; },isTW : function() { return false; },isES : function() { return false; },isPT : function() { return false; },isVN : function() { return false; },isLanguageShop : function(sLanguageCode) { return sLanguageCode === "ko_KR"; },getDefaultShopNo : function() { return 1; },getProductVer : function() { return 2; },isSDE : function() { return true; },isMode : function() {return false; },isExperienceMall : function() { return false; },getAdminID : function() {return ''},getMallID : function() {return 'hi880515'}};var EC_COMMON_UTIL = {convertSslForString : function(sString) { return sString.replace(/http:/gi, '');},convertSslForHtml : function(sHtml) { return sHtml.replace(/((?:src|href)\s*=\s*['"])http:(\/\/(?:[a-z0-9\-_\.]+)\/)/ig, '$1$2');},getProtocol : function() { return 'http'; },moveSsl : function() { if (EC_COMMON_UTIL.getProtocol() === 'http') { var oLocation = jQuery(window.location); var sUrl = 'https://' + oLocation.attr('host') + oLocation.attr('pathname') + oLocation.attr('search'); window.location.replace(sUrl); } }};var EC_SHOP_LIB_INFO = {getBankInfo : function() {
            var oBankInfo = "";
            $.ajax({
                type: "GET",
                url: "/exec/front/Shop/Bankinfo",
                dataType: "json",
                async: false,
                success: function(oResponse) {
                    oBankInfo = oResponse;
                }
            });
            return oBankInfo; }};</script><script type="text/javascript">            var EC_ROOT_DOMAIN = "cafe24.com";
    var EC_I18N_LOG_STATUS = "F";
    var EC_GLOBAL_INFO = (function() {
        var oData = {"base_domain":"hi880515.cafe24.com","root_domain":"cafe24.com","is_global":false,"country_code":"KR","language_code":"ko_KR","admin_language_code":"ko_KR"};

        return {
            getBaseDomain: function() {
                return oData['base_domain'];
            },

            getRootDomain: function() {
                return oData['root_domain'];
            },

            isGlobal: function() {
                return oData['is_global'];
            },

            getCountryCode: function() {
                return oData['country_code'];
            },

            getLanguageCode: function() {
                return oData['language_code'];
            },

            getAdminLanguageCode: function() {
                return oData['admin_language_code'];
            }
        };
    })();</script><script type="text/javascript" src="//asclo.com/ind-script/moment.php?convert=T"></script><script type="text/javascript">            var EC_GLOBAL_DATETIME = (function() {
        var oConstants = {"STANDARD_DATE_REGEX":"\/([12]\\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[12]\\d|3[01]))\/","IN_ZONE":"inZone","OUT_ZONE":"outZone","IN_FORMAT":"inFormat","OUT_FORMAT":"outFormat","IN_DATE_FORMAT":"inDateFormat","IN_TIME_FORMAT":"inTimeFormat","OUT_DATE_FORMAT":"outDateFormat","OUT_TIME_FORMAT":"outTimeFormat","IN_FORMAT_DATE_ONLY":1,"IN_FORMAT_TIME_ONLY":2,"IN_FORMAT_ALL":3,"OUT_FORMAT_DATE_ONLY":1,"OUT_FORMAT_TIME_ONLY":2,"OUT_FORMAT_ALL":3,"DATE_ONLY":"YYYY-MM-DD","TIME_ONLY":"HH:mm:ss","FULL_TIME":"YYYY-MM-DD HH:mm:ss","ISO_8601":"YYYY-MM-DD[T]HH:mm:ssZ","YEAR_ONLY":"YYYY","MONTH_ONLY":"MM","DAY_ONLY":"DD","WEEK_ONLY":"e","TIME_H_I_ONLY":"HH:mm","TIME_HOUR_ONLY":"HH","TIME_MINUTE_ONLY":"mm","POSTGRE_FULL_TIME":"YYYY-MM-DD HH24:MI:SS","POSTGRE_TIME_ONLY":" HH24:MI:SS","MICRO_SECOND_ONLY":"u","SEOUL":"Asia\/Seoul","TOKYO":"Asia\/Tokyo","SHANGHAI":"Asia\/Shanghai","TAIPEI":"Asia\/Taipei","HANOI":"Asia\/Bangkok","LOS_ANGELES":"America\/Los_Angeles","LISBON":"Europe\/Lisbon","MADRID":"Europe\/Madrid","UTC":"Etc\/UTC","MAX_DATETIME":"9999-12-31 23:59:59"};
        var oOptions = {"inZone":"Asia\/Seoul","inFormat":"YYYY-MM-DD HH:mm:ss","inDateFormat":"YYYY-MM-DD","inTimeFormat":"HH:mm:ss","outZone":"Asia\/Seoul","outFormat":"YYYY-MM-DD HH:mm:ss","outDateFormat":"YYYY-MM-DD","outTimeFormat":"HH:mm:ss"};
        var oPolicies = {"shop":{"outZone":"Asia\/Seoul","outFormat":"YYYY-MM-DD HH:mm:ss","outDateFormat":"YYYY-MM-DD","outTimeFormat":"HH:mm:ss"}};
        var sOverrideTimezone = '';
        var sMomentNamespace = 'EC_GLOBAL_MOMENT';

        var fMomentLoaded = function() {
            var bMomentLoaded = !!window[sMomentNamespace];
            var bMomentTZLoaded = false;
            if (bMomentLoaded) {
                bMomentTZLoaded = !!window[sMomentNamespace].tz;
            }

            return bMomentLoaded && bMomentTZLoaded;
        };

        var fMomentWrapper = function() {
            return window[sMomentNamespace];
        };

        var fShallowMerge = function(oTarget, oSource) {
            oSource = oSource || {};
            for (var sKey in oSource) {
                if (oSource.hasOwnProperty(sKey)) {
                    oTarget[sKey] = oSource[sKey];
                }
            }

            return oTarget;
        };

        var getFormatFromFlag = function(oOptions, iFlag, bOpposite) {
            if (bOpposite) {
                switch (iFlag) {
                    case 1:
                        return oOptions[oConstants.IN_DATE_FORMAT];
                    case 2:
                        return oOptions[oConstants.IN_TIME_FORMAT];
                    default:
                        return oOptions[oConstants.IN_FORMAT];
                }
            }

            switch (iFlag) {
                case 1:
                    return oOptions[oConstants.OUT_DATE_FORMAT];
                case 2:
                    return oOptions[oConstants.OUT_TIME_FORMAT];
                default:
                    return oOptions[oConstants.OUT_FORMAT];
            }
        };

        return {
            const: oConstants,

            init: function(fCallback) {
                if (fMomentLoaded()) {
                    if (typeof fCallback === 'function') {
                        fCallback();
                    }

                    return;
                }

                var oScript = document.createElement('script');
                oScript.type = 'text/javascript';
                oScript.async = true;
                oScript.src = '/ind-script/moment.php?convert=T';
                oScript.onload = oScript.onreadystatechange = function () {
                    fMomentWrapper().defaultFormat = oOptions[oConstants.OUT_FORMAT];
                    fMomentWrapper().tz.setDefault(oOptions[oConstants.IN_ZONE]);

                    if (typeof fCallback === 'function') {
                        fCallback();
                    }
                };

                var oFirstScript = document.getElementsByTagName('script')[0];
                oFirstScript.parentNode.insertBefore(oScript, oFirstScript);
            },

            initPromise: function() {
                if (!window.Promise) {
                    return;
                }

                return new Promise(function(resolve) {
                    this.init(resolve);
                }.bind(this));
            },

            isLoaded: function() {
                return fMomentLoaded();
            },

            setOptions: function(oNewOptions) {
                if (typeof oNewOptions === 'object') {
                    for (var sKey in oNewOptions) {
                        if (oNewOptions.hasOwnProperty(sKey) && oOptions.hasOwnProperty(sKey)) {
                            oOptions[sKey] = oNewOptions[sKey];
                        }
                    }
                }

                return this;
            },

            now: function(mOptions, iFlag) {
                if (fMomentLoaded() === false) {
                    return Math.floor(new Date().getTime() / 1000);
                }

                var oFormatOptions = this.getOptions(mOptions);
                return fMomentWrapper()()
                    .tz(oFormatOptions.outZone)
                    .format(getFormatFromFlag(oFormatOptions, iFlag));
            },

            format: function(sTime, mOptions, iFlag) {
                if (fMomentLoaded() === false) {
                    return sTime;
                }

                var oFormatOptions = this.getOptions(mOptions);
                return fMomentWrapper()
                    .tz(sTime, oFormatOptions.inZone)
                    .tz(oFormatOptions.outZone)
                    .format(getFormatFromFlag(oFormatOptions, iFlag));
            },

            parse: function(sTime, mOptions) {
                if (fMomentLoaded() === false) {
                    return sTime;
                }

                var oParseOptions = this.getOptions(mOptions);
                return fMomentWrapper().tz((sTime || new Date()), oParseOptions.inZone).tz(oParseOptions.outZone);
            },

            getOptions: function(mOptions, iFlag) {
                mOptions = mOptions || {};

                var oMergedOptions = fShallowMerge({}, oOptions);
                if (typeof mOptions === 'string' && oPolicies[mOptions]) {
                    oMergedOptions = fShallowMerge(oMergedOptions, oPolicies[mOptions]);
                } else if (typeof mOptions === 'object') {
                    oMergedOptions = fShallowMerge(oMergedOptions, mOptions);
                }

                if (sOverrideTimezone) {
                    if ((typeof mOptions === 'string' && mOptions === 'shop') || (typeof mOptions === 'object' && !mOptions[oConstants.OUT_ZONE])) {
                        oMergedOptions[oConstants.OUT_ZONE] = sOverrideTimezone;
                    }
                }

                return oMergedOptions;
            },

            getRevertOptions: function(mOptions) {
                var oCurrentOptions = this.getOptions(mOptions);
                var oMergedOptions = fShallowMerge({}, oOptions);
                oMergedOptions[oConstants.IN_ZONE] = oCurrentOptions[oConstants.OUT_ZONE];
                oMergedOptions[oConstants.IN_FORMAT] = oCurrentOptions[oConstants.OUT_FORMAT];
                oMergedOptions[oConstants.IN_DATE_FORMAT] = oCurrentOptions[oConstants.OUT_DATE_FORMAT];
                oMergedOptions[oConstants.IN_TIME_FORMAT] = oCurrentOptions[oConstants.OUT_TIME_FORMAT];

                return oMergedOptions;
            },

            today: function(sTime, mOptions, iFlag) {
                if (fMomentLoaded() === false) {
                    throw new Error('MomentJS didnt initialize');
                }

                mOptions = mOptions || 'shop';
                var oRevertOptions = this.getRevertOptions(mOptions);
                var oToday;
                if (!sTime || sTime === 'now') {
                    oToday = this.parse('', mOptions);
                } else {
                    iFlag = iFlag || oConstants.IN_FORMAT_ALL || 3;
                    oToday = fMomentWrapper().tz(sTime, getFormatFromFlag(oRevertOptions, iFlag, true), oRevertOptions[oConstants.IN_ZONE]);
                    if (oToday.isValid() === false) {
                        var oStandardDateRegex = new RegExp(oConstants.STANDARD_DATE_REGEX.replace(/\//g, ''));
                        if (oStandardDateRegex.test(sTime) === true) {
                            oToday = fMomentWrapper().tz(sTime, oRevertOptions[oConstants.IN_ZONE]);
                        } else {
                            oToday = fMomentWrapper()();
                        }
                    }
                }

                var oStartOfDay = oToday.clone().startOf('day');
                var oEndOfDay = oToday.clone().endOf('day');

                var sStartOfDayInSeoul = oStartOfDay.tz(oConstants.SEOUL).format(oConstants.FULL_TIME);
                var sEndOfDayInSeoul = oEndOfDay.tz(oConstants.SEOUL).format(oConstants.FULL_TIME);

                return [sStartOfDayInSeoul, sEndOfDayInSeoul];
            },

            parseFromFormat: function(sTime, mOptions, iFlag) {
                if (fMomentLoaded() === false) {
                    return sTime;
                }

                mOptions = mOptions || 'shop';
                iFlag = iFlag || oConstants.IN_FORMAT_ALL || 3;

                var oRevertOptions = {};
                if (typeof mOptions === 'string') {
                    oRevertOptions = this.getRevertOptions(mOptions);
                } else {
                    oRevertOptions = this.getOptions(mOptions);
                }

                return fMomentWrapper()(sTime, getFormatFromFlag(oRevertOptions, iFlag, true));
            }
        };
    })();</script>

    <link rel="stylesheet" type="text/css" href="http://asclo.com/ind-script/optimizer.php?filename=tZVLagMxDIb3mW57DjWBQA5QeoDmBLKtzojalvEDktvXmTaQNBTKjL200f_JkiwJJnEE212EEGWM6CBSkhI1gU4JPqL4DFqcE_9UL57hP_akN0lsySx-o-S0UFhyXurU4pniMmlGZekPKYYAx0kCvN8y3mZGtTFF5wVKJRjNjY70UBLFBBMfDi_77R5CUZb1MGVnIRkaDCUePaRP9rvtTHLVuaXrI8BQRrZtmFpKEH9Fv64lB4vsZ746Jcvmrk4NQo9k8VLItlQ0hi9UXBN6_ZVSar0xsZ6dPPTVauL3RUuiGlvSaqfVA20K96BmEZs59EBPZLtwH8dGOzSO7DFTl0yj6oF9mPntyHdrqGUebJcEVzPdg_t7M66YjT8-XKk9l-puO04cAvt5XnwB&type=css&k=81eb37254fb63f1c3a71a6d999dd32e7c2453159&t=1548841056" />
    <link rel="stylesheet" type="text/css" href="http://asclo.com/ind-script/optimizer.php?filename=tdBRCsMgEIThA6SvPcc2hUCO0B7DrGuUqiOuFnL7pvQK9nng42fIIwkJT12lKvmwrrdlXqj0LQaefEuR1MpkRcOeSV8h32diVUqwPQpFc6A3YuT3CQTkwpdzvtIgOGJHQxlqajNNvrBz_3HzUHaDqfaZHcbGiqnsH2Ks1KEwnyfsqMdQ1AHt1_kB&type=css&k=354d4f4853deba6c88f0da01ca00cc2f6e63c0a5&t=1548831488" />

    <title>애즈클로</title>
    <meta name="path_role" content="PRODUCT_DETAIL" />
    <meta name="author" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰" />
    <meta name="keywords" content="<%=title%>" />
    <meta name="design_html_path" content="/product/detail.html" /></head><body><div id="skipNavigation">
    <p><a href="#category">전체상품목록 바로가기</a></p>
    <p><a href="#contents">본문 바로가기</a></p>
</div>
<!--
+ 저작권법 제 4조에 의한 저작물로 그 소유권은 ※플레인디자인※에 있으며 저작권법에 규정된 목적 이외에 어떠한 경우에도 무단으로 복사(이미지카피, 디자인카피) 및 전제할 수 없습니다.
+ 디자인에 사용된 스크립트 및 html 등 관련물은 모두 ※플레인※에서 제작된 내용이므로, 불법 복사를 금지합니다. 적발시 형사처벌을 청구할 수 있습니다.
//-->
<div id="wrap">
    <div id="header">
        <div class="inner">
            <div class="topArea">

                <div class="global">
                    <a href="https://www.asclo.com" target="_blank"><img src="//img.cafe24.com/img/common/global/ko_KR_32x24.png"/></a>
                    <a href="https://www.asclo.net" target="_blank"><img src="//img.cafe24.com/img/common/global/en_US_32x24.png"/></a>
                    <a href="https://www.asclojapan.com" target="_blank"><img src="//img.cafe24.com/img/common/global/ja_JP_32x24.png"/></a>
                    <a href="https://www.asclo.net" target="_blank"><img src="//img.cafe24.com/img/common/global/zh_CN_32x24.png"/></a>
                </div>
                <div class="xans-element- xans-myshop xans-myshop-main topcon basket "><a href="/order/basket.jsp"><span class="count "><span class="xans_myshop_main_basket_cnt">0</span></span></a>
                </div>
                <h1 class="xans-element- xans-layout xans-layout-logotop "><a href="/index_bp.jsp"><img src="../logo.png"/></a>
                </h1>
                <!-- 상단로고 -->
            </div>

            <div class="xans-element- xans-layout xans-layout-statelogoff toplog "><a href="/member/login.jsp" class="log">LOGIN</a>
                <a href="/member/join.jsp">JOIN US</a>
                <a href="/order/basket.jsp">CART <span class="count ">(<span class="EC-Layout-Basket-count"></span>)</span></a>
                <a href="/myshop/order/list.html">ORDER</a>
                <a href="/myshop/index_bp.jsp">MYPAGE</a>
            </div>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script type="text/javascript" src="/favorite.js"></script>
            <div class="topboard">
               <a href="#" id="favorite" title="즐겨찾기 등록">BOOKMARK</a>
                <a href="https://www.doortodoor.co.kr/parcel/pa_004.jsp" target="_blank">DELIVERY</a>
                <a href="https://www.facebook.com/asclocom" target="_blank"><i class="fab fa-facebook-f"></i></a>
                <a href="https://www.instagram.com/hi880515/" target="_blank"><i class="fab fa-instagram"></i></a>

                <!------------------------------------------------------------------------------------------------------------------
                사용설명서입니다. 본 소스는 1~3행입니다.

                1. 배송조회
                2. 페이스북
                3. 인스타그램 입니다.

                <a href="이동주소" target="새창열기"> 이므로 href="" 의 따옴표 사이에 이동주소를 대처 수정하면 됩니다.

                예제)
                <a href="https://www.doortodoor.co.kr/parcel/pa_004.jsp" target="_blank">DELIVERY</a>
                ->
                <a href="https://www.naver.com/" target="_blank">DELIVERY</a>


                * 주소를 수정할때에는 href=""의 따옴표사이에 입력해주세요.
                * 따옴표가 열고 닫힘이 올바르도록 주의해서 수정해주세요.
                * 수정 후 우측상단 모두저장 버튼을 클릭하여 저장해주세요.


                디자인 편집창에서 태그 손상이 있을 경우 새빨갛게 표기되며 이경우 아래 세팅당시 원본소스로 대처 수정 하시길 바랍니다.
                (세팅당시 원본소스)
                <a href="https://www.doortodoor.co.kr/parcel/pa_004.jsp" target="_blank">DELIVERY</a>
                <a href="https://www.facebook.com/asclocom" target="_blank"><i class="fab fa-facebook-f"></i></a>
                <a href="https://www.instagram.com/hi880515/" target="_blank"><i class="fab fa-instagram"></i></a>
                ------------------------------------------------------------------------------------------------------------------->
            </div>

            <div class="xans-element- xans-layout xans-layout-boardinfo topboard"><a href="/board/notice/notice_index.jsp" class="xans-record-">NOTICE</a>
                <a href="/board/faq/faq_index.jsp" class="xans-record-">FAQ</a><a href="/board/qna/qna_index.jsp" class="xans-record-">Q&A</a><a href="review/dress_review_index.jsp" class="xans-record-">REVIEW</a></div>

            <form id="searchBarForm" name="" action="/product/search.html" method="get" target="_self" enctype="multipart/form-data" >
                <input id="banner_action" name="banner_action" value="" type="hidden"  /><div class="xans-element- xans-layout xans-layout-searchheader "><!--
                $product_page=/product/detail.html
                $category_page=/product/list.html
            -->
                <fieldset>
                    <legend>검색</legend>
                    <input id="keyword" name="keyword" fw-filter="" fw-label="검색어" fw-msg="" class="inputTypeText" placeholder="" onmousedown="SEARCH_BANNER.clickSearchForm(this)" value="" type="text"  /><input type="image" src="../icon_search.png" alt="검색" onclick="SEARCH_BANNER.submitSearchBanner(this); return false;"/>
                </fieldset>
            </div>
            </form>    </div><!-- //inner -->
    </div><hr class="layout"/><!-- snap common script contact mail: support@snapvi.co.kr --><span id="solutiontype" style="display:none;">cafe24</span>
    <span id="sfsnapfit_store_id" style="display:none">asclo</span>
    <div><input id="sf_draw_type" type="hidden" value="pc"/><input id="sf_store_name" type="hidden" value="asclo"/></div>
    <!-- snap common end -->







    <div id="sidebar" class="fixsnb_start">
        <div id="category" class="xans-element- xans-layout xans-layout-category"><div class="position">
            <ul><li class="xans-element- xans-layout xans-layout-logotop snblogo "><a href="/index_bp.jsp"><img src="/web/mobile/newDesign/1198160145a3cb3a39f610.png"/></a>
            </li>
                <!-- 모바일 로고 주소로 불러옴 -->
                <li class="xans-record-"><a href="/product/list.html?cate_no=56">OUTER</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=190">KNIT</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=57">TOP</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=59">BOTTOM</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=58">SHIRT</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=213">SUIT</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=194">SHOES</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=60">ACC</a></li>
            </ul>
            <div id="snbBoard">
                <a href="/board/index_bp.jsp">COMMUNITY</a>
                <div class="xans-element- xans-layout xans-layout-boardinfo snbBbox"><a href="/board/notice/notice_index.jsp" class="xans-record-">NOTICE</a>
                    <a href="/board/faq/faq_index.jsp" class="xans-record-">FAQ</a>
                    <a href="/board/qna/qna_index.jsp" class="xans-record-">Q&A</a>
                    <a href="/review/dress_review_index.jsp" class="xans-record-">REVIEW</a>
                    <a href="https://accounts.kakao.com/login?continue=http%3A%2F%2Fpf.kakao.com%2F_muhjE%2Fchat" target="_blank">KAKAO CS</a>
                </div>

            </div>
            <div class="xans-element- xans-myshop xans-myshop-main snbbasketcon "><a href="/order/basket.jsp"><span class="count "><span class="xans_myshop_main_basket_cnt">0</span></span></a>
            </div>
        </div>
        </div>
        <!-- //category -->
    </div><!-- //sidebar -->
    <div id="container">
        <div id="contents">

            <!--
                $category_page = /product/list.html
                $project_page = /product/project.html
                $jointbuy_page = /product/jointbuy.html
            -->
            <div class="xans-element- xans-product xans-product-headcategory path "><span>현재 위치</span>
                <ol>
                    <li><a href="/">home</a></li>
                    <li class=""><a href="/category/outer/56/">OUTER</a></li>
                    <li class=""><a href="/category/blazer/155/">Blazer</a></li>
                    <li class="displaynone"><a href=""></a></li>
                    <li class="displaynone"><strong><a href=""></a></strong></li>
                </ol>
            </div>
            <link href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css" rel="stylesheet"/><div class="xans-element- xans-product xans-product-detail"><div class="detailArea ">
            <div class="xans-element- xans-product xans-product-image imgArea "><div class="keyImg">
                <div class="thumbnail">
                    <!-- 여기가 대표 이미지 -->
                    <img src="http://l.bsks.ac.kr/~p201606010/asclo_dress/<%=img%>" alt="<%=title%>" class="BigImage "/>                    <div id="zoom_wrap"></div>
                </div>
            </div>
                <!-- div class="listImg" module="product_addimage">
                                <ul>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </div -->
                <!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
                <div class="listImg">
                    <h2>View more images</h2>
                    <ul>
                        <li><img src="//img.echosting.cafe24.com/thumb/img_product_big.gif" class="ThumbImage" alt=""/></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                        <li></li>
                    </ul>
                </div>
                <!-- //참고 -->
            </div>
            <!-- //imgArea -->

            <div class="infoArea">
                <div class="headingArea">
                    <h2><%=title%></h2>
                    <span class="delivery displaynone">(해외배송 가능상품)</span>
                    <span class="icon">      </span>
                    <!-- 공급사 바로가기버튼 영역 -->
                    <div class="supply displaynone">
                        <span></span>
                        <a href="#none" onclick=""><img src="" alt="공급사 바로가기"/></a>
                    </div>
                    <!-- //공급사 바로가기버튼 영역 -->
                </div>

                <div class="xans-element- xans-product xans-product-detaildesign"><!--
                    출력 갯수 지정 변수, 없으면 설정된 전체가 나옵니다.
                    count = 10
                -->
                    <table border="1" summary="" class="table01">
                        <caption> 기본 정보</caption>
                        <tbody>
                        <tr class=" displaynone xans-record-">
                            <th scope="row"><span style="font-size:17px;color:#000000;font-weight:bold;">상품명</span></th>
                            <td><span style="font-size:17px;color:#000000;font-weight:bold;"><%=title%></span></td>
                        </tr>
                        <tr class=" xans-record-">
                            <th scope="row"><span style="font-size:13px;color:#000000;font-weight:bold;">판매가</span></th>
                            <td><span style="font-size:13px;color:#000000;font-weight:bold;"><strong id="span_product_price_text"><%=df.format(df_pirce)%></strong><input id="product_price" name="product_price" value="" type="hidden"  /></span></td>
                        </tr>
                        <!--
                        <tr class=" xans-record-">
                            <th scope="row"><span style="font-size:12px;color:#555555;">수량</span></th>
                            <td><span style="font-size:12px;color:#555555;"><span id='NewProductQuantityDummy' ><span class="quantity"><input id="quantity" name="quantity_name" style="width: 30px;height: 18px;border: 1px solid #BCBCBC;" value="" type="text"  /><img src="//img.echosting.cafe24.com/design/skin/mono/product/btn_basketUp.gif"  class="QuantityUp" alt="수량증가" /><img src="//img.echosting.cafe24.com/design/skin/mono/product/btn_basketDown.gif"  class="QuantityDown" alt="수량감소" /></span></span></span></td>
                        </tr>
                        -->
                        </tbody>
                    </table>
                </div>


                <p class="displaynone"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/txt_naver.gif" alt="개인결제창을 통한 결제 시 네이버 마일리지 적립 및 사용이 가능합니다."/></p>

                <table border="1" summary="" class="xans-element- xans-product xans-product-option xans-record-"><caption>상품 옵션</caption>
                    <tbody></tbody><tbody class="xans-element- xans-product xans-product-option xans-record-"><tr>
                        <th scope="row">사이즈</th>
                        <td><ul  option_product_no="9787" option_select_element="ec-option-select-finder" option_sort_no="1" option_type="T" item_listing_type="S" option_title="사이즈" product_type="product_option" product_option_area="product_option_9787_0" option_style="button" ec-dev-id="product_option_id1" ec-dev-name="option1" ec-dev-class="ProductOption0" class="ec-product-button" required="true" ><li class="" option_value="M" link_image="" title="M"><a href="#none"><span>M</span></a></li><li class="" option_value="L" link_image="" title="L"><a href="#none"><span>L</span></a></li></ul><p class="value">[필수] <span class="ec-shop-front-product-option-desc-trigger" data-option_msg="사이즈 선택">사이즈 선택</span></p>
                        </td>
                    </tr></tbody>
                    <tbody>
                    <tr class="displaynone" id="">
                        <td colspan="2" class="selectButton"><a href="#none" class="btnBasic" onclick="">옵션선택</a></td>
                    </tr></tbody>
                </table>
                <div class="guideArea">
                    <!-- p class="info ">(최소주문수량 1개 이상<span class="displaynone"> / 최대주문수량 0개 이하</span>)</p -->
                    <span class="sizeGuide displaynone"><a href="#none" class="size_guide_info" product_no="9787">사이즈 가이드</a></span>
                </div>

                <!-- 세트상품 -->
                <!-- 추가구성상품 -->

                <div id="totalProducts" class="">
                    <table border="1" summary="">
                        <caption>상품 목록</caption>
                        <colgroup>
                            <col style="width:80px;"/>
                            <!--284px--><col style="width:200px;"/>
                            <!--80px--><col style="width:110px;"/>
                        </colgroup>
                        <thead><tr>
                            <th scope="col">상품명</th>
                            <th scope="col">상품수</th>
                            <th scope="col">가격</th>
                        </tr></thead>
                        <tbody class="displaynone tableqty"><tr class="qtycon">
                            <td>수량<!--울 블렌디드 오드체크 자켓(Wool 60%)-->
                            </td>
                            <td>
                                <span class="quantity">
                                    <input id="quantity" name="quantity_name" style="" value="0" type="text"  />                                    <a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif" alt="수량증가" class="QuantityUp up"/></a>
                                    <a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif" alt="수량감소" class="QuantityDown down"/></a>
                                </span>
                            </td>
                            <td class="right">
                                <span class="quantity_price">92000</span> <span class="mileage displaynone">(<img src=""/>  <span class="mileage_price"></span>)</span>
                            </td>
                        </tr></tbody>
                        <!-- 옵션선택 또는 세트상품 선택시 상품이 추가되는 영역입니다. 쇼핑몰 화면에는 아래와 같은 마크업구조로 표시됩니다. 삭제시 기능이 정상동작 하지 않습니다. --><tbody><!-- tr>
                            <td>
                                <p class="product">
                                    $상품명<br />
                                    <span>$옵션</span>
                            	</p>
                            </td>
                            <td>
                                <span class="quantity">
                                    <input type="text" class="quantity_opt" />
                                    &nbsp;<a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif" alt="수량증가" class="up" /></a>
                                    <a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif" alt="수량감소" class="down" /></a>
                                </span>
                                <a href="#none"><img src="//img.echosting.cafe24.com/design/skin/default/product/btn_price_delete.gif" alt="삭제" class="option_box_del" /></a>
                            </td>
                            <td class="right">
                                <span>$가격</span>
                                <span class="mileage">(<img src="//img.echosting.cafe24.com/design/skin/admin/ko_KR/product/ico_pay_point.gif" /> &nbsp;<span class="mileage_price">$적립금</span>)</span>
                            </td>
                        </tr --></tbody>
                        <!-- // 옵션선택 또는 세트상품 선택시 상품이 추가되는 영역입니다. 쇼핑몰 화면에는 아래와 같은 마크업구조로 표시됩니다. 삭제시 기능이 정상동작 하지 않습니다. -->
                    </table>
                </div>

                <div id="totalPrice" class="totalPrice">
                    <strong>총 상품금액</strong>(수량) : <span class="total"><strong><em>0</em></strong> (0개)</span>
                </div>
                <p class="ec-base-help txt11 displaynone EC-price-warning">할인가가 적용된 최종 결제예정금액은 주문 시 확인할 수 있습니다.</p>

                <div class="xans-element- xans-product xans-product-action "><div class="ec-base-button gColumn">
                    <a href="#none" class="btnSubmit sizeL black " onclick="product_submit(1, '/exec/front/order/basket/', this)"><span id="btnBuy">BUY IT NOW</span><span id="btnReserve" class="displaynone">RESERVE</span></a>
                </div>
                    <%
                        int count = 0;
                        try{
                            ArrayList<String[][]> list = (ArrayList) session.getAttribute("productlist");
                            count = (int) session.getAttribute("Basket_count");
                            String[][] strings;
                            boolean check = false;

                            if (list != null) {
                                for (int i = 0; i < list.size(); i++) {
                                    strings = list.get(i);
                                    if(strings[i][0].equals(num)){
                                        check = true;
                                    }
                                }
                                if(!check){
                                    count += 1;
                                }
                            }
                        }catch(Exception ignored){
                        }

                    %>
                    <script>
                        function plus() {
                            alert("basket");
                            // 카운트 추가
                            location.href= "../order/basket_add.jsp?name=<%=num%>&count=1&a_count=<%=count%>";
                        }
                    </script>
                    <div class="ec-base-button gColumn">
                        <a id="cartBtn" href="#none" class="btnNormal sizeL " onclick="plus();">ADD TO CART</a>
                        <a href="#none" class="btnNormal sizeL gFlex2 displaynone">SOLD OUT</a>
                    </div>

                    <div class="xans-element- xans-product xans-product-additional infotxt "><ul>
                        <h2>
                            <i class="xi-check"></i>INSTRUCTION</h2>
                        <li><font color="#de1616">INFO</font>
                        <li>정보
                        <li><font color="#de1616">SIZE</font>
                        <li>사이즈
                        <li><font color="#de1616">FABRIC</font>
                        <li>재질
                        <li><font color="#de1616">MODEL</font>
                        <li>모델
                    </ul>
                    </div>
                </div>
            </div>
            <!-- //infoArea -->
        </div>
            <!-- //detailArea -->
            <!-- 공급사:판매사정보 -->
            <div class="supplyInfo displaynone">
            </div>
            <!-- //공급사:판매사정보 -->
            <div class="eventArea displaynone ">
                <div class="event"></div>
            </div>
        </div>
            <!-- //product_detail 끝-->


            <!-- 참고 : 뉴상품관리 전용 모듈입니다. 뉴상품관리 이외의 곳에서 사용하면 정상동작하지 않습니다. -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.js"></script>


            <!-- //참고 -->

            <div class="xans-element- xans-product xans-product-additional ">

                <div id="prdDetail" class="ec-base-tab01 grid5">

                <ul class="menu">
                    <li class="selected"><a href="#prdDetail">detail</a></li>

                    <li><a href="#prdReview">review</a></li>
                    <li><a href="#prdQnA">q &amp; a</a></li>
                </ul>
                <div class="cont">
                    내용:<%=content%><br>
                    <img src="http://l.bsks.ac.kr/~p201606010/asclo_dress/<%=goods_img%>" alt="<%=title%>" class="BigImage "/><br>
                    <p><img alt="" src="/web/upload/NNEditor/20191122/1_shop1_182709.jpg"><p>&nbsp;</p><img alt="" src="/web/upload/NNEditor/20191122/2_shop1_182709.jpg"><p>&nbsp;</p><img alt="" src="/web/upload/NNEditor/20191122/3_shop1_182710.jpg"><p>&nbsp;</p><br></p>        </div>
            </div>

                <!-- 리뷰 !-->
                    <div class="board">
                        <h3>REVIEW</h3>
                        <div class="xans-element- xans-product xans-product-review"><a name="use_review"></a>
                            <p class="noAccess displaynone">글읽기 권한이 없습니다.</p>
                            <div class="minor displaynone">
                                <p><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/ico_under19.gif" alt=""/>  <strong>"19세 미만의 미성년자"</strong>는 출입을 금합니다!</p>
                                <p class="button"><a href="/intro/board.html" class="btnEm sizeS">성인인증 하기</a></p>
                            </div>
                            <div class="ec-base-table typeList">
                                <table border="1" summary="" class="">
                                    <caption>상품사용후기</caption>
                                    <colgroup>
                                        <col style="width:70px;"/>
                                        <col style="width:auto"/>
                                        <col style="width:120px;"/>
                                        <col style="width:120px;"/>
                                        <col style="width:80px;"/>
                                        <col style="width:80px;" class="displaynone"/>
                                    </colgroup>
                                    <!-----------------------------------------------------------------------------

                                    리뷰 부분

                                    <tr class="xans-record-" id="review-0">
                                        <td>1</td>
                                        <td class="subject left txtBreak" value="test"> <a href="javascript:void(0);" > 서브젝트 타이틀</a> <img src="http://asclo.com/web/upload/icon_201602021908415400.jpg"> </td>
                                        <td class="txtInfo txt11">이름</td>
                                        <td class="txtInfo txt11">날짜</td>
                                        <td>카운터</td>
                                    </tr>
                                    ----------------------------------------------------------------------------->

                                    <%

                                        int get_reviewcount = AscloSQL.getReviewcount(num);
                                        if(get_reviewcount != 0){
                                            String[][] review_info;
                                            review_info = AscloSQL.getAllReview(num);

                                            out.print("<thead><tr>\n" +
                                                    "<th scope=\"col\">no</th>\n" +
                                                    "<th scope=\"col\">subject</th>\n" +
                                                    "<th scope=\"col\">name</th>\n" +
                                                    "<th scope=\"col\">date</th>\n" +
                                                    "<th scope=\"col\">hit</th>\n" +
                                                    "</tr></thead>\n" +
                                                    "<tbody class=\"center\">");
                                            for(int i=get_reviewcount-1; i >= 0; i--){
                                                out.print("<tr class=\"xans-record-\" id=\"show-"+review_info[i][0]+"\">\n" +
                                                        "<td>"+(i+1)+"</td>\n" +
                                                        "<td class=\"subject left txtBreak\"> <a href=\"javascript:void(0);\" class='reviewclick' id="+review_info[i][0]+">"+review_info[i][3]+"</a> <img src=\"http://asclo.com/web/upload/icon_201602021908415400.jpg\"> </td>\n" +
                                                        "<td class=\"txtInfo txt11\">"+review_info[i][2]+"</td>\n" +
                                                        "<td class=\"txtInfo txt11\">"+review_info[i][6]+"</td>\n" +
                                                        "<td>"+review_info[i][7]+"</td>\n" +
                                                        "</tr>");
                                            }
                                        }
                                        else{
                                            out.print("<p class=\"nodata\">게시물이 없습니다</p>");
                                        }
                                    %>

                                    <!-----------------------------------------------------------------------------

                                    리뷰 추가

                                    ----------------------------------------------------------------------------->

                                    <!--
                                    <tr id="product-review-read" style="display: table-row;">
                                        <td colspan="5">
                                            <div class="view" id="view"></div>
                                        </td>
                                    </tr>
                                    -->
                                    </tbody>
                                </table>
                        <p class="ec-base-button">
                <span class="gRight">
                    <a href="/board/product/write.html?board_no=4&product_no=9787&cate_no=1&display_group=2" class="btnNormal sizeS">상품후기쓰기</a>
                    <a href="/board/product/list.html?board_no=4" class="btnNormal sizeS">모두 보기</a>
                </span>
                        </p>
                    </div>
                </div>
                        <!-- ajax 사용 -->
                        <script>
                            var check = false;
                            $(".reviewclick").click(function() {
                                if(check == true){
                                    $("#view-review-read").remove();
                                }
                                var id = $(this).attr('id');
                                $.ajax({
                                    type:"GET",
                                    url:"review/dress_review.jsp?num="+num+"&rv="+id,
                                    dataType:'text',
                                    success:function(args){
                                        $("#view").html(args);
                                    },
                                    error : function(e){
                                        alert("error: "+e);
                                    }
                                });
                                $("#show-"+id).after("<tr id=\"view-review-read\" style=\"display: table-row;\">" +
                                    "<td colspan=\"5\">" +
                                    "<div class=\"view\" id=\"view\"></div>" +
                                    "</td>" +
                                    "</tr>");
                                check = true;
                            });
                        </script>
                <!-- //사용리뷰 -->
                <div id="prdQnA" class="ec-base-tab01 grid5">
                    <div class="board">
                        <h3>Q&amp;A</h3>

                        <div class="xans-element- xans-product xans-product-qna"><a name="use_qna"></a>
                            <p class="noAccess displaynone">글읽기 권한이 없습니다.</p>
                            <div class="minor displaynone">
                                <p><img src="//img.echosting.cafe24.com/skin/base_ko_KR/product/ico_under19.gif" alt=""/>  <strong>"19세 미만의 미성년자"</strong>는 출입을 금합니다!</p>
                                <p class="button"><a href="/intro/board.html" class="btnEm sizeS">성인인증 하기</a></p>
                            </div>
                            <div class="ec-base-table typeList">
                                <table border="1" summary="" class="">
                                    <caption>상품 Q&amp;A</caption>
                                    <colgroup>
                                        <col style="width:70px;"/>
                                        <!-- col style="width:134px;" / --><col style="width:auto"/>
                                        <col style="width:120px;"/>
                                        <col style="width:120px;"/>
                                        <col style="width:80px;"/>
                                    </colgroup>
                                    <thead><tr>
                                        <th scope="col">no</th>
                                        <!-- th scope="col">category</th -->
                                        <th scope="col">subject</th>
                                        <th scope="col">name</th>
                                        <th scope="col">date</th>
                                        <!--<th scope="col">hit</th>-->
                                    </tr></thead>
                                    <tbody class="center">
                                    <tr class="xans-record-">
                                        <td>공지</td>
                                        <!-- td>기타문의</td -->
                                        <td class="subject left txtBreak"> <a href="http://asclo.com/article/qa/6/249852/?no=249852&board_no=6&spread_flag=T">고객센터는 AM10:00 ~PM16:30 까지입니다 :)</a> <img src="http://asclo.com/web/upload/icon_201602021908210200.jpg"  alt="HIT" class="ec-common-rwd-image" /><span class="txtEm"></span>
                                        </td>
                                        <td> 애즈클로</td>
                                        <td class="txtInfo txt11">2017-12-20</td>
                                        <!--<td class="txtInfo txt11">6552</td>-->
                                    </tr>
                                    <tr class="xans-record-">
                                        <td>공지</td>
                                        <!-- td>기타문의</td -->
                                        <td class="subject left txtBreak"> <a href="/article/qa/6/249851/?no=249851&board_no=6&spread_flag=T"> + [ 공지 ] 교환&반품 절차</a> <img src="http://asclo.com/web/upload/icon_201602021908210200.jpg"  alt="HIT" class="ec-common-rwd-image" /><span class="txtEm"></span>
                                        </td>
                                        <td> 애즈클로</td>
                                        <td class="txtInfo txt11">2017-12-20</td>
                                        <!--<td class="txtInfo txt11">23984</td>-->
                                    </tr>
                                    <tr class="xans-record-">
                                        <td>공지</td>
                                        <!-- td>상품문의</td -->
                                        <td class="subject left txtBreak"> <a href="/article/qa/6/44239/?no=44239&board_no=6&spread_flag=T">+ [ 공지 ] 세탁 및 관리</a> <img src="http://asclo.com/web/upload/icon_201602021908210200.jpg"  alt="HIT" class="ec-common-rwd-image" /><span class="txtEm"></span>
                                        </td>
                                        <td> 애즈클로</td>
                                        <td class="txtInfo txt11">2016-02-12</td>
                                        <!--<td class="txtInfo txt11">21204</td>-->
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <p class="ec-base-button">
                <span class="gRight">
                    <a href="/board/product/write.html?board_no=6&product_no=9787&cate_no=1&display_group=2" class="btnNormal sizeS">상품문의하기</a>
                    <a href="/board/product/list.html?board_no=6" class="btnNormal sizeS">모두 보기</a>
                </span>
                        </p>
                    </div>
                </div>
            </div>

            <script type="text/javascript">
                /* 추가구성상품, 관련상품 */
                $('.withslide').bxSlider({
                    mode : 'horizontal', //효과
                    auto: false, //자동롤링
                    autoHover: true,//마우스오버시 정지여부
                    touchEnabled : false, //터치롤링
                    autoDelay:4000, //시작전 기다리는 시간
                    speed: 400, // 넘어가는속도
                    pause: 3500, // 넘어가는 시간
                    slideWidth: 200, //이미지크기
                    minSlides: 5, //최소 가로 진열 갯수
                    maxSlides: 5, //최대 가로 진열 갯수
                    moveSlides: 1, //넘어가는갯수
                    slideMargin: 20, //간격
                    pager: false, //동그라미 페이징버튼
                    controls: true //화살표버튼
                });
            </script>



            <!-- Enliple Common Tracker v3.5 [공용] start -->
            <script type="text/javascript">
                <!--
                function mobRf(){
                    var rf = new EN();
                    rf.setData("userid", "asclo");
                    rf.setSSL(true);
                    rf.sendRf();
                }
                //-->
            </script>
            <script src="https://cdn.megadata.co.kr/js/en_script/3.5/enliple_min3.5.js" defer="defer" onload="mobRf()"></script>
            <!-- Enliple Common Tracker v3.5 [공용] end -->

            <!---- snapq start contact mail: support@snapvi.co.kr  --->
            <div id="sf_isdetail_page" style="display:none">1</div>
            <script async type="text/javascript" src="//snapfit.co.kr/js/sf_init_snapq_detail.js" defer='true' charset="utf-8"></script>
            <!---- snapq end --->

            <!---- snappush  start contact mail: support@snapvi.co.kr --->
            <div id="spm_page_type" style="display:none">sq_detail_page</div>
            <script async type="text/javascript" src="//snapvi.ecn.cdn.infralab.net/snapfit/js/spm_f_common.js" defer='true' charset="utf-8"></script>
            <div id="spm_banner_main"></div>
            <!---- snappush  end -->
        </div><hr class="layout"/></div><hr class="layout"/><div id="footer">
    <div class="xans-element- xans-layout xans-layout-footer inner"><ul>
        <li class="inner01 ">
            <div class="box">
                <h2>about us</h2>
                <p><span>company.애즈클로</span></p>
                <p><span>owner.서홍일,서지우</span></p>
                <p><span>tel.070-4477-9922</span> <span>email.hi880515@naver.com</span></p>
                <p><span>business no.204-29-34817</span></p>
                <p><span>mail order license.2016-서울동대문-0071호 <a href="#none" onclick="window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2042934817', 'bizCommPop', 'width=750, height=950;');return false;">[사업자정보확인]</a></span></p>
                <p><span>address.[02586] 서울특별시 성동구 청계천로 468 3층</span></p>
                <!--<p><span>address.[02586] 서울특별시 동대문구 난계로30길 23 (신설동) 7층</span></p>-->
                <h4>[교환/반품 주소지]</h4>
                <p>서울특별시 동대문구 천호대로4 동대문우체국(819) 소포실내 애즈클로</p>
                <p>우체국택배 고객센터 : 1588-1300</p>

                <!------------------------------------------------------------------------------------------------------------------
                사용설명서입니다. 본 소스는 1~3행입니다.

                * 하단 회사정보 영역 / 커뮤니티 글자 클릭시이동되는 게시판 메인 두곳에서 노출됩니다.

                색상 - 태그
                검정색 - 본문 내용입니다.

                검정색의 본문내용을 수정 후 우측상단 모두저장 버튼을 클릭하여 저장해주세요.



                디자인 편집창에서 태그 손상이 있을 경우 새빨갛게 표기되며 이경우 아래 세팅당시 원본소스로 대처 수정 하시길 바랍니다.
                (세팅당시 원본소스)
                <h4>[교환/반품 주소지]</h4>
                <p>서울특별시 동대문구 천호대로4 동대문우체국(819) 소포실내 애즈클로</p>
                <p>우체국택배 고객센터 : 1588-1300</p>
                ------------------------------------------------------------------------------------------------------------------->
            </div>
        </li>

        <li class="inner02">
            <div class="box">
                <h2>c/s center</h2>
                <h3>070-4477-9922</h3>
                <p>MON - FRI : 10AM-4:30PM</p>
                <p>LUNCH : 12:30AM-13:30PM</p>
                <p>SAT SUN HOLIDAY OFF</p>

                <!------------------------------------------------------------------------------------------------------------------
                사용설명서입니다. 본 소스는 1~4행입니다.

                * 하단 회사정보 영역 / 커뮤니티 글자 클릭시이동되는 게시판 메인 두곳에서 노출됩니다.

                색상 - 태그
                검정색 - 본문 내용입니다.

                검정색의 본문내용을 수정 후 우측상단 모두저장 버튼을 클릭하여 저장해주세요.



                디자인 편집창에서 태그 손상이 있을 경우 새빨갛게 표기되며 이경우 아래 세팅당시 원본소스로 대처 수정 하시길 바랍니다.
                (세팅당시 원본소스)
                <h3>070-4477-9922</h3>
                <p>MON - FRI : 10AM-4:30PM</p>
                <p>LUNCH : 12:30AM-13:30PM</p>
                <p>SAT SUN HOLIDAY OFF</p>
                ------------------------------------------------------------------------------------------------------------------->
                <h5>[무통장 계좌 안내]</h5>
                <p>KB국민 437201-04-192634</p>
                <p>예금주 : 서지우(애즈클로)</p>

                <h5>[반품 계좌 안내]</h5>
                <p>KB국민 352601-01-336244</p>
                <p>예금주 : 서지우(애즈클로)</p>

                <!------------------------------------------------------------------------------------------------------------------
                사용설명서입니다. 본 소스는 1~3행입니다.

                * 하단 회사정보 영역 / 커뮤니티 글자 클릭시이동되는 게시판 메인 두곳에서 노출됩니다.

                색상 - 태그
                검정색 - 본문 내용입니다.

                검정색의 본문내용을 수정 후 우측상단 모두저장 버튼을 클릭하여 저장해주세요.



                디자인 편집창에서 태그 손상이 있을 경우 새빨갛게 표기되며 이경우 아래 세팅당시 원본소스로 대처 수정 하시길 바랍니다.
                (세팅당시 원본소스)
                <h5>[무통장 계좌 안내]</h5>
                <p>KB국민 437201-04-192634</p>
                <p>예금주 : 서지우(애즈클로)</p>
                ------------------------------------------------------------------------------------------------------------------->
            </div>
        </li>

        <li class="inner03">
            <div class="box">
                <h2>community</h2>
                <div class="xans-element- xans-layout xans-layout-boardinfo footboard"><ul>
                    <li class="xans-record-"><a href="/board/notice/notice_index.jsp">NOTICE</a></li>
                    <li class="xans-record-"><a href="/board/faq/faq_index.jsp">FAQ</a></li>
                    <li class="xans-record-"><a href="/board/qna/qna_index.jsp">Q&A</a></li>
                    <li class="xans-record-"><a href="/review/dress_review_index.jsp">REVIEW</a></li>
                </ul>
                </div>
            </div>
        </li>

        <li class="inner04">
            <div class="box">
                <h2>membership</h2>
                <p><a href="/member/join.jsp">회원가입</a></p>
                <p><a href="/member/id/find_id.html">아이디 찾기</a></p>
                <p><a href="/member/passwd/find_passwd_info.html">비밀번호 찾기</a></p>
                <p><a href="/myshop/order/list.html"><u>주문조회 바로가기</u></a></p>
                <p><a href="/product/recent_view_product.html">최근 본 상품</a></p>
            </div>
        </li>

        <li class="inner05">
            <div class="box">
                <h2>shop guide</h2>
                <p><a href="/">홈으로</a></p>
                <p><a href="/shopinfo/company.html">회사소개</a></p>
                <p><a href="/member/agreement.html">이용약관안내</a></p>
                <p><a href="/member/privacy.html"><b>개인정보취급방침</b></a></p>
                <p><a href="/shopinfo/guide.html">이용안내</a></p>
            </div>
        </li>

        <li class="inner06 ">
            <div class="box">
                <p class="escrow">
                    <a href="#none"><img src="/web/upload/plain87/inis01.png"/></a>
                    <a href="#none"><img src="/web/upload/plain87/inis02.png"/></a>
                    <a href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp" target="_blank"><img src="/web/upload/plain87/inis03.png"/></a>
                    <a href="#"><img onclick="window.open('https://mark.inicis.com/mark/popup_v1.php?mid=CAEhi88ba9', '', 'scrollbars=yes, width=500, height=580, left=100, top=100')" src="/web/upload/plain87/inis04.png" alt="에스크로" title="에스크로"/></a>

                </p>
                <p>모든이미지는 애즈클로의 소유로 법적인 보호를 받고 있습니다.<br/>무단게재 및 도용시 저작권법에 의해 형사고발 및 손해배상을 묻습니다.</p>
                <p class="copy">+ copyright © 애즈클로 all rights reserved</p>
            </div>
        </li>
    </ul>
    </div>
    <!--//inner -->
</div><!--//footer -->
    <div id="gotop">
        <a href="https://accounts.kakao.com/login?continue=http%3A%2F%2Fpf.kakao.com%2F_muhjE%2Fchat" target="_blank" class="katalk"><img src="https://asclo.com/web/upload/mplain24/katalk.png"/></a>
        <ul><li><a href="#" class="top"><i class="fas fa-chevron-up"></i></a></li>
            <li><a href="#" class="bottom"><i class="fas fa-chevron-down"></i></a></li>
        </ul></div>
</div><hr class="layout"/><!-- 결제를 위한 필수 영역 --><div id="progressPaybar" style="display:none;">
    <div id="progressPaybarBackground" class="layerProgress"></div>
    <div id="progressPaybarView">
        <div class="box">
            <p class="graph">
                <span><img src="//img.echosting.cafe24.com/skin/base_ko_KR/layout/txt_progress.gif" alt="현재 결제가 진행중입니다."/></span>
                <span><img src="//img.echosting.cafe24.com/skin/base/layout/img_loading.gif" alt=""/></span>
            </p>
            <p class="txt">
                본 결제 창은 결제완료 후 자동으로 닫히며,결제 진행 중에 본 결제 창을 닫으시면<br/>
                주문이 되지 않으니 결제 완료 될 때 까지 닫지 마시기 바랍니다.
            </p>
        </div>
    </div>
</div>
<!-- // 결제를 위한 필수 영역 -->

<div class="xans-element- xans-layout xans-layout-multishopshipping "><div class="dimmed"></div>
    <div class="worldshipLayer ec-base-layer">
        <div class="header">
            <h3>WORLD SHIPPING</h3>
        </div>
        <div class="content">
            <p class="desc">PLEASE SELECT THE DESTINATION COUNTRY AND LANGUAGE :</p>
            <div class="select">
                <select class="xans-element- xans-layout xans-layout-multishopshippingcountrylist"><option value="GH"  class="xans-record-">SHIPPING TO : 가나(GHANA)</option>
                    <option value="GA"  class="xans-record-">SHIPPING TO : 가봉(GABON)</option>
                    <option value="GY"  class="xans-record-">SHIPPING TO : 가이아나(GUYANA)</option>
                    <option value="GM"  class="xans-record-">SHIPPING TO : 감비아(GAMBIA)</option>
                    <option value="GT"  class="xans-record-">SHIPPING TO : 과테말라(GUATEMALA)</option>
                    <option value="GD"  class="xans-record-">SHIPPING TO : 그레나다(GRENADA)</option>
                    <option value="GE"  class="xans-record-">SHIPPING TO : 그루지야(GEORGIA)</option>
                    <option value="GR"  class="xans-record-">SHIPPING TO : 그리스(GREECE)</option>
                    <option value="GN"  class="xans-record-">SHIPPING TO : 기니(GUINEA)</option>
                    <option value="GW"  class="xans-record-">SHIPPING TO : 기니비소(GUINEA-BISSAU)</option>
                    <option value="NA"  class="xans-record-">SHIPPING TO : 나미비아(NAMIBIA)</option>
                    <option value="NG"  class="xans-record-">SHIPPING TO : 나이지리아(NIGERIA)</option>
                    <option value="ZA"  class="xans-record-">SHIPPING TO : 남아프리카공화국(SOUTH AFRICA)</option>
                    <option value="AN"  class="xans-record-">SHIPPING TO : 네덜란드(네덜란드령앤틸리스)(NETHERLANDS(ANTILLES))</option>
                    <option value="NL"  class="xans-record-">SHIPPING TO : 네덜란드(네델란드)(NETHERLANDS)</option>
                    <option value="AW"  class="xans-record-">SHIPPING TO : 네덜란드(아루바섬)(ARUBA)</option>
                    <option value="NP"  class="xans-record-">SHIPPING TO : 네팔(NEPAL)</option>
                    <option value="NO"  class="xans-record-">SHIPPING TO : 노르웨이(NORWAY)</option>
                    <option value="NZ"  class="xans-record-">SHIPPING TO : 뉴질란드(NEW ZEALAND)</option>
                    <option value="NE"  class="xans-record-">SHIPPING TO : 니제르(NIGER)</option>
                    <option value="NI"  class="xans-record-">SHIPPING TO : 니카라과(NICARAGUA)</option>
                    <option value="KR"  selected="selected" class="xans-record-">SHIPPING TO : 대한민국(KOREA (REP OF,))</option>
                    <option value="DK"  class="xans-record-">SHIPPING TO : 덴마크(DENMARK)</option>
                    <option value="GL"  class="xans-record-">SHIPPING TO : 덴마크(그린란드)(GREENLAND)</option>
                    <option value="FO"  class="xans-record-">SHIPPING TO : 덴마크(페로즈제도)(FAROE ISLANDS)</option>
                    <option value="DO"  class="xans-record-">SHIPPING TO : 도미니카공화국(DOMINICAN REPUBLIC)</option>
                    <option value="DM"  class="xans-record-">SHIPPING TO : 도미니카연방(DOMINICA)</option>
                    <option value="DE"  class="xans-record-">SHIPPING TO : 독일(GERMANY)</option>
                    <option value="TL"  class="xans-record-">SHIPPING TO : 동티모르(TIMOR-LESTE)</option>
                    <option value="LA"  class="xans-record-">SHIPPING TO : 라오스(LAO PEOPLE'S DEM REP)</option>
                    <option value="LR"  class="xans-record-">SHIPPING TO : 라이베리아(LIBERIA)</option>
                    <option value="LV"  class="xans-record-">SHIPPING TO : 라트비아(LATVIA)</option>
                    <option value="RU"  class="xans-record-">SHIPPING TO : 러시아(RUSSIAN FEDERATION)</option>
                    <option value="LB"  class="xans-record-">SHIPPING TO : 레바논(LEBANON)</option>
                    <option value="LS"  class="xans-record-">SHIPPING TO : 레소토(LESOTHO)</option>
                    <option value="RO"  class="xans-record-">SHIPPING TO : 루마니아(ROMANIA)</option>
                    <option value="LU"  class="xans-record-">SHIPPING TO : 룩셈부르크(LUXEMBOURG)</option>
                    <option value="RW"  class="xans-record-">SHIPPING TO : 르완다(RWANDA)</option>
                    <option value="LY"  class="xans-record-">SHIPPING TO : 리비아(LIBYAN ARAB JAMAHIRIYA)</option>
                    <option value="LI"  class="xans-record-">SHIPPING TO : 리첸쉬테인(LIECHTENSTEIN)</option>
                    <option value="LT"  class="xans-record-">SHIPPING TO : 리투아니아(LITHUANIA)</option>
                    <option value="MG"  class="xans-record-">SHIPPING TO : 마다가스카르(MADAGASCAR)</option>
                    <option value="MK"  class="xans-record-">SHIPPING TO : 마케도니아(MACEDONIA)</option>
                    <option value="MW"  class="xans-record-">SHIPPING TO : 말라위(MALAWI)</option>
                    <option value="MY"  class="xans-record-">SHIPPING TO : 말레이지아(MALAYSIA)</option>
                    <option value="ML"  class="xans-record-">SHIPPING TO : 말리(MALI)</option>
                    <option value="MX"  class="xans-record-">SHIPPING TO : 멕시코(MEXICO)</option>
                    <option value="MC"  class="xans-record-">SHIPPING TO : 모나코(MONACO)</option>
                    <option value="MA"  class="xans-record-">SHIPPING TO : 모로코(MOROCCO)</option>
                    <option value="MU"  class="xans-record-">SHIPPING TO : 모리셔스(MAURITIUS)</option>
                    <option value="MR"  class="xans-record-">SHIPPING TO : 모리타니(MAURITANIA)</option>
                    <option value="MZ"  class="xans-record-">SHIPPING TO : 모잠비크(MOZAMBIQUE)</option>
                    <option value="ME"  class="xans-record-">SHIPPING TO : 몬테네그로(MONTENEGRO)</option>
                    <option value="MD"  class="xans-record-">SHIPPING TO : 몰도바(MOLDOVA, REPUBLIC OF)</option>
                    <option value="MV"  class="xans-record-">SHIPPING TO : 몰디브(MALDIVES)</option>
                    <option value="MT"  class="xans-record-">SHIPPING TO : 몰타(MALTA)</option>
                    <option value="MN"  class="xans-record-">SHIPPING TO : 몽고(MONGOLIA)</option>
                    <option value="US"  class="xans-record-">SHIPPING TO : 미국(U.S.A)</option>
                    <option value="GU"  class="xans-record-">SHIPPING TO : 미국(괌)(GUAM)</option>
                    <option value="MH"  class="xans-record-">SHIPPING TO : 미국(마아샬제도)(MARSHALL ISLANDS)</option>
                    <option value="VI"  class="xans-record-">SHIPPING TO : 미국(버진제도)(VIRGIN ISLANDS U.S.)</option>
                    <option value="WS"  class="xans-record-">SHIPPING TO : 미국(사모아, 구 서사모아)(SAMOA)</option>
                    <option value="AS"  class="xans-record-">SHIPPING TO : 미국(사모아제도)(AMERICAN SAMOA)</option>
                    <option value="MP"  class="xans-record-">SHIPPING TO : 미국(사이판)(NORTHERN MARIANA ISLANDS)</option>
                    <option value="PW"  class="xans-record-">SHIPPING TO : 미국(팔라우섬)(PALAU)</option>
                    <option value="PR"  class="xans-record-">SHIPPING TO : 미국(푸에르토리코섬)(PUERTO RICO)</option>
                    <option value="MM"  class="xans-record-">SHIPPING TO : 미얀마(MYANMAR)</option>
                    <option value="FM"  class="xans-record-">SHIPPING TO : 미크로네시아(마이크로네시아)(MICRONESIA)</option>
                    <option value="VU"  class="xans-record-">SHIPPING TO : 바누아투(VANUATU)</option>
                    <option value="BH"  class="xans-record-">SHIPPING TO : 바레인(BAHRAIN)</option>
                    <option value="BB"  class="xans-record-">SHIPPING TO : 바베이도스(BARBADOS)</option>
                    <option value="BS"  class="xans-record-">SHIPPING TO : 바하마(BAHAMAS)</option>
                    <option value="BD"  class="xans-record-">SHIPPING TO : 방글라데시(BANGLADESH)</option>
                    <option value="VE"  class="xans-record-">SHIPPING TO : 베네수엘라(VENEZUELA)</option>
                    <option value="BJ"  class="xans-record-">SHIPPING TO : 베넹(BENIN)</option>
                    <option value="VN"  class="xans-record-">SHIPPING TO : 베트남(VIET NAM)</option>
                    <option value="BE"  class="xans-record-">SHIPPING TO : 벨기에(BELGIUM)</option>
                    <option value="BY"  class="xans-record-">SHIPPING TO : 벨라루스(BELARUS)</option>
                    <option value="BZ"  class="xans-record-">SHIPPING TO : 벨리세(BELIZE)</option>
                    <option value="BA"  class="xans-record-">SHIPPING TO : 보스니아헤르체코비나(Bosnia and Herzegovina)</option>
                    <option value="BW"  class="xans-record-">SHIPPING TO : 보츠와나(BOTSWANA)</option>
                    <option value="BO"  class="xans-record-">SHIPPING TO : 볼리비아(BOLIVIA)</option>
                    <option value="BF"  class="xans-record-">SHIPPING TO : 부르키나파소(BURKINA FASO)</option>
                    <option value="BT"  class="xans-record-">SHIPPING TO : 부탄(BHUTAN)</option>
                    <option value="BG"  class="xans-record-">SHIPPING TO : 불가리아(BULGARIA(REP))</option>
                    <option value="BR"  class="xans-record-">SHIPPING TO : 브라질(BRAZIL)</option>
                    <option value="BN"  class="xans-record-">SHIPPING TO : 브루네이(나이)(BRUNEI DARUSSALAM)</option>
                    <option value="BI"  class="xans-record-">SHIPPING TO : 브룬디(BURUNDI)</option>
                    <option value="SA"  class="xans-record-">SHIPPING TO : 사우디아라비아(SAUDI ARABIA)</option>
                    <option value="CY"  class="xans-record-">SHIPPING TO : 사이프러스(CYPRUS)</option>
                    <option value="SM"  class="xans-record-">SHIPPING TO : 산마리노(SAN MARINO)</option>
                    <option value="SN"  class="xans-record-">SHIPPING TO : 세네갈(SENEGAL)</option>
                    <option value="RS"  class="xans-record-">SHIPPING TO : 세르비아/코소보(SERBIA/KOSOVO)</option>
                    <option value="SC"  class="xans-record-">SHIPPING TO : 세이셸(SEYCHELLES)</option>
                    <option value="LC"  class="xans-record-">SHIPPING TO : 세인트 루시아(SAINT LUCIA)</option>
                    <option value="VC"  class="xans-record-">SHIPPING TO : 세인트빈센트그레나딘(SAINT VINCENT AND THE GRENADINES)</option>
                    <option value="KN"  class="xans-record-">SHIPPING TO : 세인트키츠네비스(SAINT KITTS AND NEVIS)</option>
                    <option value="SB"  class="xans-record-">SHIPPING TO : 솔로몬아일란드(SOLOMON ISLANDS)</option>
                    <option value="SR"  class="xans-record-">SHIPPING TO : 수리남(SURINAME)</option>
                    <option value="LK"  class="xans-record-">SHIPPING TO : 스리랑카(SRI LANKA)</option>
                    <option value="SZ"  class="xans-record-">SHIPPING TO : 스와질랜드(SWAZILAND)</option>
                    <option value="SE"  class="xans-record-">SHIPPING TO : 스웨덴(SWEDEN)</option>
                    <option value="CH"  class="xans-record-">SHIPPING TO : 스위스(SWITZERLAND)</option>
                    <option value="ES"  class="xans-record-">SHIPPING TO : 스페인(에스파니아)(SPAIN)</option>
                    <option value="SK"  class="xans-record-">SHIPPING TO : 슬로바키아(SLOVAKIA)</option>
                    <option value="SI"  class="xans-record-">SHIPPING TO : 슬로베니아(SLOVENIA)</option>
                    <option value="SL"  class="xans-record-">SHIPPING TO : 시에라리온(SIERRA LEONE)</option>
                    <option value="SG"  class="xans-record-">SHIPPING TO : 싱가포르(SINGAPORE)</option>
                    <option value="AE"  class="xans-record-">SHIPPING TO : 아랍에미레이트연합국(UNITED ARAB EMIRATES)</option>
                    <option value="AM"  class="xans-record-">SHIPPING TO : 아르메니아(ARMENIA)</option>
                    <option value="AR"  class="xans-record-">SHIPPING TO : 아르헨티나(ARGENTINA)</option>
                    <option value="IS"  class="xans-record-">SHIPPING TO : 아이슬란드(ICELAND)</option>
                    <option value="HT"  class="xans-record-">SHIPPING TO : 아이티(HAITI)</option>
                    <option value="IE"  class="xans-record-">SHIPPING TO : 아일란드(에이레)(IRELAND)</option>
                    <option value="AZ"  class="xans-record-">SHIPPING TO : 아제르바이잔(AZERBAIJAN)</option>
                    <option value="AF"  class="xans-record-">SHIPPING TO : 아프가니스탄(AFGHANISTAN)</option>
                    <option value="AD"  class="xans-record-">SHIPPING TO : 안도라(ANDORRA)</option>
                    <option value="AL"  class="xans-record-">SHIPPING TO : 알바니아(ALBANIA)</option>
                    <option value="DZ"  class="xans-record-">SHIPPING TO : 알제리(ALGERIA)</option>
                    <option value="AO"  class="xans-record-">SHIPPING TO : 앙골라(ANGOLA)</option>
                    <option value="AG"  class="xans-record-">SHIPPING TO : 앤티과바부다(ANTIGUA AND BARBUDA)</option>
                    <option value="ER"  class="xans-record-">SHIPPING TO : 에리트리아(ERITREA)</option>
                    <option value="EE"  class="xans-record-">SHIPPING TO : 에스토니아(ESTONIA)</option>
                    <option value="EC"  class="xans-record-">SHIPPING TO : 에콰도르(ECUADOR)</option>
                    <option value="SV"  class="xans-record-">SHIPPING TO : 엘살바도르(EL SALVADOR)</option>
                    <option value="GB"  class="xans-record-">SHIPPING TO : 영국(UNITED KINGDOM)</option>
                    <option value="MS"  class="xans-record-">SHIPPING TO : 영국(몽세라)(MONTSERRAT)</option>
                    <option value="BM"  class="xans-record-">SHIPPING TO : 영국(버뮤다섬)(BERMUDA)</option>
                    <option value="VG"  class="xans-record-">SHIPPING TO : 영국(버진제도)(VIRGIN ISLANDS BRITISH)</option>
                    <option value="AI"  class="xans-record-">SHIPPING TO : 영국(안귈라섬)(ANGUILLA)</option>
                    <option value="GI"  class="xans-record-">SHIPPING TO : 영국(지브롤터)(GIBRALTAR)</option>
                    <option value="KY"  class="xans-record-">SHIPPING TO : 영국(케이만제도)(CAYMAN ISLANDS)</option>
                    <option value="TC"  class="xans-record-">SHIPPING TO : 영국(터크스케이코스제도)(TURKS AND CAICOS ISLANDS)</option>
                    <option value="YE"  class="xans-record-">SHIPPING TO : 예멘(YEMEN)</option>
                    <option value="OM"  class="xans-record-">SHIPPING TO : 오만(OMAN)</option>
                    <option value="NF"  class="xans-record-">SHIPPING TO : 오스트레일리아(노퍽섬)(NORFOLK ISLAND)</option>
                    <option value="AU"  class="xans-record-">SHIPPING TO : 오스트레일리아(호주)(AUSTRALIA)</option>
                    <option value="AT"  class="xans-record-">SHIPPING TO : 오스트리아(AUSTRIA)</option>
                    <option value="HN"  class="xans-record-">SHIPPING TO : 온두라스(HONDURAS)</option>
                    <option value="JO"  class="xans-record-">SHIPPING TO : 요르단(JORDAN)</option>
                    <option value="UG"  class="xans-record-">SHIPPING TO : 우간다(UGANDA)</option>
                    <option value="UY"  class="xans-record-">SHIPPING TO : 우루과이(URUGUAY)</option>
                    <option value="UZ"  class="xans-record-">SHIPPING TO : 우즈베크(UZBEKISTAN)</option>
                    <option value="UA"  class="xans-record-">SHIPPING TO : 우크라이나(UKRAINE)</option>
                    <option value="ET"  class="xans-record-">SHIPPING TO : 이디오피아(ETHIOPIA)</option>
                    <option value="IQ"  class="xans-record-">SHIPPING TO : 이라크(IRAQ)</option>
                    <option value="IR"  class="xans-record-">SHIPPING TO : 이란(IRAN(ISLAMIC REP))</option>
                    <option value="IL"  class="xans-record-">SHIPPING TO : 이스라엘(ISRAEL)</option>
                    <option value="EG"  class="xans-record-">SHIPPING TO : 이집트(EGYPT)</option>
                    <option value="IT"  class="xans-record-">SHIPPING TO : 이탈리아(이태리)(ITALY)</option>
                    <option value="IN"  class="xans-record-">SHIPPING TO : 인도(INDIA)</option>
                    <option value="ID"  class="xans-record-">SHIPPING TO : 인도네시아(INDONESIA)</option>
                    <option value="JP"  class="xans-record-">SHIPPING TO : 일본(JAPAN)</option>
                    <option value="JM"  class="xans-record-">SHIPPING TO : 자메이카(JAMAICA)</option>
                    <option value="ZM"  class="xans-record-">SHIPPING TO : 잠비아(ZAMBIA)</option>
                    <option value="CN"  class="xans-record-">SHIPPING TO : 중국(CHINA(PEOPLE'S REP))</option>
                    <option value="MO"  class="xans-record-">SHIPPING TO : 중국(마카오)(MACAU)</option>
                    <option value="HK"  class="xans-record-">SHIPPING TO : 중국(홍콩)(HONG KONG)</option>
                    <option value="CF"  class="xans-record-">SHIPPING TO : 중앙 아프리카(CENTRAL AFRICAN REPUBLIC)</option>
                    <option value="DJ"  class="xans-record-">SHIPPING TO : 지부티(DJIBOUTI)</option>
                    <option value="ZW"  class="xans-record-">SHIPPING TO : 짐바브웨(ZIMBABWE)</option>
                    <option value="TD"  class="xans-record-">SHIPPING TO : 차드(CHAD)</option>
                    <option value="CZ"  class="xans-record-">SHIPPING TO : 체코(CZECH REP)</option>
                    <option value="CL"  class="xans-record-">SHIPPING TO : 칠레(CHILE)</option>
                    <option value="CM"  class="xans-record-">SHIPPING TO : 카메룬(CAMEROON)</option>
                    <option value="CV"  class="xans-record-">SHIPPING TO : 카보베르데(CAPE VERDE)</option>
                    <option value="KZ"  class="xans-record-">SHIPPING TO : 카자흐(KAZAKHSTAN)</option>
                    <option value="QA"  class="xans-record-">SHIPPING TO : 카타르(QATAR)</option>
                    <option value="KH"  class="xans-record-">SHIPPING TO : 캄보디아(CAMBODIA)</option>
                    <option value="CA"  class="xans-record-">SHIPPING TO : 캐나다(CANADA)</option>
                    <option value="KE"  class="xans-record-">SHIPPING TO : 케냐(KENYA)</option>
                    <option value="CR"  class="xans-record-">SHIPPING TO : 코스타리카(COSTA RICA)</option>
                    <option value="CI"  class="xans-record-">SHIPPING TO : 코트디봐르(COTE D IVOIRE)</option>
                    <option value="CO"  class="xans-record-">SHIPPING TO : 콜롬비아(COLOMBIA)</option>
                    <option value="CG"  class="xans-record-">SHIPPING TO : 콩고(CONGO)</option>
                    <option value="CU"  class="xans-record-">SHIPPING TO : 쿠바(CUBA)</option>
                    <option value="KW"  class="xans-record-">SHIPPING TO : 쿠웨이트(KUWAIT)</option>
                    <option value="HR"  class="xans-record-">SHIPPING TO : 크로아티아(CROATIA)</option>
                    <option value="KG"  class="xans-record-">SHIPPING TO : 키르키즈스탄(KYRGYZSTAN)</option>
                    <option value="KI"  class="xans-record-">SHIPPING TO : 키리바티(KIRIBATI)</option>
                    <option value="TH"  class="xans-record-">SHIPPING TO : 타이(태국)(THAILAND)</option>
                    <option value="TW"  class="xans-record-">SHIPPING TO : 타이완(대만)(TAIWAN)</option>
                    <option value="TJ"  class="xans-record-">SHIPPING TO : 타지키스탄(TAJIKISTAN)</option>
                    <option value="TZ"  class="xans-record-">SHIPPING TO : 탄자니아(TANZANIA(UNITED REP))</option>
                    <option value="TR"  class="xans-record-">SHIPPING TO : 터키(TURKEY)</option>
                    <option value="TG"  class="xans-record-">SHIPPING TO : 토고(TOGO)</option>
                    <option value="TO"  class="xans-record-">SHIPPING TO : 통가(TONGA)</option>
                    <option value="TM"  class="xans-record-">SHIPPING TO : 투르크메니스탄(TURKMENISTAN)</option>
                    <option value="TV"  class="xans-record-">SHIPPING TO : 투발루(TUVALU)</option>
                    <option value="TN"  class="xans-record-">SHIPPING TO : 튀니지(TUNISIA)</option>
                    <option value="TT"  class="xans-record-">SHIPPING TO : 트리니다드토바고(TRINIDAD AND TOBAGO)</option>
                    <option value="PA"  class="xans-record-">SHIPPING TO : 파나마(PANAMA(REP))</option>
                    <option value="PY"  class="xans-record-">SHIPPING TO : 파라과이(PARAGUAY)</option>
                    <option value="PK"  class="xans-record-">SHIPPING TO : 파키스탄(PAKISTAN)</option>
                    <option value="PG"  class="xans-record-">SHIPPING TO : 파푸아뉴기니(PAPUA NEW GUINEA)</option>
                    <option value="PE"  class="xans-record-">SHIPPING TO : 페루(PERU)</option>
                    <option value="PT"  class="xans-record-">SHIPPING TO : 포르투갈(PORTUGAL)</option>
                    <option value="PL"  class="xans-record-">SHIPPING TO : 폴란드(POLAND(REP))</option>
                    <option value="FR"  class="xans-record-">SHIPPING TO : 프랑스(FRANCE)</option>
                    <option value="GP"  class="xans-record-">SHIPPING TO : 프랑스(과데루프섬)(GUADELOUPE)</option>
                    <option value="GF"  class="xans-record-">SHIPPING TO : 프랑스(기아나)(FRENCH GUIANA)</option>
                    <option value="NC"  class="xans-record-">SHIPPING TO : 프랑스(뉴칼레도니아섬)(NEW CALEDONIA)</option>
                    <option value="RE"  class="xans-record-">SHIPPING TO : 프랑스(레위니옹섬)(REUNION)</option>
                    <option value="MQ"  class="xans-record-">SHIPPING TO : 프랑스(마르티니크섬)(MARTINIQUE)</option>
                    <option value="PF"  class="xans-record-">SHIPPING TO : 프랑스(폴리네시아)(FRENCH POLYNESIA)</option>
                    <option value="FJ"  class="xans-record-">SHIPPING TO : 피지(FIJI)</option>
                    <option value="FI"  class="xans-record-">SHIPPING TO : 필란드(FINLAND)</option>
                    <option value="PH"  class="xans-record-">SHIPPING TO : 필리핀(PHILIPPINES)</option>
                    <option value="HU"  class="xans-record-">SHIPPING TO : 헝가리(HUNGARY(REP))</option>
                </select>
            </div>
            <div class="select">
                <select class="xans-element- xans-layout xans-layout-multishopshippinglanguagelist"><option value="asclo.com"  selected="selected" class="xans-record-">LANGUAGE : 한국어</option>
                    <option value="asclo.net"  class="xans-record-">LANGUAGE : English</option>
                </select>
            </div>
        </div>
        <div class="ec-base-button">
            <a href="#none"><img src="//img.echosting.cafe24.com/skin/base_ko_KR/link/btn_go.gif" alt="GO"/></a>
        </div>
        <a href="#none" class="close"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" width="13" height="13" alt="close"/></a>
    </div>
</div>
<div id="multi_option" style="display:none;"></div>
<form id="frm_image_zoom" style="display:none;"></form>
<script type="text/javascript">var sAuthSSLDomain = "login2.cafe24ssl.com";</script><script type="text/javascript" src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.js"></script><script type="text/javascript" src="https://login2.cafe24ssl.com/crypt/AuthSSLManager.plugin.js"></script>
<script type="text/javascript">

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-38230703-1']);
    _gaq.push(['_setDomainName', 'asclo.com']);
    _gaq.push(['_setAllowLinker', true]);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

</script>

<script type="text/javascript">
    /* <![CDATA[ */
    var google_conversion_id = 983431901;
    var google_custom_params = window.google_tag_params;
    var google_remarketing_only = true;
    /* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
    <div style="display:inline;">
        <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/983431901/?value=0&amp;guid=ON&amp;script=0"/>
    </div>
</noscript>


<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-74396203-1', 'auto');
    ga('send', 'pageview');

</script>

<script>
    try {
        // Account ID 적용
        if (!wcs_add) var wcs_add = {};
        wcs_add["wa"] = "s_273b77ed3670";

        // 마일리지 White list가 있을 경우
        wcs.mileageWhitelist = ["hi880515.cafe24.com", "www.hi880515.cafe24.com", "m.hi880515.cafe24.com", "asclo.com", "www.asclo.com", "m.asclo.com"];

        // 네이버 페이 White list가 있을 경우
        wcs.checkoutWhitelist = ["hi880515.cafe24.com", "www.hi880515.cafe24.com", "m.hi880515.cafe24.com", "asclo.com", "www.asclo.com", "m.asclo.com"];

        // 레퍼러 (스크립트 인젠션 공격 대응 strip_tags) ECQAINT-15101
        wcs.setReferer("");

        // 유입 추적 함수 호출
        wcs.inflow("asclo.com");

        // 로그수집
        wcs_do();
    } catch (e) {};
</script>


<!-- External Script Start -->

<!-- crt -->
<!-- CMC script -->
<div id="crt_product_detail_script" style="display:none;">
    <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
    <script type="text/javascript">
        window.criteo_q = window.criteo_q || [];
        window.criteo_q.push(
            { event: "setAccount", account: "18298"},

            { event: "setSiteType", type: "d" },
            { event: "viewItem", item: "9787" }
        );
    </script>
</div>
<!-- CMC script -->

<!-- fbe -->
<!-- CMC script -->
<div id="fbe_common_top_script" style="display:none;">
    <!-- Facebook Pixel Code -->
    <script>
        if(! window.top.fbe_init_activated) {
            !function(f,b,e,v,n,t,s)
            {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
                n.callMethod.apply(n,arguments):n.queue.push(arguments)};
                if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
                n.agent='plcafe24_kr';n.queue=[];t=b.createElement(e);t.async=!0;
                t.src=v;s=b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t,s)}(window, document,'script',
                'https://connect.facebook.net/en_US/fbevents.js');
            fbq('init', '829030643890604');
            fbq('track', 'PageView');
            window.top.fbe_init_activated = true;
        }
    </script>
    <noscript><img height="1" width="1" style="display:none"
                   src="https://www.facebook.com/tr?id=829030643890604&ev=PageView&noscript=1"
    /></noscript>
    <!-- End Facebook Pixel Code -->
</div>
<!-- CMC script --> <!-- CMC script -->
<div id="fbe_product_detail_script" style="display:none;">
    <script>
        if(! window.top.fbe_viewcontent_activated) {
            fbq('track', 'ViewContent', {
                content_name: '울 블렌디드 오드체크 자켓(Wool 60%)',
                content_category: '56',
                content_ids: ['9787'],
                content_type: 'product',
                value: 92000,
                currency: 'KRW'
            });
            window.top.fbe_viewcontent_activated = true;
        }
    </script>
</div>
<!-- CMC script -->
<!-- External Script End -->

<script type="text/javascript" src="https://checkout.naver.com/customer/js/checkoutButton.js" charset="utf-8"></script>
<script type="text/javascript" src="//asclo.com/ind-script/i18n.php?lang=ko_KR&domain=front&v=1911201087" charset="utf-8"></script>

<script type="text/javascript" src="/ind-script/optimizer.php?filename=tZXNbtswDMdfwNc9h5Bhh51boKcNAzb0AWiJtplQokpJbbOnH5N1Q7PNSQ0v8EEAwd-fEr_sJonoNu_VDQoRn0R3TrFIU49uWxxtPqZuW965c36NMvid2z401P3Lsek-2HdCZpXR4BP9kpVSHS47BvEtYqp3ovFWUlVhRr3MDWrO7hmSvSVV1KxYF3IVY2ao-G8IcnafpSdG9_UV7yVGSa5V4kVclNDMVJ4oLws4tOQrWUjzC83XLoquVDhzCabe3f8s-2sJhu97FgiLoNgqHOJ-6Qvq41xxZuAsvB-I-a0VDThA43pIQYmg9QZS-jPkxRbHZ-uhBFxeDF0_0hFaq-NFdrRaJZBNSrGMlrVKCIXSuFYlYoUAFea78UZAw0ldzdr1B-s89G2SfMLcHSt8e5y8-7ODN4MWBPXTov6rMAz2Qlq6JTO3kWy5PAKT5Ub0V7J-G1YLHuqQQvlb2BSyNQdeL8KEnPGKL5ggBb5mAFtDZHW9mr6trPof7s_iwbb4Ti6vv5m-estA2b9vFN1_olIN_gE&type=js&k=81cead6b99ffa3a78f6503851e2d2fd76af38afb&t=1573582632"></script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=rdVfT8MgEADwDzBf_RxEv4Hr1CwxblnV9xNuHStweIBzfnpZs_gnzgcLD6S9NvfjypEiNmRRXFyy8EwdgxXgvWg35MUKAyWWKLZB3DC5KO5xJ-50j2LKtAvIDcgNnm3DuRilNGQtudL8BiJ2xPtRzgpfNe4imP5421By8TRl9LN41B5k_wNrEjM6uRchTzPxrCUW5MtjNFkTWyiupBaTojanEf6WuR7WVVLy5I6XUV3ZviQcGjoyP4-Fcf2o3IWPOld__RYZBmiIh7AloyjF2uzy7y0zHp1b6KqjMx28gb2OaCvS88y12nUGWzQoD4_qF84ZnkLosah9n2rBr-s35UIVaKqdqgLNIEIV6AmMVjC6oXksmVSSce7W9G-i1e94m7TCwskLev2FXMkKy_BA-aS6UqoFU_pR-X0k2Qd72Hsf&type=js&k=2096a060de5a27117829b615b27693cf70113f83&t=1570645809"></script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=rZTBbsMgDIYfYLvuOdD2Bk2iSpPSdmsm7UyJldAARgZW9e1H1x7aQ4sCO4RDxP_5t7HNRtTAXt-IWcKBuGbcWtaNaNkWHAYSwPaOLQmNZ2s4sFZOwGrUGs0HYR-Ef967FzYHc9GxBjyXilXB9AriT41eopmNW_MfoJVUwAeYLa7k0HDPWxzmx43ViN8lmxoVkhilLeQ0kkD4Khxzy_quc-pwa6LzKKZCxsbmveYNZBmf9V9AWxBgslt10ffyZIKrXMIWFM9K46L_NDxXehrWu7nTlWoR_Nh1bfqi5ib2GNMYHDz1xB_Mzup89drcAXbq3rhdRxm9VtF3LDy4WQG4OxpxPrN1GvQOKFu-oR5IPGq4BKDibgJfTrAkBRQykns-QakxWDQluSS3e0LfgEUn8-N_Sze20pUBBIaCElBigSXk5_33hZ6rusjHX2dH9S8&type=js&k=a35c35421bd525f3f33fd3c9f3fc95887a66df5c&t=1572979691"></script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=rdNLbgMhDAbgA0y2PYebSJGybbtoF4kSNSdwwB2cAUx4TDS37-Sldls6G2Dzf9gWgBFHMF9ECFHaiA4wBNigx5bgk5KUqAiOCTANXt3W2St5-uI8O6YnqMpj6iivcaBYbbxH1FSdfilZHGZWV2Zv5FxNbYrNvJNQQj0xrLmjXRRdVH6T4utHu-aeLPtOfDWxjZriB6cscagtJmA2USw1PVrWOFL1HQnqP4XDbY4_GVJNSRQTGF6tnpfzJYRysKwak52FpKnRlLj1kDr2i_nFcCNh6UE99obdeNmUcKSe6TylePJYz1kcpGQ4YGJ1sa-Hf1WnxLnfb7G-wXttp8Kqa6aa2h11lz-cjIS94RDYtxPaCjO141cayW8&type=js&k=4eb32d9fe292d9db790603d730431535d7e7be02&t=1553019210"></script>
<script type="text/javascript">
    var EC_MOBILE = false;
    var EC_MOBILE_DEVICE = false;
    var EC_MOBILE_USE = true;
    var mobileWeb = false;
    var sSearchBannerUseFlag = 'F';
    EC_SHOP_FRONT_NEW_LIKE_COMMON.init({"bIsUseLikeProduct":false,"bIsUseLikeCategory":false});
    EC_SHOP_FRONT_REVIEW_TALK_REVIEW_COUNT.bIsReviewTalk = 'F';
    var bIsDisplaySoldoutOption =true;
    var aSoldoutDisplay = {"9787":"\ud488\uc808"};
    var aReserveStockMessage = {"show_stock_message":"F","Q":"[\uc7ac\uace0 : [:\uc218\ub7c9:]\uac1c][\ub2f9\uc77c\ubc1c\uc1a1]","R":"[\uc7ac\uace0 : [:\uc218\ub7c9:]\uac1c][\uc608\uc57d\uc8fc\ubb38]","N":"","stock_message_replace_name":"[:\uc218\ub7c9:]"};
    var SHOP_CURRENCY_INFO = {"1":{"aShopCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"aShopSubCurrencyInfo":null,"aBaseCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"fExchangeRate":1,"fExchangeSubRate":null,"aFrontCurrencyFormat":{"head":"KRW ","tail":""},"aFrontSubCurrencyFormat":{"head":"","tail":""}}};
    var mileage_val = '900';var mileage_generate_calc = '900';
    var basket_type = 'A0000';var product_name = '울 블렌디드 오드체크 자켓(Wool 60%)';var product_max_type = 'F';var has_option = 'T';var mileage_icon = '//img.echosting.cafe24.com/design/common/icon_cash.gif';var mileage_icon_alt = '적립금';var price_unit_head = 'KRW ';var price_unit_tail = '';var option_push_button = 'F';var product_image_tiny = '20191122/5510b29472eccd94d36b9a241d73fd8f.jpg';var is_adult_product = 'F';var is_individual_buy = 'F';var is_soldout_icon = 'F';var link_product_detail = '/product/울-블렌디드-오드체크-자켓wool-60/9787/display/2/';var sIsNonmemberLimit = 'F';
    var product_min = '1';var order_limit_type = 'O';
    var product_max = '-1';
    var buy_unit_type = 'O';var buy_unit = '1';
    var product_price = '92000';var product_price_content = '';var is_selling_price = 'S';var product_price_mobile = '92000';var mobile_dc_price = '';var isMobileDcStatus = 'F';var product_price_ref = '';var currency_disp_type = 'P';
    var delvtype = 'A';
    $.data(document,'SameImage','F');
    var _iPrdtPriceOrg = 83636;
    var _iPrdtPriceTax = 8364;
    var qrcode_class = 'EC_Qrcode5dd7b10714b2a';
    var qrcode_url = 'http://asclo.com/product/울-블렌디드-오드체크-자켓wool-60/9787/category/1/display/2/';
    var sSocialUrl="/exec/front/Product/Social/";
    var sIsMileageDisplay = 'F';
    EC_SHOP_FRONT_NEW_OPTION_COMMON.initObject();
    EC_SHOP_FRONT_NEW_OPTION_BIND.initChooseBox();
    EC_SHOP_FRONT_NEW_OPTION_DATA.initData();
    var sMileageUnit = '[:PRICE:]원';
    var sIsDisplayNonmemberPrice = "F";
    var sNonmemberPrice = '-';
    var _iPrdtPriceOrg = 83636;
    var _iPrdtPriceTax = 8364;
    var option_type = 'T';var option_name_mapper = '사이즈';var option_stock_data = '{\"P0000OML000A\":{\"stock_price\":\"0.00\",\"use_stock\":false,\"use_soldout\":\"F\",\"is_display\":\"T\",\"is_selling\":\"T\",\"option_price\":92000,\"option_name\":\"\\uc0ac\\uc774\\uc988\",\"option_value\":\"M\",\"stock_number\":0,\"option_value_orginal\":[\"M\"],\"use_stock_original\":\"T\",\"use_soldout_original\":\"F\",\"use_soldout_today_delivery\":\"F\",\"is_auto_soldout\":\"F\",\"is_mandatory\":\"T\",\"option_id\":\"000A\",\"is_reserve_stat\":\"N\",\"item_image_file\":null,\"origin_option_added_price\":\"0.00\"},\"P0000OML000B\":{\"stock_price\":\"0.00\",\"use_stock\":false,\"use_soldout\":\"F\",\"is_display\":\"T\",\"is_selling\":\"T\",\"option_price\":92000,\"option_name\":\"\\uc0ac\\uc774\\uc988\",\"option_value\":\"L\",\"stock_number\":0,\"option_value_orginal\":[\"L\"],\"use_stock_original\":\"T\",\"use_soldout_original\":\"F\",\"use_soldout_today_delivery\":\"F\",\"is_auto_soldout\":\"F\",\"is_mandatory\":\"T\",\"option_id\":\"000B\",\"is_reserve_stat\":\"N\",\"item_image_file\":null,\"origin_option_added_price\":\"0.00\"}}';var stock_manage = '';var option_value_mapper = '{\"M\":\"P0000OML000A\",\"L\":\"P0000OML000B\"}';var item_count = '2';var item_listing_type = 'S';var product_option_price_display = 'T';
    var add_option_name = '';
    var _isProc = "T";
    var is_order_page = "P";
    nhn.CheckoutButton.apply({
        EMBED_ID: "NaverChk_Button",
        BUTTON_KEY:"8A6B208B-D666-4205-8B4A-3C285BFCD562",
        TYPE: "A",
        COLOR: "1",
        COUNT: "2",
        ENABLE: "Y",
        BUY_BUTTON_HANDLER:nv_add_basket_1_product,
        WISHLIST_BUTTON_HANDLER:nv_add_basket_2_product,
        "":""
    });
    $(document).ready(function()
    {
        var oOptionSelectLayer = parent.document.getElementById("capp-shop-new-product-optionselect-layer");
        if (oOptionSelectLayer) {
            $(oOptionSelectLayer).height($(oOptionSelectLayer).height() + 88);
        }
    });
    var iProductNo = '9787';var iCategoryNo = '1';var iDisplayGroup = '2';var option_msg = '필수 옵션을 선택해 주세요.';var sLoginURL = 'login.jsp';var bPrdOptLayer = '';var sOptionType = 'T';
    var bIsDisplaySoldoutOption =true;
    var aSoldoutDisplay = {"9787":"\ud488\uc808","9777":"\ud488\uc808"};
    var bIsDisplaySoldoutOption =true;
    var aSoldoutDisplay = {"9787":"\ud488\uc808","9777":"\ud488\uc808","9746":"\ud488\uc808"};
    var sOptionValueMapper9777 = '{\"Black\":\"P0000OMB000A\",\"Gray\":\"P0000OMB000B\",\"Beige\":\"P0000OMB000C\"}';
    var sOptionValueMapper9746 = '{\"Black#$%S\":\"P0000OKW000A\",\"Black#$%M\":\"P0000OKW000B\",\"Black#$%L\":\"P0000OKW000C\",\"Gray#$%S\":\"P0000OKW000D\",\"Gray#$%M\":\"P0000OKW000E\",\"Gray#$%L\":\"P0000OKW000F\"}';
    var relation_product = '{\"4538\":{\"buy_unit\":1,\"product_min\":1,\"product_max\":0},\"9777\":{\"buy_unit\":1,\"product_min\":1,\"product_max\":0},\"9746\":{\"buy_unit\":1,\"product_min\":1,\"product_max\":0}}';
    var EC_SHOP_MULTISHOP_SHIPPING = {"bMultishopShipping":false,"bMultishopShippingCountrySelection":false,"bMultishopShippingLanguageSelection":false};
    var aLogData = {"log_server1":"eclog2-081.cafe24.com","log_server2":"eclog2-081.cafe24.com","mid":"hi880515","stype":"e","domain":"","shop_no":1,"etc":""};
    var sMileageName = '적립금';
    var sMileageUnit = '[:PRICE:]원';
    var sDepositName = '예치금';
    var sDepositUnit = '원';
    var EC_ASYNC_LIVELINKON_ID = '';
    var EC_FRONT_JS_CONFIG_MANAGE = {"sSmartBannerScriptUrl":"https:\/\/app4you.cafe24.com\/SmartBanner\/tunnel\/scriptTags?vs=1563164396689206","sMallId":"hi880515","sDefaultAppDomain":"https:\/\/app4you.cafe24.com","sWebLogEventFlag":"F"};
    var EC_FRONT_JS_CONFIG_MEMBER = {"sAuthUrl":"https:\/\/i-pin.cafe24.com\/certify\/1.0\/?action=auth"};
    var EC_FRONT_JS_CONFIG_SHOP = {"bDirectBuyOrderForm":false,"bECUseItemSalePrice":false,"sCouponDownloadPage":"\/coupon\/coupon_productdetail.html","aOptionColorchip":[]};
</script></body></html>