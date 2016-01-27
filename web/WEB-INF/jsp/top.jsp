<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<c:url value="/css/jquery.jscrollpane.css"/>" type="text/css">
<script src="<c:url value="/js/jquery.contentcarousel.js"/>"></script>
<script src="<c:url value="/js/jquery.easing.1.3.js"/>"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.caption-on-thumb').hover(
		function(){
			$(this).css('background-color', '#FFF');
			$(this).css('opacity', '0.8');
			//$(a).show();
		},
		function(){
			$(this).css('background-color', '');
			$(this).css('opacity', '0');
		});
	});
	function hidesec() {
		$('#recent_shop').hide();
		$('#news_sec').css('margin-top','67px');
	}
</script>
<div id="mainvis">
    <img src="<c:url value="/images/main_salon.png"/>" alt="SALON" width="123" height="144" />
	<img src="<c:url value="/images/main_barber.png"/>" alt="BARBER" width="123" height="144" />
</div>
        <jsp:include page="common/menu.jsp"/>

<!-- CONTENTS -->
<div id="contents">
	<div id="searchbox">
		<ul>
			<li><a href="<?php echo base_url()?>shop/searchStation">%txt_menu_search_by_station%</a></li>
			<li><a href="<?php echo base_url()?>shop/searchArea">%txt_menu_search_by_area%</a></li>
			<li><a href="<?php echo base_url()?>shop/searchAddress">%txt_menu_search_by_address%</a></li>
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
	<div id="newstores">
		<h2>%txt_recent_shop%</h2>
		<div class="slider_postion">

	        <div id="ca-container" class="ca-container">
			<?php
			$ca_wrap = "";
			if ($shop) {
				 if(count($shop) > 3) {
					 $ca_wrap = "ca-wrapper";
					 }
				}
			?>
	          <div class="<?php echo $ca_wrap; ?>">
	            <?php
	            if ($shop) {
	            foreach ($shop as $value) {
	            $imgUrl = $value['image_url'];                    
	            if(!$imgUrl) {
	                if($value['type_id'] == 1)
	                    $imgUrl = image_url('noimg_barber.png');
	                else
	                    $imgUrl = image_url('noimg_salon.png');
	            }
                    else {
                        /*$fullarr = explode("/",$value['image_url']);
                        $cnt = count($fullarr);
                        unset($fullarr[$cnt-1]);                        
                        $s3Root = implode("/",$fullarr);
                        $thumbimgName = end(explode("/",$value['image_url']));
                        $imgNam = end(explode('thumb_',$thumbimgName));
                        //$s3Root  =  config_item('s3_root_folder');
                        $imgUrl = $s3Root."/200x150_".$imgNam;*/
                    }
	            ?>
	            <div class="ca-item ca-item-1" style="position: relative">
	              <div class="ca-item-main">
	                <div class="ca-icon" style="background:url(<?php echo $imgUrl ?>) no-repeat scroll 0 0 #EFEFEF; overflow:hidden; background-position:center;background-size:contain; "></div>
	                <div class="caption-on-thumb" >
	                  <a href="<?php echo site_url().'/shop/details/index/'.$value['shop_id'];?>"><div class="slide_hv_area">
	                    <div class="slide_hv_title"><?php echo ((strlen($value[$new_shp_name]) > 40) ? mb_strimwidth($value[$new_shp_name], 0, 40,'....') : $value[$new_shp_name]); ?></div>
	                    <div class="slide_hv_text"><?php echo $value['phone_number1']; ?><br>
	                      <?php echo $value['address_en']; ?><br>
	                      </div>
	                  </div></a>
	                </div>
	              </div>
	            </div>
	            <?php }
	            } else {
	            ?>
	            <li class="carousel-item">%txt_no_service_found%</li>
	            <?php } ?>
	          </div>
	        </div>

        </div>
	</div>
    <jsp:include page="common/top_sec.jsp"/> 
