
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</div>

<div id="footer">
	<div class="footin">
            <p class="backtop"><a href="#top"><img src="<c:url value="/images/backtop_off.png"/>" width="56" height="52" /></a></p>
		<ul class="footmenu">
			<li><a href="<?php echo base_url('contact_'.$lan.'.php'); ?>">%txt_contact_us%</a></li>
			<li><a href="<?php echo $this->config->item('shop_base_url')?>">%txt_log_store%</a></li>
			<!-- <li><a>Region</a></li> -->
			<li><a href="<?php echo $this->config->item('shop_base_url')?>auth/register/select_shop?lang=<?php echo $lan ?>">%txt_shop_signup%</a></li>
		</ul>
		<ul class="footsub">
			<li><a href="<?php echo base_url('about_this_site_'.$lan.'.php'); ?>">%txt_about_site%</a></li>
			<li><a href="<?php echo base_url('terms_of_use_'.$lan.'.php'); ?>">%txt_terms_of_use%</a></li>
			<li><a href="<?php echo base_url('privacy_policy_'.$lan.'.php'); ?>">%txt_privacy_policy%</a></li>
			<li><a href="<?php echo base_url('sitemap_'.$lan.'.php'); ?>">%txt_site_map%</a></li>
			<!-- <li><a href="<?php echo base_url('top/comment');?>">Site Comments</a></li> -->
			<li><a href="http://www.btg-c.com" target="_blank">%txt_company%</a></li>
			<li><a href="http://rsrve.com/hair-salon/shop-pr.php" target="_blank">%txt_shop_pr%</a></li>
		</ul>
		<p class="attention">
%txt_attention%<br />
%txt_attention_desc%</p>
		<p class="copyright"> &copy; <?php echo date("Y");?> Rsrve.com. %all_rights%</p>
	</div>
</div>

<script>
		(function($){
			$(window).load(function(){
				/* custom scrollbar fn call */
				$(".content_2").mCustomScrollbar({
					scrollInertia:0,
					advanced:{ updateOnContentResize:true }
				});	
				$(".demo_functions a[rel='append-new']").click(function(e){
					e.preventDefault();
					$(".content_6 .images_container").append("<img src='demo_files/mcsThumb1.jpg' class='new' />");
					$(".content_6 .images_container img").load(function(){
						$(".content_6").mCustomScrollbar("update");
					});
				});
				$(".demo_functions a[rel='prepend-new']").click(function(e){
					e.preventDefault();
					$(".content_6 .images_container").prepend("<img src='demo_files/mcsThumb8.jpg' class='new' />");
					$(".content_6 .images_container img").load(function(){
						$(".content_6").mCustomScrollbar("update");
					});
				});
				$(".demo_functions a[rel='append-new-scrollto']").click(function(e){
					e.preventDefault();
					$(".content_6 .images_container").append("<img src='demo_files/mcsThumb1.jpg' class='new' />");
					$(".content_6 .images_container img").load(function(){
						$(".content_6").mCustomScrollbar("update");
						$(".content_6").mCustomScrollbar("scrollTo","right");
					});
				});
				$(".demo_functions a[rel='scrollto']").click(function(e){
					e.preventDefault();
					$(".content_6").mCustomScrollbar("scrollTo","#mcs_t_5");
				});
				$(".demo_functions a[rel='remove-last']").click(function(e){
					e.preventDefault();
					$(".content_6 .images_container img:last").remove();
					$(".content_6").mCustomScrollbar("update");
				});
				$(".demo_functions a[rel='toggle-width']").click(function(e){
					e.preventDefault();
					$(".content_6").toggleClass("toggle_width");
					$(".content_6").mCustomScrollbar("update");
				});
				$(".demo_functions a[rel='scrollto-par-5']").click(function(e){
					e.preventDefault();
					$(".content_7").mCustomScrollbar("scrollTo","#par-5");
				});
				$(".demo_functions a[rel='increase-height']").click(function(e){
					e.preventDefault();
					$(".content_7").animate({height:1100},"slow",function(){
						$(this).mCustomScrollbar("update");
					});
				});
				$(".demo_functions a[rel='decrease-height']").click(function(e){
					e.preventDefault();
					$(".content_7").animate({height:350},"slow",function(){
						$(this).mCustomScrollbar("update");
					});
				});
				var content_7_height=$(".content_7").height();
				$(".demo_functions a[rel='reset-height']").click(function(e){
					e.preventDefault();
					if($(".content_7").height()!=content_7_height){
						$(".content_7").animate({height:content_7_height},"slow",function(){
							$(this).mCustomScrollbar("update");
						});
					}
				});
				$(".demo_functions a[rel='scrollto-bottom']").click(function(e){
					e.preventDefault();
					$(".content_7").mCustomScrollbar("scrollTo","bottom");
				});
				$(".demo_functions a[rel='scrollto-top']").click(function(e){
					e.preventDefault();
					$(".content_7").mCustomScrollbar("scrollTo","top");
				});
				$(".demo_functions a[rel='scrollto-par-1st']").click(function(e){
					e.preventDefault();
					$(".content_7").mCustomScrollbar("scrollTo","first");
				});
				function onScrollCallback(){
					$(".callback_demo .callback_demo_output").html("<em>scrolled...</em>").children("em").delay(500).fadeOut("slow");
				}
				function onTotalScrollCallback(){
					if($(".appended").length<1){
						$(".content_8 .mCSB_container").append("<p class='appended'><img src='demo_files/mcsImg1.jpg' /></p>");
					}else{
						$(".callback_demo .callback_demo_output").html("<em>Bottom reached...</em>").children("em").delay(1000).fadeOut("slow");
					}
					$(".content_8 .mCSB_container img").load(function(){
						$(".content_8").mCustomScrollbar("update");
						$(".callback_demo .callback_demo_output").html("<em>New image loaded...</em>").children("em").delay(1000).fadeOut("slow");
					});
				}
				$(".callback_demo a[rel='scrollto-bottom']").click(function(e){
					e.preventDefault();
					$(".content_8").mCustomScrollbar("scrollTo","bottom");
				});
			});
		})(jQuery);
	</script>
 </body>
 <!--collapse-->
 <script src="<c:url value="/js/collapse/jquery.collapse.js"/>"</script>
<script>
$(".slide").collapse({hide: function(){
this.animate({
	opacity: 'toggle', 
	height: 'toggle'
}, 300);
},
show : function() {

this.animate({
	opacity: 'toggle', 
	height: 'toggle'
}, 300);
}
});
</script>

 </html>
