<%-- 
    Document   : header
    Created on : 9 Nov, 2015, 4:04:39 PM
    Author     : ajith
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<?php $lang = $this->user_session->getLang(); ?>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:og="http://ogp.me/ns#" xmlns:fb="https://www.facebook.com/2008/fbml" lang="<?php echo $lang;?>">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta http-equiv="content-language" content="en" />           
        <title><?php echo $title;?></title>
        <!--<title>%txt_site_name%</title>-->
        <link rel="stylesheet" href="<c:url value="/css/style.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/css/style_new.css"/>" type="text/css">
         <link rel="shortcut icon" href="<c:url value="/images/favicon.ico"/>">
        <meta name="viewport" content="width=device-width; initial-scale=1.0" />
        <!--[if IE]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <!--[if IE 8]>
        <link rel="stylesheet" type="text/css" href="css/ie7.css">
        <![endif]-->
        <script type="text/javascript" src="<c:url value="/js/jquery/jquery-1.8.0.min.js"/>"</script>
        <script type="text/javascript" src="<c:url value="/js/jquery/jquery-ui-1.8.23.custom.min.js"/>"</script>
        <!-- mousewheel plugin -->
         <script type="text/javascript" src="<c:url value="/js/jquery/jquery.mousewheel.min.js"/>"</script>
        <!-- custom scrollbars plugin -->
         <script type="text/javascript" src="<c:url value="/js/jquery/jquery.mCustomScrollbar.js"/>"</script>
        <!--preview,mailPOPUP-->
        <link type="text/css" href="<c:url value="/css/popup.css"/>" rel="stylesheet" media="screen" />
        <script type="text/javascript" src="<c:url value="/js/jquery.simplemodal.js"/>"</script>  
        <script type="text/javascript" src="<c:url value="/js/popup.js"/>"</script>  
        <!--/*checkbox*/-->
        <script type="text/javascript" src="<c:url value="/js/jquery.custom_radio_checkbox.js"/>"</script>  
        <script type="text/javascript" src="<c:url value="/js/rollover.js"/>"</script>  
        <script type="text/javascript" src="<c:url value="/js/heightLine.js"/>"</script>  
        <script type="text/javascript" src="<c:url value="/js/jquery.colorbox.js"/>"</script>
            <link type="text/css" href="<c:url value="/css/colorbox/colorbox.css"/>" rel="stylesheet" media="screen" />
        <style type="text/css">
            .content_2{
                height:303px;
            }
        </style>
                <link rel="stylesheet" type="text/css" href="<c:url value="/css/default.css"/>" />
                <link rel="stylesheet" type="text/css" href="<c:url value="/css/layout.css"/>" />
                <script type="text/javascript" src="<c:url value="/js/jquery.selectbox-0.5.js"/>"</script>
                <link type="text/css" rel="stylesheet" href="<c:url value="/js/responsive-tabs.css"/>" />
                <link type="text/css" rel="stylesheet" href="<c:url value="/css/responsive-tabs-style.css"/>"/>
                <script src="<c:url value="/js/jquery.responsiveTabs.min.js"/>" type="text/javascript"></script>
        <script language="javascript" type="text/javascript">
            if (window.top !== window.self) {
                if (confirm("This content cannot be displayed in a frame... Do you want to open this content in a new window ?")) {
                    window.top.location.replace(window.self.location.href);
                }
                else {
                    document.documentElement.style.display = 'none';
                }
            }
            function showSearch(){
                $.colorbox({iframe:true,href:"<?php echo base_url('shop/searchService'); ?>",width:950, height:1900,escKey: false,overlayClose: false});
            }

            function addBookmark(url)
            {
                var success=false;

                try {
                    window.external.AddFavorite(url, document.title);
                    success=true;
                } catch(e) {}

                try {
                    window.sidebar.addPanel(document.title,url,'');
                    success=true;
                } catch(e) {}

                if(!success)
                {
                    alert("%txt_bookmark_msg1% \r\n %txt_bookmark_msg2% \r\n %txt_bookmark_msg3% \r\n %txt_bookmark_msg4%");
                }
            }

            $(document).ready(function(){
                $(".checkbox").dgStyle();
                //$('.book_now').colorbox({iframe:true, width:920, height:980,escKey: false,overlayClose: false});

                // add a "rel" attrib if Opera 7+
                if(window.opera) {
                    if ($("a.jqbookmark").attr("rel") != ""){ // don't overwrite the rel attrib if already set
                        $("a.jqbookmark").attr("rel","sidebar");
                    }
                }
                if ((navigator.userAgent.indexOf('iPhone') > 0 && navigator.userAgent.indexOf('iPad') == -1) || navigator.userAgent.indexOf('iPod') > 0 || navigator.userAgent.indexOf('Android') > 0) {
                    $('span[data-action=call]').each(function(){
                        var $el = $(this);
                        $el.wrap('<a href="tel:' + $el.data('tel') + '"></a>');
                        $el.css('color','blue');
                        $el.css('font-weight','bold');
                        $el.css('text-decoration', 'underline');
                    });
                }
            });
        </script>
        <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-45821044-1', 'rsrve.com');
      ga('send', 'pageview');

    </script>
    </head>
    <body>
        <style>
            #header #funcs #service p {
                height: 26px;
                line-height: 26px;
            }
        </style>
