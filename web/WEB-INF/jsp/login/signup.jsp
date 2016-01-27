<%-- 
    Document   : signup
    Created on : 13 Nov, 2015, 11:44:45 AM
    Author     : ajith
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script>
$(document).ready(function(){    
     $('input[tabindex=1]').focus();    
});
</script>

<div id="mainvis">
    <img src="<c:url value="/images/main_salon.png"/>" alt="SALON" width="123" height="144" />
	<img src="<c:url value="/images/main_barber.png"/>" alt="BARBER" width="123" height="144" />
</div>
        <jsp:include page="../common/menu.jsp"/>
<!-- CONTENTS -->
<div id="contents">
	<div id="searchbox">
		<ul>
			<li><a href="<?php echo base_url()?>shop/searchStation">%txt_menu_search_by_station%</a></li>
			<li><a href="<?php echo base_url()?>shop/searchArea">%txt_menu_search_by_station%</a></li>
			<li><a href="<?php echo base_url()?>shop/searchAddress">%txt_menu_search_by_station%</a></li>
		</ul>
		<div class="searcharea">
			<div class="search_text_area">
	            <label for="textfield"></label>
	            <form name="srchfwfrm" id="srchfwfrm" method="post" onsubmit="submitFWForm(); return false;" action="<?php echo str_replace("https", "http", base_url()); ?>shop/searchKeyword/searchAdd" >
	                <input type="text" value="%txt_search_keyword%" name="address" id="address" class="search_txt_bx" onblur="if (this.value == '') {this.value = '%txt_search_keyword%';}"
	                       onfocus="if(this.value == '%txt_search_keyword%') {this.value = '';}"/>
	            </form>
	        </div>
	        <div class="search_icon"><div class="icon"><a href="" onclick="submitFWForm(); return false;"></a></div></div>
	        <div class="clear"></div>
		</div>
	</div>
	
	<!-- breadcrumb -->
	<div class="bc">
		<?php echo $this->breadcrumb->output(); ?>
	</div>
	
	<div class="registration">
		<h2>%txt_sign_in%</h2>
		<div class="registration_content">
			<h3 class="bn">%txt_sns_sign_up%</h3>
			<ul class="snsaccount">
                            <li><a href="javascript:;" onclick="gotoFacebook();"><img src="<c:url value="/images/social_fb.png"/>" border="none"></a></li>
		        <li><a href="javascript:;" onclick="gotoGoogle();"><img src="<c:url value="/images/social_g.png"/>" border="none"></a></li>
		        <li><a href="javascript:;" onclick="gotoYahoo();"><img src="<c:url value="/images/social_y.png"/>" border="none"></a></li>
		        <li><a href="javascript:;" onclick="gotoTwitter();"><img src="<c:url value="/images/social_tw.png"/>" border="none"></a></li>
				<li><a href="javascript:;" onclick="gotoMixi();"><img src="<c:url value="/images/social_m.png"/>" border="none"></a></li>
			<li><a href="javascript:;" onclick="gotoRenRen();"><img src="<c:url value="/images/renren.png"/>" border="none"></a></li>
                        </ul>
			
			<h3 class="bn m_b50">%txt_new_sign_up%<span>（%txt_new_signup_condition%）</span></h3>
			<p class="textCenter"><a href="<?php echo base_url("auth/register")?>" class="btnred">%txt_rsrve_register%</a></p>
		</div>
	</div>
	<div id="bottombox">
	</div>

 <script type="text/javascript">
function gotoGoogle()
{
    url = '<?php echo base_url('index.php/sns/google/login'); ?>';
    
    var w = 450; 
    var h = 500;
    var pL   = (screen.width  - w)/2;
    var pT    = (screen.height - h)/2;
    
    popupWindow = window.open(url, 'mywindow', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width='+w+',height='+h+', top='+pT+', left='+pL);
}

function gotoFacebook()
{
    url = '<?php echo base_url('index.php/sns/facebookApp/login'); ?>';
    
    var w = 900; 
    var h = 500;
    
    var pL   = (screen.width  - w)/2;
    var pT    = (screen.height - h)/2;
    
    window.open(url, 'mywindow', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width='+w+',height='+h+', top='+pT+', left='+pL);
}

function gotoYahoo()
{
    url = '<?php echo base_url('index.php/sns/yahoo/login'); ?>';
    
    var w = 450; 
    var h = 500;
    var pL   = (screen.width  - w)/2;
    var pT    = (screen.height - h)/2;
    
    window.open(url, 'mywindow', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width='+w+',height='+h+', top='+pT+', left='+pL);
}

function gotoTwitter()
{
    url = '<?php echo base_url('index.php/sns/twitter/login'); ?>';
    
    var w = 450; 
    var h = 500;
    var pL   = (screen.width  - w)/2;
    var pT    = (screen.height - h)/2;
    
    window.open(url, 'mywindow', 'toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width='+w+',height='+h+', top='+pT+', left='+pL);
}

function gotoMixi()
{
    url = '<?php echo base_url('index.php/sns/mixi/login'); ?>';
    
    var w = 550; 
    var h = 550;
    
    var pL   = (screen.width  - w)/2;
    var pT    = (screen.height - h)/2;
    
    window.open(url, 'mywindow', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,width='+w+',height='+h+', top='+pT+', left='+pL);
}

function gotoRenRen(){
    
     url = '<?php echo base_url('index.php/sns/renren/login'); ?>';
    
    var w = 550; 
    var h = 550;
    
    var pL   = (screen.width  - w)/2;
    var pT    = (screen.height - h)/2;
    
    window.open(url, 'mywindow', 'toolbar=0,scrollbars=1,location=0,statusbar=0,menubar=0,resizable=0,width='+w+',height='+h+', top='+pT+', left='+pL);
    
}

function submitForm()
{
	$('#loginfrm').submit();
}
function submitenter(myfield,e)
{
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (e) keycode = e.which;
	else return true;

	if (keycode == 13)
	   {
	  	submitForm();
	   	return false;
	   }
	else
	   	return true;
}
username = document.getElementById('username');
username.focus();

function redirectParent(){
    url = '<?php echo base_url('user/home'); ?>';
    window.top.location = url;
}
</script>
