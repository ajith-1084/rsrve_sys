<%-- 
    Document   : menu
    Created on : 13 Nov, 2015, 10:48:58 AM
    Author     : ajith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="mainmenu">
	<ul>
		<li class="area"><a href="<?php echo base_url('shop/searchStation'); ?>">%txt_top_menu_1%</a></li>
		<li class="style"><a href="<?php echo base_url('top/hairStyle'); ?>">%srch_by_catalog%</a></li>
		<li class="service"><a href="<?php echo base_url('shop/searchService'); ?>">%txt_top_menu_3%</a></li>
                <?php
                $loggedin = $this->user_session->isLoggedIn();
                if ($loggedin) { ?>
		<li class="menumap"><a href="<?php echo base_url('shop/search/searchmap');?>"><span>%txt_booked_shops%</span></a></li>
                <?php } ?>
	</ul>
</div>