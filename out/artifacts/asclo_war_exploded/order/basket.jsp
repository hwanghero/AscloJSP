<%@ page import="java.util.ArrayList" %>
<%@ page import="Member.AscloSQL" %>
<%@ page import="com.jcraft.jsch.JSchException" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page language ="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
    try {
        AscloSQL MICA = AscloSQL.getInstance();
    } catch (JSchException | ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }

    int count = 0;
    try{
        count = (int)session.getAttribute("Basket_count");
    }catch(Exception e){
    }

    ArrayList<String[][]> list = (ArrayList) session.getAttribute("productlist");
    String[][] strings;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8"/><meta http-equiv="X-UA-Compatible" content="IE=edge"/><!-- PG크로스브라우징필수내용 --><meta http-equiv="Cache-Control" content="no-cache"/><meta http-equiv="Expires" content="0"/><meta http-equiv="Pragma" content="no-cache"/><!-- // PG크로스브라우징필수내용 --><!-- 해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요. --><!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. --><link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"/><link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet"/><span itemscope="" itemtype="http://schema.org/Organization">
  <link itemprop="url" href="http://asclo.com">
  <a itemprop="sameAs" href="https://www.instagram.com/hi880515/">
  <a itemprop="sameAs" href="https://www.facebook.com/hi880515"></a>
  <a itemprop="sameAs" href="https://itunes.apple.com/kr/app/id1213633181"></a>
  <a itemprop="sameAs" href="https://play.google.com/store/apps/details?id=com.asclo.byapps"></a>
 </span>
    <link rel="canonical" href="http://asclo.com/order/basket.html" />
    <link rel="alternate" href="http://m.asclo.com/order/basket.html" />
    <meta property="og:url" content="http://asclo.com/order/basket.html" />
    <meta property="og:site_name" content="애즈클로" />
    <meta property="og:type" content="website" />
    <link rel="shortcut icon" href="/web/upload/favicon_20141006131340.ico" />
    <meta http-equiv="ImageToolbar" content="No">
    <script type="text/javascript" src="/app/Eclog/js/cid.generate.js?vs=3d0b473968a0ec4ec41e3bf59df3aa51"></script>
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

    <link rel="stylesheet" type="text/css" href="//asclo.com/ind-script/optimizer.php?filename=tdXBTgQhDAbg-65Xn6PuJpvsK3gz8QkYpgPNACW0qPv2MupBsxdd4TiEfiWE_gOeI8LhWCAXdsVEKChci0WwIrAUTgqWY-R01xbu4Tf70e6EQ1XitJv47cbCqnpr02AuWG4rVTMF_FaKdl8Fi4Cn8_nhdDhBrlMgu_caA8iM-xmFXAJZKR0P0FpzVZiMkP1o0fD2gVdn-iu8WZHnGhC4zFi2Fivqk7GrcdgTnu1jWriPGC_iOcMriQ8k2vNir17lv8XPhZ7i5EY8pUojVGUOSnkE7TEMcdtMz9XqENo4SkaHREHLmBHsVWL2k3-EeM97GJO1bZvtk19fLWJto7El2bOnnCm5rrrl9NKA9vvJfY8d2LFy7mqKtqnY4GXZ3Hc&type=css&k=e3dd47db25602e0df173149dab64d26986694ed8&t=1548839631" />
    <link rel="stylesheet" type="text/css" href="//asclo.com/ind-script/optimizer.php?filename=rdBBCsMgEIXhA9htz_GaQiBHaI9hnIlK1SkzusjtG-gVXD_4ePxIUhkc3DBWQ8rb9liXFd-xlxxc6rXAiB2x5dhgn9yeC4IZqtAojOJPGR3WfeciUdrtGu-YxO7ild7tkKmqsdeQXuyJdSocrghR9JyKHiL9__MH&type=css&k=c272d79f188d419fdfbb5816e36e5335618d0712&t=1548831488" />

    <title>애즈클로</title>
    <meta name="path_role" content="ORDER_BASKET" />
    <meta name="author" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰" />
    <meta name="description" content="데일리룩의 정석, 남친룩, 오버핏, 루즈핏, 코디, 남성의류 쇼핑몰" />
    <meta name="keywords" content="남성의류,남자옷,남자쇼핑몰,남자데일리룩,남자유니크쇼핑몰,데일리룩쇼핑몰,데일리룩,애즈클로,남자상의,남자코트,남자바지,오버핏,루즈핏,코트,데님자켓,청자켓,스키니팬츠,남자스키니,남자데님팬츠,OOTD,dailylook,린넨셔츠,남자여름코디,남자봄코디,남자가을코디,남자겨울코디" /></head><body><div id="skipNavigation">
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
                <h1 class="xans-element- xans-layout xans-layout-logotop "><a href="/index.jsp"><img src="../logo.png"/></a>
                </h1>
                <!-- 상단로고 -->
            </div>

            <div class="xans-element- xans-layout xans-layout-statelogoff toplog "><a href="/member/login.html" class="log">LOGIN</a>
                <a href="/member/join.html">JOIN US</a>
                <%//카운터
                    out.println("<a href=\"/order/basket.jsp\">CART <span class=\"count\">(<span class=\"EC-Layout-Basket-count\">"+count+"</span>)</span></a>");
                %>

                <a href="/myshop/order/list.html">ORDER</a>
                <a href="/myshop/index.html">MYPAGE</a>
            </div>


            <div class="topboard">
                <a href="/link/bookmark.html" target="_blank" onclick="winPop(this.href); return false;">BOOKMARK</a>
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

            <div class="xans-element- xans-layout xans-layout-boardinfo topboard"><a href="/board/notice/1/" class="xans-record-">NOTICE</a>
                <a href="/board/faq/3/" class="xans-record-">FAQ</a><a href="/board/qa/6/" class="xans-record-">Q&A</a><a href="/board/review/4/" class="xans-record-">REVIEW</a><a href="/board/membership/1002/" class="xans-record-">MEMBERSHIP</a></div>

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
            <ul><li class="xans-element- xans-layout xans-layout-logotop snblogo "><a href="/index.html"><img src="/web/mobile/newDesign/1198160145a3cb3a39f610.png"/></a>
            </li>
                <!-- 모바일 로고 주소로 불러옴 -->
                <li class="xans-record-"><a href="/product/list.html?cate_no=274"><img src="//asclo.com/web/upload/category/shop1_274_menu_541927.png"  id="cate_img_274" alt="SALE" rollover="//asclo.com/web/upload/category/shop1_274_menu_over_188928.png" /></a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=243">ONLY ASCLO</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=273">THANKS</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=56">OUTER</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=190">KNIT</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=57">TOP</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=59">BOTTOM</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=58">SHIRT</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=213">SUIT</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=194">SHOES</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=60">ACC</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=247">PERFECT LINE</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=260">+5CM</a></li>
                <li class="xans-record-"><a href="/product/list.html?cate_no=265">ASCLO FIT</a></li>
            </ul>
            <div id="snbBoard">
                <a href="/board/index.html">COMMUNITY</a>
                <div class="xans-element- xans-layout xans-layout-boardinfo snbBbox"><a href="/board/notice/1/" class="xans-record-">NOTICE</a>
                    <a href="/board/faq/3/" class="xans-record-">FAQ</a>
                    <a href="/board/qa/6/" class="xans-record-">Q&A</a>
                    <a href="/board/review/4/" class="xans-record-">REVIEW</a>
                    <a href="/board/membership/1002/" class="xans-record-">MEMBERSHIP</a>
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

            <div class="path">
                <span>현재 위치</span>
                <ol><li><a href="/">home</a></li>
                    <li title="현재 위치"><strong>basket</strong></li>
                </ol></div>

            <div class="titleArea">
                <h2>shopping cart</h2>
            </div>

            <div class="xans-element- xans-order xans-order-basketpackage "><div class="xans-element- xans-order xans-order-tabinfo ec-base-tab grid2 typeLight "><ul class="menu">
                <li class="selected "><a href="/order/basket.jsp">국내배송상품 (<%=count%>)</a></li>
                <li class=" "><a href="/order/basket.jsp?delvtype=B">해외배송상품 (0)</a></li>
            </ul>
                <p class="right displaynone">장바구니에 담긴 상품은 7일 동안 보관됩니다.</p>
            </div>
                <div class="orderListArea ec-base-table typeList gBorder">
                    <div class="xans-element- xans-order xans-order-normtitle title "><h3>일반상품 (1)</h3>
                    </div>

                    <table border="1" summary="" class="xans-element- xans-order xans-order-normnormal xans-record-"><caption>기본배송</caption>
                        <colgroup>
                            <col style="width:27px"/>
                            <col style="width:92px"/>
                            <col style="width:auto"/>
                            <col style="width:98px"/>
                            <col style="width:75px"/>
                            <col style="width:98px"/>
                            <col style="width:98px"/>
                            <col style="width:85px"/>
                            <col style="width:98px"/>
                            <col style="width:110px"/>
                        </colgroup>
                        <thead><tr>
                            <th scope="col"><input type="checkbox" onclick="Basket.setCheckBasketList('basket_product_normal_type_normal', this);"/></th>
                            <th scope="col">이미지</th>
                            <th scope="col">상품정보</th>
                            <th scope="col">판매가</th>
                            <th scope="col">수량</th>
                            <th scope="col" class="mileage">적립금</th>
                            <th scope="col">배송구분</th>
                            <th scope="col">배송비</th>
                            <th scope="col">합계</th>
                            <th scope="col">선택</th>
                        </tr></thead>
                        <tfoot class="right"><tr>
                            <td colspan="10">
                                <span class="gLeft">[기본배송]</span> 상품구매금액 <strong>상품총금액<span class="displaynone">()</span></strong><span class="displaynone"> </span><span class="displaynone"> + 부가세 <span class="displaynone"> </span></span> + 배송비 <span id="normal_normal_ship_fee">2,500</span><span class="displaynone"> </span> <span id="normal_normal_benefit_price_area" class="displaynone"> - 상품할인금액 <span id="normal_normal_benefit_price">3,700</span> </span> = 합계 : <strong class="gIndent10">KRW <span id="normal_normal_ship_fee_sum">결과</span></strong> <span class="displaynone"> </span>
                            </td>

                        </tr></tfoot>
                        <!--
                        <tbody class="xans-element- xans-order xans-order-list center">
                        <tr class="xans-record-">
                            <td><input type="checkbox" id="basket_chk_id_0" name="basket_product_normal_type_normal"/></td>
                            <td class="thumb gClearLine"><a href="/product/detail.html?product_no=8328&cate_no=1"><img src="//asclo.com/web/product/tiny/201810/314a699b3e65ae39cd8824ab421ff266.jpg" onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';" alt="+5cm 블랙 데님팬츠 (2011)"/></a></td>
                            <td class="left gClearLine">
                                <strong class="name"><a href = "/product/5cm-블랙-데님팬츠-2011/8328/category/1/" class="ec-product-name" >샘플 타이틀</a></strong>
                            </td>
                            <td>
                                <div id="product_price_div0" class="discount0">
                                    <strong>KRW 가격</strong>
                                </div>
                            </td>
                            <td>
                        <span class="">
                            <span class="ec-base-qty"><input id="quantity_id_0" name="quantity_name_0" size="2" value="1" type="text"  /><a href="javascript:;" onclick="Basket.addQuantityShortcut('quantity_id_0', 0);"><img src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_up.gif" alt="수량증가" class="up"/></a><a href="javascript:;" onclick="Basket.outQuantityShortcut('quantity_id_0', 0);"><img src="//img.echosting.cafe24.com/skin/base/common/btn_quantity_down.gif" alt="수량감소" class="down"/></a></span>
                            <a href="javascript:;" class="btnBasic gBlank5" onclick="Basket.modifyQuantity()">변경</a>
                        </span>
                            </td>
                            <td><span id="product_mileage0">-</span></td>
                            <td><div>기본배송<br/></div></td>
                            <td rowspan="1" class="">
                                <p class="">KRW 2,500<span class="displaynone"><br/></span><br/></p>조건</td>
                            <td>
                                <strong>KRW <span id="sum_price_front0">합계</span></strong><div class="displaynone"></div>
                            </td>
                            <td class="button">
                                <a href="javascript:;" class="btnEm" onclick="Basket.orderBasketItem(0);">주문하기</a>
                                <a href="javascript:;" class="btnBasic" onclick="Basket.deleteBasketItem(0);"><i class="icoDelete"></i> 삭제</a>
                            </td>
                        </tr>
                        </tbody>
                        -->
                        <script>
                            // 수정버튼
                            function modifyQuantity(id) {
                                var get_count_value = document.getElementsByName("quantity_name")[id].value;
                                location.href = 'basket_modify.jsp?id='+id+'&amount='+get_count_value;
                            }

                            //삭제버튼
                            function deleteBasketItem(id){
                                location.href = 'basket_delete.jsp?id='+id;
                                alert(id);
                            }
                        </script>



                        <%
                            int total_price = 0;
                            DecimalFormat df = new DecimalFormat("###,###");

                            if(list != null){
                                for (int i = 0; i < list.size(); i++) {
                                    strings = list.get(i);
                                    String title = AscloSQL.getDress(Integer.parseInt(strings[i][0]), 0);
                                    String price = AscloSQL.getDress(Integer.parseInt(strings[i][0]), 3);
                                    String img = AscloSQL.getDress(Integer.parseInt(strings[i][0]), 2);

                                    int df_pirce = Integer.parseInt(price);
                                    out.println("<tbody class=\"xans-element- xans-order xans-order-list center\">\n" +
                                            "<tr class=\"xans-record-\">\n" +
                                            "<td><input type=\"checkbox\" id=\"basket_chk_id_1\" name=\"basket_product_normal_type_normal\"/></td>\n" +
                                            "<td class=\"thumb gClearLine\"><a href=\"/board/dress_show.jsp?num="+strings[i][0]+
                                             "\"><img src=\"//l.bsks.ac.kr/~p201606010/asclo_dress/"+img+"\" onerror=\"this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';\" alt=\"상품 제목\"/></a></td>\n" +
                                            "<td class=\"left gClearLine\">\n" +
                                            "<strong class=\"name\"><a href = \"/board/dress_show.jsp?num="+strings[i][0]+"\" class=\"ec-product-name\" >"+title+"</a></strong>\n" +
                                            "</td>\n" +
                                            "<td>\n" +
                                            "<div id=\"product_price_div1\" class=\"discount0\">\n" +
                                            "<strong>KRW "+df.format(df_pirce)+"</strong>\n" +
                                            "</div>\n" +
                                            "</td>\n" +
                                            "<td>\n" +
                                            "<span class=\"\">\n" +
                                            "<span class=\"ec-base-qty0\"> <input id=\"quantity_id_"+i+"\" name=\"quantity_name\" size=\"2\" value=\""+strings[i][1]+"\" type=\"text\"</span>\n" +
                                            "<a href=\"javascript:;\" class=\"btnBasic gBlank5\" onclick=\"modifyQuantity("+i+")\">변경</a>\n" +
                                            "</span>\n" +
                                            "</td>\n" +
                                            "<td><span id=\"product_mileage1\">-</span></td>\n" +
                                            "<td><div>기본배송<br/></div></td>\n" +

                                            "<td rowspan=\"1\" class=\"\">\n" +
                                            "<p class=\"\">무료<span class=\"displaynone\"><br/></span>\n" +
                                            "<td>\n" +
                                            "<strong>KRW <span id=\"sum_price_front1\">"+ df.format(df_pirce * Integer.parseInt(strings[i][1])) +"</span></strong>\n" +
                                            "</td>\n" +
                                            "<td class=\"button\">\n" +
                                            "<a href=\"javascript:;\" class=\"btnEm\" onclick=\"Basket.orderBasketItem(0);\">주문하기</a>\n" +
                                            "<a href=\"javascript:;\" class=\"btnBasic\" onclick=\"deleteBasketItem("+i+");\"><i class=\"icoDelete\"></i> 삭제</a>\n" +
                                            "</td>\n" +
                                            "</tr>\n" +
                                            "</tbody>\n");
                                    total_price += Integer.parseInt(price) * Integer.parseInt(strings[i][1]);
                                }
                            }else{
                               // out.print("장바구니 없음");
                            }
                        %>
                </div>
                <div class="orderListArea ec-base-table typeList gBorder">


                </div>
                <div class="xans-element- xans-order xans-order-basketpriceinfoguide  "><p class="info ">할인 적용 금액은 주문서작성의 결제예정금액에서 확인 가능합니다.</p>
                    <p class="info displaynone">결제예정금액은 배송비가 포함된 금액이므로 주문서작성에서 확인 가능합니다.</p>
                    <p class="info displaynone">추가증정 이벤트 상품의 옵션 및 수량 변경은 상품상세에서 가능합니다.</p>
                </div>
                <div class="xans-element- xans-order xans-order-selectorder ec-base-button "><span class="gLeft">
            <strong class="text">선택상품을</strong>
            <a href="#none" class="btnNormal" onclick="Basket.deleteBasket()"><i class="icoDelete"></i> 삭제하기</a>
            <a href="#none" onclick="Basket.addWishList()" class="btnNormal displaynone">관심상품등록</a>
            <a href="#none" onclick="Basket.moveOversea()" class="btnNormal ">해외배송상품 장바구니로 이동</a>
            <a href="#none" onclick="Basket.hopeProduct(''); return false;" class="btnNormal displaynone">상품조르기</a>
        </span>
                    <span class="gRight">
            <a href="#none" onclick="Basket.orderStorePickupSelectBasket(this)" class="btnNormal displaynone" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html">스토어픽업 상품 선택</a>
            <a href="#none" class="btnNormal" onclick="Basket.emptyBasket()">장바구니비우기</a>
            <a href="#none" class="btnNormal" onclick="Basket.estimatePrint(this)" link="/estimate/userform.html">견적서출력</a>
        </span>
                </div>
                <!-- 총 주문금액 : 국내배송상품 -->
                <div class="xans-element- xans-order xans-order-totalsummary ec-base-table typeList gBorder total  "><table border="1" summary="">
                    <caption>총 주문금액</caption>
                    <colgroup>
                        <col style="width:17%;"/>
                        <col style="width:17%;" class="displaynone"/>
                        <col style="width:19%;"/>
                        <col style="width:17%;" class="displaynone"/>
                        <col style="width:auto;"/>
                    </colgroup>
                    <thead><tr>
                        <th scope="col"><strong>총 상품금액</strong></th>
                        <th scope="col" class="displaynone"><strong>총 부가세</strong></th>
                        <th scope="col"><strong>총 배송비</strong></th>
                        <th scope="col" id="total_benefit_price_title_area" class="displaynone">
                            <strong>총 할인금액</strong> <a href="#none" class="btnNormal" onclick="OrderLayer.onDiv('order_layer_benefit', event);">내역보기</a>
                        </th>
                        <th scope="col"><strong>결제예정금액</strong></th>
                    </tr></thead>
                    <tbody class="center"><tr>
                        <td><div class="box txt16">
                            <strong>KRW <span class="txt23"><%=df.format(total_price)%></span></strong> <span class="txt14 displaynone"></span>
                        </div></td>
                        <td>
                            <div class="box shipping txt16">
                                <strong class="txt23">+ </strong><strong>KRW <span id="total_delv_price_front" class="txt23">0</span></strong> <span class="txt14 displaynone"></span>
                                <div class="shippingArea displaynone">(<span></span>
                                    <div class="shippingFee">
                                        <a href="#none" class="btnNormal" id="">자세히</a>)
                                        <div class="ec-base-tooltip">
                                            <h3>배송비할인</h3>
                                            <div class="content">
                                                <h4></h4>
                                                <table border="1" summary="">
                                                    <caption>배송비 할인 이벤트 정보</caption>
                                                    <tbody>
                                                    <tr>
                                                        <th scope="row">혜택</th>
                                                        <td>
                                                            <strong class="txtEm"></strong>
                                                            <p></p>
                                                        </td>
                                                    </tr>
                                                    <tr class="displaynone">
                                                        <th scope="row">기간</th>
                                                        <td>
                                                            <strong class="txtEm"></strong>
                                                            <p></p>
                                                        </td>
                                                    </tr>
                                                    <tr class="displaynone">
                                                        <th scope="row">대상</th>
                                                        <td></td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <a href="#none" class="btnClose"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close_tip.gif" alt="닫기"/></a>
                                            <span class="edge"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td><div class="box txtBlack txt16">
                            <strong class="txt23">= </strong><strong>KRW <span id="total_order_price_front" class="txt23"><%=df.format(total_price)%></span></strong> <span class="txt14 displaynone"></span>
                        </div></td>
                    </tr></tbody>
                </table>
                    <div id="order_layer_benefit" class="totalDetail ec-base-layer">
                        <div class="header">
                            <h3>총 할인금액 상세내역</h3>
                        </div>
                        <div class="content">
                            <p id="mTotalBenefitPrice" class="txtBlack txt16"><strong>KRW 3,700</strong></p>
                            <ul id="total_benefit_list" class="ec-base-desc typeDot gLarge rightDD">
                                <li class="">
                                    <strong class="term">기간할인</strong><span id="" class="desc">KRW 3,700</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">회원할인</strong><span id="" class="desc">KRW 0</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">재구매할인</strong><span id="" class="desc">KRW 0</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">대량구매할인</strong><span id="" class="desc">KRW 0</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">바로가기(링콘)할인</strong><span id="" class="desc">KRW </span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">어바웃pbp할인</strong><span id="" class="desc">KRW </span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">신규상품할인</strong><span id="" class="desc">KRW 0</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">세트할인</strong><span id="" class="desc">KRW 0</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">결제수단할인</strong><span id="" class="desc">KRW </span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">회원등급할인</strong><span id="mBenefitMembergroupSale" class="desc">KRW 0</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">배송비할인</strong><span id="" class="desc">KRW 0</span>
                                </li>
                            </ul>
                        </div>
                        <a href="#none" class="close" onclick="OrderLayer.offDiv('order_layer_benefit');"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"/></a>
                    </div>
                </div>
                <!-- 총 주문금액 : 해외배송상품 -->
                <div class="xans-element- xans-order xans-order-totaloversea ec-base-table typeList gBorder total displaynone "><table border="1" summary="">
                    <caption>총 주문금액</caption>
                    <colgroup>
                        <col style="width:23%;"/>
                        <col style="width:21%;" class="displaynone"/>
                        <col style="width:21%;" class="displaynone"/>
                        <col style="width:auto"/>
                    </colgroup>
                    <thead><tr>
                        <th scope="col"><span>총 상품금액</span></th>
                        <th scope="col" class="displaynone"><strong>총 부가세</strong></th>
                        <th scope="col" id="oversea_total_benefit_price_title_area" class="displaynone">총 할인금액 <a href="#none" class="btnNormal" onclick="OrderLayer.onDiv('order_layer_benefit', event);">내역보기</a>
                        </th>
                        <th scope="col">총 합계</th>
                    </tr></thead>
                    <tbody class="center"><tr>
                        <td><div class="box txt16">
                            <strong>KRW <span class="txt23">37,000</span></strong> <span class="txt14 displaynone"></span>
                        </div></td>
                        <td class="displaynone"><div class="box txt16">
                            <strong>KRW <span class="txt23">0</span></strong> <span class="txt14 displaynone"></span>
                        </div></td>
                        <td id="oversea_total_benefit_price_area" class="displaynone"><div class="box txt16">
                            <strong>- KRW <span id="oversea_total_product_discount_price_front" class="txt23">3,700</span></strong> <span class="txt14 displaynone"></span>
                        </div></td>
                        <td><div class="box txtBlack txt16">
                            <strong class="txt23">= </strong><strong>KRW <span id="oversea_total_order_price_front" class="txt23">39,500</span></strong> <span class="txt14 displaynone"></span>
                        </div></td>
                    </tr></tbody>
                </table>
                    <div id="" class="totalDetail ec-base-layer">
                        <div class="header">
                            <h3>총 할인금액 상세내역</h3>
                        </div>
                        <div class="content">
                            <p id="mTotalOverseaBenefitPrice" class="txtBlack txt16"><strong>KRW 3,700</strong></p>
                            <ul id="oversea_total_benefit_list" class="ec-base-desc typeDot gLarge rightDD">
                                <li class="">
                                    <strong class="term">기간할인</strong><span id="" class="desc">KRW 3,700</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">회원할인</strong><span id="" class="desc">KRW 0</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">재구매할인</strong><span id="" class="desc">KRW 0</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">대량구매할인</strong><span id="" class="desc">KRW 0</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">바로가기(링콘)할인</strong><span id="" class="desc">KRW </span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">어바웃pbp할인</strong><span id="" class="desc">KRW </span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">신규상품할인</strong><span id="" class="desc">KRW 0</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">세트할인</strong><span id="" class="desc">KRW 0</span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">결제수단할인</strong><span id="" class="desc">KRW </span>
                                </li>
                                <li class="displaynone">
                                    <strong class="term">회원등급할인</strong><span id="mOverseaBenefitMembergroupSale" class="desc">KRW 0</span>
                                </li>
                            </ul>
                        </div>
                        <a href="#none" class="close" onclick="OrderLayer.offDiv('order_layer_benefit');"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"/></a>
                    </div>
                </div>
                <div class="xans-element- xans-order xans-order-totalorder ec-base-button justify"><a href="#none" onclick="Basket.orderAll(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="btnSubmitFix sizeL  ">전체상품주문</a>
                    <a href="#none" onclick="Basket.orderSelectBasket(this)" link-order="/order/orderform.html?basket_type=all_buy" link-login="/member/login.html" class="btnNormalFix sizeL ">선택상품주문</a><span class="gRight">
            <a href="/" class="btnNormalFix sizeL">쇼핑계속하기</a>
        </span>
                    <!-- 네이버 체크아웃 구매 버튼  -->
                    <div id="NaverChk_Button"></div>
                </div>
            </div>

            <div class="xans-element- xans-myshop xans-myshop-wishlist ec-base-table typeList displaynone xans-record-"><!--
        $login_page = /member/login.html
        $count = 5
        $mode = basket
    -->
                <div class="title">
                    <h3>WISH LIST</h3>
                </div>
                <table border="1" summary="">
                    <caption>관심상품 목록</caption>
                    <colgroup>
                        <col style="width:92px"/>
                        <col style="width:auto"/>
                        <col style="width:105px"/>
                        <col style="width:100px"/>
                        <col style="width:100px"/>
                        <col style="width:85px"/>
                        <col style="width:105px"/>
                        <col style="width:110px"/>
                    </colgroup>
                    <thead><tr>
                        <th scope="col">이미지</th>
                        <th scope="col">상품정보</th>
                        <th scope="col">판매가</th>
                        <th scope="col" class="mileage">적립금</th>
                        <th scope="col">배송구분</th>
                        <th scope="col">배송비</th>
                        <th scope="col">합계</th>
                        <th scope="col">선택</th>
                    </tr></thead></table>
                <p class="message ">관심상품 내역이 없습니다.</p>
            </div>


            <div class="xans-element- xans-order xans-order-basketguide ec-base-help "><h3>이용안내</h3>
                <div class="inner">
                    <h4>장바구니 이용안내</h4>
                    <ol>
                        <li class="item1">해외배송 상품과 국내배송 상품은 함께 결제하실 수 없으니 장바구니 별로 따로 결제해 주시기 바랍니다.</li>
                        <li class="item2">해외배송 가능 상품의 경우 국내배송 장바구니에 담았다가 해외배송 장바구니로 이동하여 결제하실 수 있습니다.</li>
                        <li class="item3">선택하신 상품의 수량을 변경하시려면 수량변경 후 [변경] 버튼을 누르시면 됩니다.</li>
                        <li class="item4">[쇼핑계속하기] 버튼을 누르시면 쇼핑을 계속 하실 수 있습니다.</li>
                        <li class="item5">장바구니와 관심상품을 이용하여 원하시는 상품만 주문하거나 관심상품으로 등록하실 수 있습니다.</li>
                        <li class="item6">파일첨부 옵션은 동일상품을 장바구니에 추가할 경우 마지막에 업로드 한 파일로 교체됩니다.</li>
                    </ol>
                    <h4>무이자할부 이용안내</h4>
                    <ol>
                        <li class="item1">상품별 무이자할부 혜택을 받으시려면 무이자할부 상품만 선택하여 [주문하기] 버튼을 눌러 주문/결제 하시면 됩니다.</li>
                        <li class="item2">[전체 상품 주문] 버튼을 누르시면 장바구니의 구분없이 선택된 모든 상품에 대한 주문/결제가 이루어집니다.</li>
                        <li class="item3">단, 전체 상품을 주문/결제하실 경우, 상품별 무이자할부 혜택을 받으실 수 없습니다.</li>
                        <li class="item4">무이자할부 상품은 장바구니에서 별도 무이자할부 상품 영역에 표시되어, 무이자할부 상품 기준으로 배송비가 표시됩니다.<br/>실제 배송비는 함께 주문하는 상품에 따라 적용되오니 주문서 하단의 배송비 정보를 참고해주시기 바랍니다.</li>
                    </ol>
                </div>
            </div>


            <div id="ec-basketOptionModifyLayer" class="optionModify ec-base-layer" style="display:none;">
                <div class="header">
                    <h3>옵션변경</h3>
                </div>
                <div class="content">
                    <ul class="prdInfo"><li class="ec-basketOptionModifyLayer-productName">{$product_name}</li>
                        <li class="ec-basketOptionModifyLayer-optionStr">{$layer_option_str}</li>
                    </ul><div class="prdModify">
                    <h4>상품옵션</h4>
                    <ul><li class="ec-basketOptionModifyLayer-options" style="display:none;"><span>{$option_name}</span> {$form.option_value}</li>
                        <li class="ec-basketOptionModifyLayer-addOptions" style="display:none;"><span>{$option_name}</span> {$form.option_value}</li>
                    </ul></div>
                </div>
                <div class="ec-base-button">
                    <a href="#none" class="btnNormalFix sizeS ec-basketOptionModifyLayer-add">추가</a>
                    <a href="#none" class="btnNormalFix sizeS ec-basketOptionModifyLayer-modify">변경</a>
                </div>
                <a href="#none" class="close" onclick="$('#ec-basketOptionModifyLayer').hide();"><img src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif" alt="닫기"/></a>
            </div>


            <!---- snappush  start contact mail: support@snapvi.co.kr --->
            <div id="spm_page_type" style="display:none">sq_basket_page</div>
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
                    <li class="xans-record-"><a href="/board/notice/1/">NOTICE</a></li>
                    <li class="xans-record-"><a href="/board/faq/3/">FAQ</a></li>
                    <li class="xans-record-"><a href="/board/qa/6/">Q&A</a></li>
                    <li class="xans-record-"><a href="/board/review/4/">REVIEW</a></li>
                    <li class="xans-record-"><a href="/board/membership/1002/">MEMBERSHIP</a></li>
                </ul>
                </div>
            </div>
        </li>

        <li class="inner04">
            <div class="box">
                <h2>membership</h2>
                <p><a href="/member/join.html">회원가입</a></p>
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
<div id="crt_basket_script" style="display:none;">
    <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
    <script type="text/javascript">
        window.criteo_q = window.criteo_q || [];
        window.criteo_q.push(
            { event: "setAccount", account: "18298"},

            { event: "setSiteType", type: "d" },
            { event: "viewBasket", item: [{ id: "8328", price: "37000", quantity: "1" }]}
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
<div id="fbe_basket_script" style="display:none;">
    <script>
        if(! window.top.fbe_addtocart_activated) {
            fbq('track', 'AddToCart', {
                content_name : ['+5cm 블랙 데님팬츠 (2011)'],
                content_category : ['59'],
                contents : [{'id' : '8328', 'quantity' : 1 , 'item_price' : 37000}],
                content_type : 'product',
                value : 35800,
                currency : 'KRW'
            });
            window.top.fbe_addtocart_activated = true;
        }
    </script>
</div>
<!-- CMC script -->
<!-- External Script End -->

<script type="text/javascript" src="https://checkout.naver.com/customer/js/checkoutButton.js" charset="utf-8"></script>
<script type="text/javascript" src="//asclo.com/ind-script/i18n.php?lang=ko_KR&domain=front&v=1911281089" charset="utf-8"></script>

<script type="text/javascript" src="/ind-script/optimizer.php?filename=tZXNbtswDMdfwNc9h5Bhh51boKcNAzb0AWiJtplQokpJbbOnH5N1Q7PNSQ0v8EEAwd-fEr_sJonoNu_VDQoRn0R3TrFIU49uWxxtPqZuW965c36NMvid2z401P3Lsek-2HdCZpXR4BP9kpVSHS47BvEtYqp3ovFWUlVhRr3MDWrO7hmSvSVV1KxYF3IVY2ao-G8IcnafpSdG9_UV7yVGSa5V4kVclNDMVJ4oLws4tOQrWUjzC83XLoquVDhzCabe3f8s-2sJhu97FgiLoNgqHOJ-6Qvq41xxZuAsvB-I-a0VDThA43pIQYmg9QZS-jPkxRbHZ-uhBFxeDF0_0hFaq-NFdrRaJZBNSrGMlrVKCIXSuFYlYoUAFea78UZAw0ldzdr1B-s89G2SfMLcHSt8e5y8-7ODN4MWBPXTov6rMAz2Qlq6JTO3kWy5PAKT5Ub0V7J-G1YLHuqQQvlb2BSyNQdeL8KEnPGKL5ggBb5mAFtDZHW9mr6trPof7s_iwbb4Ti6vv5m-estA2b9vFN1_olIN_gE&type=js&k=81cead6b99ffa3a78f6503851e2d2fd76af38afb&t=1573582632"></script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=rZXdTgMhEIUfoN76HBN9g_7YpImxTTfq9ZQdt2yBwQGifXuxbbReNLEsF5AMyfk4A8wAW7YEd_cCXrgTtIDeQ7NlD2sKnEQR9AHmwi7CE31A_55I9jd9YJenW7hWn8fSuF2RdumjZgcPn1HwADrEh7Bh03KKtbEr0YpqQxcWu-rQmQ7e4F5HshXRi4xrtOsMNWRIfS_VNy4ZPMGwo0HX90OdsrXDbJ6hXKgCmmjXVgHNMGIV0Asa3eLlCzV6A8_ao9r9AU6TCDm1h5C3GvnL5fEvvTpFozcWi3Gok1qYFLW5-pA3ZS_4-PCbYuXY-6uVK-E2qThPTpX28BNiXN4SfiGFBZszz01PcXKx1MCrDlujQxyYwFwbOlbVUCMNDfXyeDEdOVNadPkPAssp0KgV7LLkCw&type=js&k=ff0489dee5fd85d5d528ed03a82e155f626654de&t=1573582631"></script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=pZVNTsMwEIUPELacwxSpUrdQJFikoipIrCfOkExje8zYbpXbk5QuKn4W2Bsrkv0-v7HfxKpni2pxK8oLdwJWgfdqAw46VDsMnESj2gd1xMZwd7UP1-qHRC7W9dEadJEiYfh99R8bQBid_hqzdRZtg5Itf5YWRbuYDbiHMGAsJ3ghjYWMrXCbdL6TNSfPrqSWDRmc5rP1D-g5UP7-bxT6mkIZQHMqOAJBjQXy3Un-yhHMusjHKdn5gUKH71Qa6hrGAg-PAm1-lO5SZAuR9Anz0vMxP9XJRNqyTz4fMdY04LlByy62pgMacgO7smw8TX3CMuaa8RB7YYPVAQy1MKHyK2Jo_yX23390qKsUUKa3iFarm-ViqXxqDOlqfptUaLFqMVDnVBjI3S5mhp0QBpWBkVNUGiJ202nkI8-gBgLpmX_6KHKo2drLSy4u8iORHqoD4dwKnw&type=js&k=7772cdc0ea5af45e2193ef5ce6c14ab6881bc0ef&t=1572979691"></script>
<script type="text/javascript" src="/ind-script/optimizer.php?filename=BcHbDYAwCAXQAeou15qYuIcTaEsEpY9I-XB7zwG3QqAU3Og1sGzbvMYV3U-VFHgUhWUKmUyuCnukLhG3obTsStDjaz5QXIcYt76z9C71mm77AQ&type=js&k=805240f8da6846244060c65a24075f1cc8252ed1&t=1548823810"></script>
<script type="text/javascript">
    var EC_MOBILE = false;
    var EC_MOBILE_DEVICE = false;
    var EC_MOBILE_USE = true;
    var mobileWeb = false;
    var sSearchBannerUseFlag = 'F';
    var aSoldoutDisplay = {"8328":"\ud488\uc808"};
    var aReserveStockMessage = {"show_stock_message":"F","Q":"[\uc7ac\uace0 : [:\uc218\ub7c9:]\uac1c][\ub2f9\uc77c\ubc1c\uc1a1]","R":"[\uc7ac\uace0 : [:\uc218\ub7c9:]\uac1c][\uc608\uc57d\uc8fc\ubb38]","N":"","stock_message_replace_name":"[:\uc218\ub7c9:]"};
    var option_type8328 = 'T';var option_name_mapper8328 = '사이즈';var option_stock_data8328 = '{\"P0000MII000A\":{\"stock_price\":\"0.00\",\"use_stock\":false,\"use_soldout\":\"F\",\"is_display\":\"T\",\"is_selling\":\"T\",\"option_price\":37000,\"option_name\":\"\\uc0ac\\uc774\\uc988\",\"option_value\":\"S\",\"stock_number\":0,\"option_value_orginal\":[\"S\"],\"use_stock_original\":\"T\",\"use_soldout_original\":\"F\",\"use_soldout_today_delivery\":\"F\",\"is_auto_soldout\":\"F\",\"is_mandatory\":\"T\",\"option_id\":\"000A\",\"is_reserve_stat\":\"N\",\"item_image_file\":null,\"origin_option_added_price\":\"0.00\"},\"P0000MII000B\":{\"stock_price\":\"0.00\",\"use_stock\":false,\"use_soldout\":\"F\",\"is_display\":\"T\",\"is_selling\":\"T\",\"option_price\":37000,\"option_name\":\"\\uc0ac\\uc774\\uc988\",\"option_value\":\"M\",\"stock_number\":0,\"option_value_orginal\":[\"M\"],\"use_stock_original\":\"T\",\"use_soldout_original\":\"F\",\"use_soldout_today_delivery\":\"F\",\"is_auto_soldout\":\"F\",\"is_mandatory\":\"T\",\"option_id\":\"000B\",\"is_reserve_stat\":\"N\",\"item_image_file\":null,\"origin_option_added_price\":\"0.00\"},\"P0000MII000C\":{\"stock_price\":\"0.00\",\"use_stock\":false,\"use_soldout\":\"F\",\"is_display\":\"T\",\"is_selling\":\"T\",\"option_price\":37000,\"option_name\":\"\\uc0ac\\uc774\\uc988\",\"option_value\":\"L\",\"stock_number\":0,\"option_value_orginal\":[\"L\"],\"use_stock_original\":\"T\",\"use_soldout_original\":\"F\",\"use_soldout_today_delivery\":\"F\",\"is_auto_soldout\":\"F\",\"is_mandatory\":\"T\",\"option_id\":\"000C\",\"is_reserve_stat\":\"N\",\"item_image_file\":null,\"origin_option_added_price\":\"0.00\"},\"P0000MII000D\":{\"stock_price\":\"0.00\",\"use_stock\":false,\"use_soldout\":\"F\",\"is_display\":\"T\",\"is_selling\":\"T\",\"option_price\":37000,\"option_name\":\"\\uc0ac\\uc774\\uc988\",\"option_value\":\"XL\",\"stock_number\":0,\"option_value_orginal\":[\"XL\"],\"use_stock_original\":\"T\",\"use_soldout_original\":\"F\",\"use_soldout_today_delivery\":\"F\",\"is_auto_soldout\":\"F\",\"is_mandatory\":\"T\",\"option_id\":\"000D\",\"is_reserve_stat\":\"N\",\"item_image_file\":null,\"origin_option_added_price\":\"0.00\"}}';var stock_manage = '';var item_count = '4';var item_listing_type8328 = 'C';var product_option_price_display8328 = 'T';var option_type83288328 = 'T';var option_name_mapper83288328 = '사이즈';var option_stock_data83288328 = '{\"P0000MII000A\":{\"stock_price\":\"0.00\",\"use_stock\":false,\"use_soldout\":\"F\",\"is_display\":\"T\",\"is_selling\":\"T\",\"option_price\":37000,\"option_name\":\"\\uc0ac\\uc774\\uc988\",\"option_value\":\"S\",\"stock_number\":0,\"option_value_orginal\":[\"S\"],\"use_stock_original\":\"T\",\"use_soldout_original\":\"F\",\"use_soldout_today_delivery\":\"F\",\"is_auto_soldout\":\"F\",\"is_mandatory\":\"T\",\"option_id\":\"000A\",\"is_reserve_stat\":\"N\",\"item_image_file\":null,\"origin_option_added_price\":\"0.00\"},\"P0000MII000B\":{\"stock_price\":\"0.00\",\"use_stock\":false,\"use_soldout\":\"F\",\"is_display\":\"T\",\"is_selling\":\"T\",\"option_price\":37000,\"option_name\":\"\\uc0ac\\uc774\\uc988\",\"option_value\":\"M\",\"stock_number\":0,\"option_value_orginal\":[\"M\"],\"use_stock_original\":\"T\",\"use_soldout_original\":\"F\",\"use_soldout_today_delivery\":\"F\",\"is_auto_soldout\":\"F\",\"is_mandatory\":\"T\",\"option_id\":\"000B\",\"is_reserve_stat\":\"N\",\"item_image_file\":null,\"origin_option_added_price\":\"0.00\"},\"P0000MII000C\":{\"stock_price\":\"0.00\",\"use_stock\":false,\"use_soldout\":\"F\",\"is_display\":\"T\",\"is_selling\":\"T\",\"option_price\":37000,\"option_name\":\"\\uc0ac\\uc774\\uc988\",\"option_value\":\"L\",\"stock_number\":0,\"option_value_orginal\":[\"L\"],\"use_stock_original\":\"T\",\"use_soldout_original\":\"F\",\"use_soldout_today_delivery\":\"F\",\"is_auto_soldout\":\"F\",\"is_mandatory\":\"T\",\"option_id\":\"000C\",\"is_reserve_stat\":\"N\",\"item_image_file\":null,\"origin_option_added_price\":\"0.00\"},\"P0000MII000D\":{\"stock_price\":\"0.00\",\"use_stock\":false,\"use_soldout\":\"F\",\"is_display\":\"T\",\"is_selling\":\"T\",\"option_price\":37000,\"option_name\":\"\\uc0ac\\uc774\\uc988\",\"option_value\":\"XL\",\"stock_number\":0,\"option_value_orginal\":[\"XL\"],\"use_stock_original\":\"T\",\"use_soldout_original\":\"F\",\"use_soldout_today_delivery\":\"F\",\"is_auto_soldout\":\"F\",\"is_mandatory\":\"T\",\"option_id\":\"000D\",\"is_reserve_stat\":\"N\",\"item_image_file\":null,\"origin_option_added_price\":\"0.00\"}}';var stock_manage8328 = '';var item_count8328 = '4';var product_option_price_display83288328 = 'T';
    var EC_BASKET_BENEFIT_INFO = '{"total_benefit_price_raw":3700,"aBenefit":{"total_periodsale_price":"3,700","total_membersale_price":0,"total_rebuysale_price":0,"total_bulksale_price":0,"total_newproductsale_price":0,"total_membergroupsale_price":0,"total_setproductsale_price":0,"total_shipfeesale_price":0}}'
    var aBasketProductData = [];
    aBasketProductData[0] = {"delvtype":"A","main_cate_no":1,"product_no":8328,"opt_id":"000A","product_type":"normal_type","naver_used_exception":"F","quantity":1,"check_quantity":1,"check_quantity_type":"O","product_qty":1,"option_add":"F","product_min":1,"product_max_type":"F","product_max":0,"product_code":"P0000MII","product_price":37000,"opt_price":0,"product_sum_price":33300,"product_sale_price":33300,"product_name":"+5cm \ube14\ub799 \ub370\ub2d8\ud32c\uce20 (2011)","opt_str":"\uc0ac\uc774\uc988=S","item_code":"P0000MII000A","option_type":"T","has_option":"T","has_option_add":"F","is_set_product":"F","set_product_name":"","set_product_no":0,"basket_prd_no":1531221,"item_listing_type":"C","is_oversea_able":false,"set_product_list":null,"buy_unit":1,"check_buy_unit_type":"O","wish_selected_item":"","wish_save_data":"","olink_data":"","product_paymethod":"cash,card,mileage,tcash,cell","option_attached_file_info_json":"","total_unit_add_sale":3700,"use_store_pickup":"F","sIsBenefitEventProduct":"F","add_sale_related_qty":3700,"add_sale_not_related_qty":0,"supplier_id":"hi880515","param":"?product_no=8328&cate_no=1","img":"\/\/asclo.com\/web\/product\/tiny\/201810\/314a699b3e65ae39cd8824ab421ff266.jpg","name_alt":"+5cm \ube14\ub799 \ub370\ub2d8\ud32c\uce20 (2011)","product_name_link":"<a href = \"\/product\/5cm-\ube14\ub799-\ub370\ub2d8\ud32c\uce20-2011\/8328\/category\/1\/\" class=\"ec-product-name\" >+5cm \ube14\ub799 \ub370\ub2d8\ud32c\uce20 (2011)<\/a>","option_str":"[\uc635\uc158: S]","form_quantity":"<input id=\"quantity_id_0\" name=\"quantity_name_0\" size=\"2\" value=\"1\" type=\"text\"  \/>","option_change_display":"displaynone","product_price_div_id":"product_price_div0","discount":"","product_price_display":false,"product_price_str":"KRW 37,000","product_sale_price_div_id":"product_sale_price_div0","product_sale_price_display":"displaynone","product_sale_price_front_id":"product_sale_price_front0","product_sale_price_str":"KRW 33,300","sum_price_front_id":"sum_price_front0","sum_price":"KRW 37,000","sum_price_org":37000,"is_subscription":"F","check_buy_unit":1};
    aBasketProductData[0].product_name = "+5cm 블랙 데님팬츠 (2011)";
    aBasketProductData[0].set_product_name = "";
    aBasketProductData[0].opt_str = "사이즈=S";
    aBasketProductData[0].sIsBenefitEventProduct = "F";
    var aSupplierInfoJs = [];
    var sSuppShippingConfigJs = [];
    aSupplierInfoJs['hi880515'] = [{"basket_prd_no":1531221,"supplier_id":"hi880515","supplier_name":"\uc560\uc988\ud074\ub85c","basket_idx":0,"products_count":1,"idx":0}];
    sSuppShippingConfigJs['hi880515'] = {"is_free_shipping":"M","stand_price":"80000.00","shipping_price":"2500.00"};
    var aBasketProductSetData = [];
    var aBasketProductIndividualSetData = [];
    var sBasketDisplayMode = "2"
    var SHOP_CURRENCY_INFO = {"1":{"aShopCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"aShopSubCurrencyInfo":null,"aBaseCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"fExchangeRate":1,"fExchangeSubRate":null,"aFrontCurrencyFormat":{"head":"KRW ","tail":""},"aFrontSubCurrencyFormat":{"head":"","tail":""}}};
    EC_SHOP_FRONT_NEW_OPTION_COMMON.initObject();
    EC_SHOP_FRONT_NEW_OPTION_BIND.initChooseBox();
    EC_SHOP_FRONT_NEW_OPTION_DATA.initData();
    var sBasketDelvType = 'A';
    var bIsNewProduct = true;
    var sUseBasketConfirm = 'F';
    var sUsePaymentMethodPerProduct = 'F';
    var sPage = "ORDER_BASKET";
    var _isProc = "T";
    var is_order_page = "P";
    nhn.CheckoutButton.apply({
        EMBED_ID: "NaverChk_Button",
        BUTTON_KEY:"8A6B208B-D666-4205-8B4A-3C285BFCD562",
        TYPE: "A",
        COLOR: "1",
        COUNT: "1",
        ENABLE: "Y",
        BUY_BUTTON_HANDLER:nv_add_basket_1_basket,
        WISHLIST_BUTTON_HANDLER:nv_add_basket_2_basket,
        "":""
    });
    $(document).ready(function()
    {
        var oOptionSelectLayer = parent.document.getElementById("capp-shop-new-product-optionselect-layer");
        if (oOptionSelectLayer) {
            $(oOptionSelectLayer).height($(oOptionSelectLayer).height() + 88);
        }
    });
    var basket_page_flag = "T";
    var sViewWishListBasket = "T"
    var sWishUrl = "/exec/front/Product/Wishlist/"
    var sBlackType = ""
    var set_option = {"setproduct_require":"setproduct_require","setproduct_option":"setproduct_option","setproduct_add_option":"setproduct_add_option","addproduct_option":"addproduct_option","addproduct_add_option":"addproduct_add_option","code_setproduct":"setproduct","code_addproduct":"addproduct"};
    var aWishlistProductData = [];
    var EC_SHOP_MULTISHOP_SHIPPING = {"bMultishopShipping":false,"bMultishopShippingCountrySelection":false,"bMultishopShippingLanguageSelection":false};
    var aLogData = {"log_server1":"eclog2-081.cafe24.com","log_server2":"eclog2-081.cafe24.com","mid":"hi880515","stype":"e","domain":"","shop_no":1,"etc":""};
    var sMileageName = '적립금';
    var sMileageUnit = '[:PRICE:]원';
    var sDepositName = '예치금';
    var sDepositUnit = '원';
    var EC_ASYNC_LIVELINKON_ID = '';
    var EC_FRONT_JS_CONFIG_MANAGE = {"sSmartBannerScriptUrl":"https:\/\/app4you.cafe24.com\/SmartBanner\/tunnel\/scriptTags?vs=1563164396689206","sMallId":"hi880515","sDefaultAppDomain":"https:\/\/app4you.cafe24.com","sWebLogEventFlag":"F"};
    var EC_FRONT_JS_CONFIG_MEMBER = {"sAuthUrl":"https:\/\/i-pin.cafe24.com\/certify\/1.0\/?action=auth"};
</script></body></html>
