<%-- 
    Document   : top_sec
    Created on : 13 Nov, 2015, 10:51:20 AM
    Author     : ajith
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="bottomboxwrap">
    <div id="bottombox">
        <!--hair box start-->
        <div class="hairbox">
            <h2>%top_recent_catalog_posts%</h2>
            <div id="responsiveTabsDemo">
                <ul style="background-image:none">
                    <li style="background-image:none"><a href="#tab-1">%top_tab1_hairstyle%</a></li>
                    <li style="background-image:none"><a href="#tab-2">%top_tab2_nail%</a></li>
                    <li style="background-image:none"><a href="#tab-3">%top_tab3_eyelash%</a></li>
                </ul>

                <div id="tab-1">
                <p>
                <ul class="top_sec">
                    <?php
                    foreach ($recent_styles as $styles) {
                        if(trim($styles["image_url1"]) == ""){
                            $styles["image_url1"] = base_url("images/no_image2.png");
                        }
                        ?>
                        <li>
                            <a href="<?php echo base_url("shop/style/index/".$styles["style_id"]."/".$styles["shop_id"]); ?>">
                                <dl>
                                    <dt><img src="<?php echo $styles["image_url1"]; ?>" style="max-height: 134px;max-width: 100px;" /></dt>
                                    <dd>
                                        <p><?php echo $styles["create_date"]; ?></p>
                                        <p class="ttl"><?php echo $styles["shop_name"]; ?></p>
                                        <p class="ttl"><?php echo $styles["style_name"]; ?></p>
                                        <p>
                                            <?php echo $styles["comment"]; ?>
                                        </p>
                                    </dd>
                                </dl>
                            </a>
                        </li>
                        <?php
                    }
                    ?>
                </ul>
                </p>
                </div>

                <div id="tab-2">
                <p>
                    <ul class="top_sec">
                    <?php
                    foreach ($recent_nails as $nails) {
                        if(trim($nails["image_url1"]) == ""){
                            $nails["image_url1"] = base_url("images/no_image2.png");
                        }
                        ?>
                        <li>
                            <a href="<?php echo base_url("shop/nail/index/".$nails["nail_id"]."/".$nails["shop_id"]); ?>">
                                <dl>
                                    <dt><img src="<?php echo $nails["image_url1"]; ?>" style="max-height: 134px;max-width: 100px;" /></dt>
                                    <dd>
                                        <p><?php echo $nails["create_date"]; ?></p>
                                        <p class="ttl"><?php echo $nails["shop_name"]; ?></p>
                                        <p class="ttl"><?php echo $nails["nail_name"]; ?></p>
                                        <p>
                                            <?php echo $nails["comment"]; ?>
                                        </p>
                                    </dd>
                                </dl>
                            </a>
                        </li>
                    <?php
                    }
                    ?>
                        <!--
                        <li>
                            <a href="#">
                                <dl>
                                    <dt><img src="/main/images/no_image2.png" style="max-height: 134px;max-width: 100px;"></dt>
                                    <dd>
                                    <p>25-06-2015</p>
                                    <p class="ttl">shop_name_dummy</p>
                                    <p class="ttl">style_name_dummy</p>
                                    <p class="top_sec_comment">
                                    comment_dummycomment_dummycomment_dummycomment_dummycomment_dummycomment_dummycomment_dummy
                                    </p>
                                    </dd>
                                </dl>
                            </a>
                        </li>
                        -->
                    </ul>
                </p>
                </div>
                <div id="tab-3">
                <p>
                    <ul class="top_sec">
                    <?php
                    foreach ($recent_eyelash as $eyelash) {
                        if(trim($eyelash["image_url1"]) == ""){
                            $eyelash["image_url1"] = base_url("images/no_image2.png");
                        }
                        ?>
                        <li>
                            <a href="<?php echo base_url("shop/eyelash/index/".$eyelash["eyelash_id"]."/".$eyelash["shop_id"]); ?>">
                                <dl>
                                    <dt><img src="<?php echo $eyelash["image_url1"]; ?>" style="max-height: 134px;max-width: 100px;" /></dt>
                                    <dd>
                                        <p><?php echo $eyelash["create_date"]; ?></p>
                                        <p class="ttl"><?php echo $eyelash["shop_name"]; ?></p>
                                        <p class="ttl"><?php echo $eyelash["eyelash_name"]; ?></p>
                                        <p>
                                            <?php echo $eyelash["comment"]; ?>
                                        </p>
                                    </dd>
                                </dl>
                            </a>
                        </li>
                    <?php
                    }
                    ?>
                        <!--
                        <li>
                            <a href="#">
                            <dl>
                                <dt><img src="/main/images/no_image2.png" style="max-height: 134px;max-width: 100px;"></dt>
                                <dd>
                                <p>25-06-2015</p>
                                <p class="ttl">shop_name_dummy</p>
                                <p class="ttl">style_name_dummy</p>
                                <p class="top_sec_comment">
                                comment_dummycomment_dummycomment_dummycomment_dummycomment_dummycomment_dummycomment_dummy
                                </p>
                                    </dd>
                            </dl>
                            </a>
                        </li>
                        -->
                    </ul>
                </p>
                </div>
            </div>
        </div>