<div id="header">
  <div id="logo">
      <h1><a href="<c:url value="/"/>"><img src="<c:url value="/images/logo.png"/>" alt="%txt_site_name%" width="74" height="68" /></a></h1>
    <p>%txt_market_salon%<br /><a href="<?php echo base_url('user/home'); ?>">%txt_mypage% &raquo;</a></p>
  </div>
  <div id="funcs">
    <div id="service">
                        <p class="area_en">
                            <select id="region_select" style="margin-top:-4px;">                           
                                <option value="en" ></option>
                                <option value="ja" ></option>
                            </select>
      </p>
      <p class="lang_en">
                <select id="dynamic_select" style="margin-top:-4px;">
                    <option value="">English</option>
                    <option value="">Japanese</option>                  
                </select>
      </p>
      <p class="servlink"><a href="<?php echo base_url('about_membership.php'); ?>">%txt_about_membership%</a></p>
      <p class="welcome">%txt_welcome% <span>%txt_guest%</span> %txt_exclamation2%</p>
    </div>
    <div id="btns">
        <a target="_blank" href="<?php echo $this->config->item('shop_base_url')?>auth/register/select_shop?lang=<?php echo $lang; ?>"><img src="<c:url value="/images/en/btn_shop_off.png"/>" alt="%txt_shp_signup%" width="160" height="41" /></a>
        <a href="<c:url value="/auth/signup"/>"><img src="<c:url value="/images/en/btn_member_off.png"/>" alt="%txt_sign_in%" width="160" height="41" /></a>
        <a href="<c:url value="/auth/login"/>"><img src="<c:url value="/images/en/btn_login_off.png" />" alt="%txt_login%" width="89" height="41" /></a>
    </div>
  </div>


  <!-- sp -->
  <div id="funcsp">
    <p class="welcome">%txt_welcome% <span>%txt_guest%</span> %txt_exclamation2%</p>
    <p class="servlink"><a href="<?php echo base_url('about_membership.php'); ?>">%txt_about_membership%</a></p>
    <p class="textRight"><a target="_blank" href="https://docs.google.com/file/d/0B_w2tAsdsXd7UTRGSkExckJ5VDg/edit?usp=sharing">%txt_shop_signup%</a>｜<a href="/auth/signup">Sign up</a>｜<a href="<?php echo base_url('auth/login'); ?>">%txt_login%</a></p>
  </div>
  <!-- //sp -->
</div>
        <script>
            function submitFWForm(){
                var search = document.getElementById("address").value;

                if(search == '%txt_search_keyword%') {
                    search = "";
                }

                if(search.length < 1){
                    alert("%txt_pls_one_character%");
                    return false;
                }

                document.forms["srchfwfrm"].submit();
            }
        </script>
        <script>
            $(function(){
                // bind change event to select
                $('#dynamic_select').bind('change', function () {
                    var url = $(this).val(); // get selected value
                    if (url) { // require a URL
                        window.location = url; // redirect

                    }
                    return false;
                });
            });
        </script>
        <script>
            $(function(){
                // bind change event to select
                $('#region_select').bind('change', function () {
                    var url = $(this).val(); // get selected value
                    if (url) { // require a URL
                        window.location = url; // redirect
                    }
                    return false;
                });
            });
        </script>

        <script>
            $(document).ready(function(){
                var selectorDiv = '';
                if ($("#searchcont").length) {
                    selectorDiv = "#searchcont";
                }
                else if($(".registration").length) {
                    selectorDiv = ".registration";
                }
                else if($(".mypageBox").length) {
                    selectorDiv = ".mypageBox";
                }
                else if($(".dc").length) {
                    selectorDiv = ".dc";
                }

                if(selectorDiv){
                    window.scroll(0,$(selectorDiv).position().top);
                }

            });
        </script>