<!--hair box end-->

        <div class="sectionRight">
            <div class="historybox">
                <h2>%txt_recent_booked_shop%</h2>
                <?php
                $loggedin = $this->user_session->isLoggedIn();
                if ($loggedin) {
                    ?>


                    <p class="shop">%txt_name_%</p>
                    <ul>
                        <?php
                        if ($booking) {
                            foreach ($booking as $value) {
                                if ($value['shopName']) {
                                    ?>
                                    <li>
                                        <dl>
                                            <dt><a href="<?php echo base_url('shop/details/index/' . $value['shopId']); ?>"><?php echo mb_strimwidth($value['shopName'], 0, 25, "…"); ?></a></dt>
                                            <dd><a href="<?php echo base_url('shop/details/index/' . $value['shopId']); ?>">%txt_reserve%</a></dd>
                                        </dl>
                                    </li>

                                    <?php
                                }
                            }
                        }
                        ?>
                    </ul>
                    <?php
                } else {
                    ?>
                    <p class="plslogin">%txt_login_request%</p>
                    <?php
                }
                ?>
            </div>
            <div class="newsbox">
                <h2>%txt_news%</h2>
                <ul>
                    <?php
                    if ($news) {
                        foreach ($news as $value) {
                            if($value[$field1] != ""){
                            ?>
                            <li>
                                <p><?php echo date("Y/m/d", strtotime($value['publish_date'])); ?></p>
                                <dl>
                                    <dt><?php echo $value[$field1] ?></dt>
                                    <dd><?php echo nl2br($value[$field2]); ?></dd>
                                </dl>
                            </li>
                            <?php
                            }
                        }
                    }
                    ?>
                </ul>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

    $(function() {

        var positions = [];
        var slideIndex = 0;

        var len = $('div.slide_new', '#slide-wrapper').length;

        $('div.slide_new', '#slide-wrapper').each(function(index) {

            var slide = index;
            var position = $(this).position().top;
            positions[slide] = position;
        });

        $('#prev', '#slider-controls').hide();
        if (len == 0) {
            $('#prev', '#slider-controls').hide();
            $('#next', '#slider-controls').hide();
        }

        $('#prev', '#slider-controls').click(function(event) {
            if (slideIndex > 0) {
                if (slideIndex == 1) {
                    $(this).hide();
                    $('#next').show();
                }
                slideIndex--;
            } else {
                slideIndex++;
            }
            if (slideIndex == len) {
                slideIndex = 0;
            }
            $('#slide-wrapper').animate({
                top: -positions[slideIndex]
            }, 'slow');

            event.preventDefault();
        });


        $('#next', '#slider-controls').click(function(event) {
            slideIndex++;
            if (slideIndex == 1) {
                $(this).hide();
                $('#prev').show();

            }

            if (slideIndex == len) {
                slideIndex = 0;
            }

            $('#slide-wrapper').animate({
                top: -positions[slideIndex]
            }, 'slow');

            event.preventDefault();
        });

        $('#ca-container').contentcarousel();

    });
</script>

<script type="text/javascript">
    $(document).ready(function () {
        $('#responsiveTabsDemo').responsiveTabs({
                startCollapsed: 'accordion'
        });
    });
</script>

