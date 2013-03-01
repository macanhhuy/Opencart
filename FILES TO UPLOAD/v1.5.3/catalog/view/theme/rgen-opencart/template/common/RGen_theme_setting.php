<style type="text/css">
body { 
	background:<?php if($this->config->get('RGen_bodyBgImg') != ''){ ?>url(image/<?php echo $this->config->get('RGen_bodyBgImg'); ?>) <?php echo $this->config->get('RGen_bodyBgImgRepeat'); ?> <?php echo $this->config->get('RGen_bodyBgImgPosition'); ?><?php } ?> <?php if($this->config->get('RGen_bodyBg') != ''){ ?>#<?php echo $this->config->get('RGen_bodyBg'); ?><?php } ?>;
	<?php if($this->config->get('RGen_fontColor') != ''){ ?>
	color:#<?php echo $this->config->get('RGen_fontColor'); ?>;
	<?php } ?>
	}
	
<?php if($this->config->get('RGen_fontColor') != ''){ ?>
p, .category-info p, .tab-content{ color:#<?php echo $this->config->get('RGen_fontColor'); ?>; }
<?php } ?>

/* GLOBAL COLOR - 1 */
<?php if($this->config->get('RGen_globalColour') != ''){ ?>
#menu, 
#header .button-search, 
.refine-cate h2, 
.product-info .price, 
.footer-bt a:hover, 
.product-info .cart 
.cart-bt:hover, 
.product-list .prd-block .info-wrp .price, 
.prd-block .info-wrp .price, 
.store-home .slideshow .nivo-controlNav a.active, 
.home-btn:hover,
.thumb-wrapper .bx-prev:hover, 
.next:hover, 
.prev:hover, 
.jcarousel-next:hover, 
.jcarousel-prev:hover, 
.cart-bt:hover,
.store-home #slidshow-box .next, 
.store-home #slidshow-box .prev {
	background-color:#<?php echo $this->config->get('RGen_globalColour'); ?>;
	}
<?php } ?>

<?php if($this->config->get('RGen_globalColourRing') != ''){ ?>
.slideshow .nivo-controlNav a { box-shadow:0px 0px 0px 2px <?php $this->config->get('RGen_globalColourRing')?>; } 
<?php } ?>

/* MAIN CONTAINER BACK */
<?php if($this->config->get('RGen_pageBg') != ''){ ?>
#container, .page-heading strong, .pagination .links, .popup-box {
	background-color:#<?php echo $this->config->get('RGen_pageBg'); ?>;
	}
<?php } ?>
#container {
<?php if($this->config->get('RGen_pageShadow') == ''){ ?>
	-webkit-box-shadow: none !important;
	box-shadow: none !important;
<?php } else { ?>
	-webkit-box-shadow: 0px 0px 8px 0px <?php echo $this->config->get('RGen_pageShadow'); ?>;'
	box-shadow: 0px 0px 8px 0px <?php echo $this->config->get('RGen_pageShadow'); ?>;
<?php } ?>
}


/* IMAGE BOX */
<?php if($this->config->get('RGen_ImageBox') != ''){ ?>
.category-info .image, 
.img-frame, 
.mini-cart-info .image a, 
.mini-cart-info .image span,
.col-prd .image, 
.product-info .image, 
.product-info .image-additional a,
.product-info .image-additional .active a {
	background-color:#<?php echo $this->config->get('RGen_ImageBox'); ?>;
	border-color:#<?php echo $this->config->get('RGen_ImageBox'); ?>;
	}
<?php } ?>

/* LINK COLOUR 1 */
<?php if($this->config->get('RGen_LinkColor') != ''){ ?>
a, a:visited, a b,
#footer .column a,
.col-links > ul > li > a,
.col-links > ul > li ul > li > a {
	color:#<?php echo $this->config->get('RGen_LinkColor'); ?>;
	}
<?php } ?>
<?php if($this->config->get('RGen_LinkColor_hover') != ''){ ?>
a:hover,
#footer .column a:hover,
.col-links > ul > li a:hover,
.col-links > ul > li ul > li > a:hover {
	color:#<?php echo $this->config->get('RGen_LinkColor_hover'); ?>;
	}
<?php } ?>
.link-bt {
	<?php if($this->config->get('RGen_LinkBtColor') != ''){ ?>background:#<?php echo $this->config->get('RGen_LinkBtColor'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_LinkBtFontColor') != ''){ ?>color:#<?php echo $this->config->get('RGen_LinkBtFontColor'); ?>;<?php } ?>
	}
.link-bt:hover {
	<?php if($this->config->get('RGen_LinkBtColor_hover') != ''){ ?>background:#<?php echo $this->config->get('RGen_LinkBtColor_hover'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_LinkBtFontColor_hover') != ''){ ?>color:#<?php echo $this->config->get('RGen_LinkBtFontColor_hover'); ?>;<?php } ?>
	}


/* BUTTONS */
input.button, .button, a.button, a.sml-button, input.sml-button {
	<?php if($this->config->get('RGen_btColor') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_btColor'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_btFontColor') != ''){ ?>color:#<?php echo $this->config->get('RGen_btFontColor'); ?>;<?php } ?>
	}
input.button:hover,
.button:hover, 
.sml-button:hover {
	<?php if($this->config->get('RGen_btColor_hover') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_btColor_hover'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_btFontColor_hover') != ''){ ?>color:#<?php echo $this->config->get('RGen_btFontColor_hover'); ?>;<?php } ?>
	}
input.dark-bt,
a.dark-bt, 
#confirm .payment .button {
	<?php if($this->config->get('RGen_btColor1') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_btColor1'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_btFontColor1') != ''){ ?>color:#<?php echo $this->config->get('RGen_btFontColor1'); ?>;<?php } ?>
	}
input.dark-bt:hover,
.dark-bt:hover, 
#confirm .payment .button:hover {
	<?php if($this->config->get('RGen_btColor1_hover') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_btColor1_hover'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_btFontColor1_hover') != ''){ ?>color:#<?php echo $this->config->get('RGen_btFontColor1_hover'); ?>;<?php } ?>
	}



/* SCROLLER ARROWS */
.next, 
.prev, 
.jcarousel-next, 
.jcarousel-prev,
.thumb-wrapper .next,
.thumb-wrapper .prev {
	<?php if($this->config->get('RGen_arrowBg') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_arrowBg'); ?>;<?php } ?>
	<?php
	if($this->config->get('RGen_arrowBgRing') != ''){
		echo 'box-shadow:0px 0px 0px 6px '.$this->config->get('RGen_arrowBgRing').';';
	} ?>
	}
.next:hover, 
.prev:hover, 
.jcarousel-next:hover, 
.jcarousel-prev:hover,
.thumb-wrapper .next:hover,
.thumb-wrapper .prev:hover {
	<?php if($this->config->get('RGen_arrowBg_hover') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_arrowBg_hover'); ?>;<?php } ?>
	<?php
	if($this->config->get('RGen_arrowBgRing') != ''){
		echo 'box-shadow:0px 0px 0px 6px '.$this->config->get('RGen_arrowBgRing_hover').';';
	} ?>
	}


/* HEADERS */
<?php if($this->config->get('RGen_Header') != ''){ ?>
.header-1, .header-2, .header-3, .header-4, .column .box-heading, .page-heading strong {
	color:#<?php echo $this->config->get('RGen_Header'); ?>;
	}
<?php } ?>

/* TABLE LIST */
table.list thead td,
.wishlist-info thead td,
.cart-info thead td,
.compare-info thead td {
	<?php if($this->config->get('RGen_tableListHeaderFont') != ''){ ?>color:#<?php echo $this->config->get('RGen_tableListHeaderFont'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_tableListBorder_bottom') != ''){ ?>border-bottom:1px solid #<?php echo $this->config->get('RGen_tableListBorder_bottom'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_tableListHeader') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_tableListHeader'); ?>;<?php } ?>
	}
table.list td,
.wishlist-info tbody td,
.cart-info tbody td,
.compare-info td {
	<?php if($this->config->get('RGen_tableListBorder_bottom') != ''){ ?>border-bottom:1px solid #<?php echo $this->config->get('RGen_tableListBorder_bottom'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_tableListBorder_right') != ''){ ?>border-right:1px solid #<?php echo $this->config->get('RGen_tableListBorder_right'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_tableListFont') != ''){ ?>color:#<?php echo $this->config->get('RGen_tableListFont'); ?>;<?php } ?>
	}
<?php if($this->config->get('RGen_tableListBorder_bottom') != ''){ ?>
.cart-total tr.last td,
.cart-total .total-amount td {
	border-bottom:1px solid #<?php echo $this->config->get('RGen_tableListBorder_bottom'); ?>;
	}
<?php } ?>
<?php if($this->config->get('RGen_tableListBorder_right') != ''){ ?>
.cart-total tr td {
	border-right:1px solid #<?php echo $this->config->get('RGen_tableListBorder_right'); ?>;
	}
<?php } ?>
<?php if($this->config->get('RGen_tableListHeaderFont') != ''){ ?>
.compare-info tr td:first-child  {
	color:#<?php echo $this->config->get('RGen_tableListHeaderFont'); ?>;
	}
<?php } ?>

/* HEADER */
#header-wrapper {
	background:<?php if($this->config->get('RGen_headerBgImg') != ''){ ?> url(image/<?php echo $this->config->get('RGen_headerBgImg'); ?>) <?php echo $this->config->get('RGen_headerBgImgRepeat'); ?> <?php echo $this->config->get('RGen_headerBgImgPosition'); ?><?php } ?> <?php if($this->config->get('RGen_headerBg') != ''){ ?>#<?php echo $this->config->get('RGen_headerBg'); ?><?php } ?>;
	}
<?php if($this->config->get('RGen_Breadcrumb_Arrow') != ''){ ?>
.breadcrumb { color:#<?php echo $this->config->get('RGen_Breadcrumb_Arrow'); ?>; }
<?php } ?>
<?php if($this->config->get('RGen_Logo') != ''){ ?>
.store-logo { background-color:#<?php echo $this->config->get('RGen_Logo'); ?>; }
<?php } ?>

/* HEADER LINKS */
<?php if($this->config->get('RGen_Header_Link') != ''){ ?>
.breadcrumb a,
#header #welcome a,
#header .links a {
	color:#<?php echo $this->config->get('RGen_Header_Link'); ?>;
	}
<?php } ?>
<?php if($this->config->get('RGen_Header_Link_hover') != ''){ ?>
.breadcrumb a:hover,
#header #welcome a:hover,
#header .links a:hover {
	color:#<?php echo $this->config->get('RGen_Header_Link_hover'); ?>;
	}
<?php } ?>
<?php if($this->config->get('RGen_Header_text') != ''){ ?>
#header #welcome {
	color:#<?php echo $this->config->get('RGen_Header_text'); ?>;
	}
<?php } ?>


/* MAIN NAVIGATION */
<?php if($this->config->get('RGen_Nav') != ''){ ?>
#menu { background-color:#<?php echo $this->config->get('RGen_Nav'); ?>; }
<?php } ?>

<?php if($this->config->get('RGen_NavFont') != ''){ ?>
#menu > ul > li > a.top-lvl {
	color:#<?php echo $this->config->get('RGen_NavFont'); ?>;
	}
<?php } ?>

#menu > ul > li:hover > a.top-lvl {
	<?php if($this->config->get('RGen_Nav_hover') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_Nav_hover'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_NavFont_hover') != ''){ ?>color:#<?php echo $this->config->get('RGen_NavFont_hover'); ?>;<?php } ?>
	}

<?php if($this->config->get('RGen_NavSub') != ''){ ?>
#menu > ul > li > div { background-color:#<?php echo $this->config->get('RGen_NavSub'); ?>; }	
<?php } ?>

#menu > ul > li ul > li > a.sub-lvl {
	<?php if($this->config->get('RGen_NavSubFont') != ''){ ?>color: #<?php echo $this->config->get('RGen_NavSubFont'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_NavSubBorder') != ''){ ?>border-bottom-color:#<?php echo $this->config->get('RGen_NavSubBorder'); ?>;<?php } ?>
	}
#menu > ul > li ul > li > a.sub-lvl:hover {
	<?php if($this->config->get('RGen_NavSub_hover') != ''){ ?>background-color: #<?php echo $this->config->get('RGen_NavSub_hover'); ?>;<?php } ?>
	<?php if($this->config->get('RGen_NavSubFont_hover') != ''){ ?>color:#<?php echo $this->config->get('RGen_NavSubFont_hover'); ?>;<?php } ?>
	}
.home-btn { 
	<?php if($this->config->get('RGen_homeBt') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_homeBt'); ?>;<?php } ?>
	<?php
	if($this->config->get('RGen_homeBtRing') != ''){
		echo 'box-shadow:0px 0px 0px 5px '.$this->config->get('RGen_homeBtRing').';';
	} ?>
	}
.home-btn:hover { 
	<?php if($this->config->get('RGen_homeBt_hover') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_homeBt_hover'); ?>; <?php } ?>
	}

#header .button-search {
	<?php if($this->config->get('RGen_searchBt') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_searchBt'); ?>;<?php } ?>
	<?php
	if($this->config->get('RGen_searchBtRing') != ''){
		echo 'box-shadow:0px 0px 0px 5px '.$this->config->get('RGen_searchBtRing').'!important;';
	} ?>
	}
#header #search.active .button-search,
#header .button-search:hover {
	<?php
	if($this->config->get('RGen_searchBtRing_hover') != ''){
		echo 'box-shadow:0px 0px 0px 5px '.$this->config->get('RGen_searchBtRing_hover').'!important;';
	} ?>
	<?php if($this->config->get('RGen_searchBt_hover') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_searchBt_hover'); ?>;<?php } ?>
	}


/* PRODUCT BOX */
<?php if($this->config->get('RGen_RefinCateHdBg') != ''){ ?>
.refine-cate h2 { background-color:#<?php echo $this->config->get('RGen_RefinCateHdBg'); ?>; }
<?php } ?>

<?php if($this->config->get('RGen_RefinCateHdFontColor') != ''){ ?>
.refine-cate h2 span { color:#<?php echo $this->config->get('RGen_RefinCateHdFontColor'); ?>; }
<?php } ?>

.refine-cate ul li a { 
	<?php if($this->config->get('RGen_RefinCateBg') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_RefinCateBg'); ?>;<?php } ?> 
	<?php if($this->config->get('RGen_RefinCateFontColour') != ''){ ?>color:#<?php echo $this->config->get('RGen_RefinCateFontColour'); ?>; <?php } ?> 
	}
<?php if($this->config->get('RGen_prdBack') != ''){ ?>
.prd-block,
.product-list .image,
.product-list .info-wrp,
.prd-block .info {
	background-color:#<?php echo $this->config->get('RGen_prdBack'); ?>;
	}
<?php } ?> 
<?php if($this->config->get('RGen_prdHover_Bg') != ''){ ?>
.prd-block .info{
	background-color:#<?php echo $this->config->get('RGen_prdHover_Bg'); ?>;
	}
<?php } ?> 
.product-list .info {
	background:none;
	}
<?php if($this->config->get('RGen_prdName') != ''){ ?>
.prd-block a.name {
	color:#<?php echo $this->config->get('RGen_prdName'); ?>;
	}
<?php } ?> 
<?php if($this->config->get('RGen_prdLinks') != ''){ ?>
.prd-block .info-wrp ul li a, 
.product-list .buy-option ul li a {
	color:#<?php echo $this->config->get('RGen_prdLinks'); ?>;
	}
<?php } ?> 
<?php if($this->config->get('RGen_prdLinks_hover') != ''){ ?>
.prd-block .info-wrp ul li a:hover, 
.product-list .buy-option ul li a:hover {
	color:#<?php echo $this->config->get('RGen_prdLinks_hover'); ?>;
	}
<?php } ?> 

<?php if($this->config->get('RGen_prdText') != ''){ ?>
.product-list .description {
	color:#<?php echo $this->config->get('RGen_prdText'); ?>;
	}
<?php } ?> 
.prd-block .info-wrp .price,
.product-list .prd-block .info-wrp .price,
.product-info .price {
	<?php if($this->config->get('RGen_PriceBg') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_PriceBg'); ?>;<?php } ?> 
	<?php if($this->config->get('RGen_Price') != ''){ ?>color:#<?php echo $this->config->get('RGen_Price'); ?>;<?php } ?> 
	}
<?php if($this->config->get('RGen_Price') != ''){ ?>
.product-info .price-new,
.prd-block .info-wrp .price-new,
.product-list .prd-block .price-new {
	color:#<?php echo $this->config->get('RGen_Price'); ?>;
	}
<?php } ?> 
.product-list .prd-block .info-wrp .price,
.product-info .price {
	<?php
	if($this->config->get('RGen_PriceRing') != ''){
		echo 'box-shadow: 0px 0px 0px 10px '.$this->config->get('RGen_PriceRing').';';
	} ?>
	}
<?php if($this->config->get('RGen_OldPrice') != ''){ ?>
.prd-block .info-wrp .price-old,
.product-info .price .price-old {
	color: #<?php echo $this->config->get('RGen_OldPrice'); ?>;
	}
<?php } ?> 

.cart-bt,
.prd-block .cart-bt,
.product-info .cart .cart-bt,
.product-list .buy-option .cart-bt {
	<?php if($this->config->get('RGen_cartBt') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_cartBt'); ?>;<?php } ?> 
	<?php
	if($this->config->get('RGen_cartBtRing') != ''){
		echo 'box-shadow: 0px 0px 0px 6px '.$this->config->get('RGen_cartBtRing').';';
	} ?>
	}
.cart-bt:hover,
.prd-block .cart-bt:hover,
.product-info .cart .cart-bt:hover,
.product-list .buy-option .cart-bt:hover {
	<?php if($this->config->get('RGen_cartBt_hover') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_cartBt_hover'); ?>;<?php } ?> 
	<?php
	if($this->config->get('RGen_cartBtRing_hover') != ''){
		echo 'box-shadow: 0px 0px 0px 6px '.$this->config->get('RGen_cartBtRing_hover').';';
	} ?>
	}

/* MAIN BANNER FEATURE PRODUCT */
.store-home #slidshow-box .box-heading {
	<?php if($this->config->get('RGen_featuredTitleBg') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_featuredTitleBg'); ?>;<?php } ?> 
	<?php if($this->config->get('RGen_featuredTitleFont') != ''){ ?>color:#<?php echo $this->config->get('RGen_featuredTitleFont'); ?>;<?php } ?> 
	}
.store-home #slidshow-box .next, 
.store-home #slidshow-box .prev {
	<?php if($this->config->get('RGen_featuredArrow') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_featuredArrow'); ?>;<?php } ?> 
	}
.store-home #slidshow-box .next:hover, 
.store-home #slidshow-box .prev:hover {
	<?php if($this->config->get('RGen_featuredArrow_hover') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_featuredArrow_hover'); ?>;<?php } ?> 
	}
.store-home #slidshow-box .prd-block {
	<?php if($this->config->get('RGen_featuredBg') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_featuredBg'); ?>;<?php } ?> 
	}
.store-home #slidshow-box .prd-block .info {
	<?php if($this->config->get('RGen_featuredHover_Bg') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_featuredHover_Bg'); ?>;<?php } ?> 
	}

.store-home #slidshow-box .prd-block a.name,
.store-home #slidshow-box .prd-block .info-wrp ul li a {
	<?php if($this->config->get('RGen_featuredPrdText') != ''){ ?>color:#<?php echo $this->config->get('RGen_featuredPrdText'); ?>;<?php } ?> 
	}

.store-home #slidshow-box .price {
	<?php if($this->config->get('RGen_featuredPriceBg') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_featuredPriceBg'); ?>;<?php } ?> 
	}
.store-home #slidshow-box .price-new {
	<?php if($this->config->get('RGen_featuredPrice') != ''){ ?>color: #<?php echo $this->config->get('RGen_featuredPrice'); ?>;<?php } ?> 
	}
.store-home #slidshow-box .price-old {
	<?php if($this->config->get('RGen_featuredPriceOld') != ''){ ?>color: #<?php echo $this->config->get('RGen_featuredPriceOld'); ?>;<?php } ?> 
	}
.store-home #slidshow-box .prd-block .cart-bt {
	<?php if($this->config->get('RGen_featuredCrtBt') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_featuredCrtBt'); ?>;<?php } ?> 
	<?php
	if($this->config->get('RGen_featuredCrtBtRing') != ''){
		echo 'box-shadow: 0px 0px 0px 6px '.$this->config->get('RGen_featuredCrtBtRing').';';
	} ?>
	}
.store-home #slidshow-box .prd-block .cart-bt:hover {
	<?php if($this->config->get('RGen_featuredCrtBt_hover') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_featuredCrtBt_hover'); ?>;<?php } ?> 
	<?php
	if($this->config->get('RGen_featuredCrtBtRing_hover') != ''){
		echo 'box-shadow: 0px 0px 0px 6px '.$this->config->get('RGen_featuredCrtBtRing_hover').';';
	} ?>
	}


/* FOOTER */
<?php if($this->config->get('RGen_contactIcons') != ''){ ?>
#footer .contact-info .ph-image,
#footer .contact-info .fax-image,
#footer .contact-info .email-image {
	background-color:#<?php echo $this->config->get('RGen_contactIcons'); ?>;
	}
<?php } ?>
<?php if($this->config->get('RGen_FooterBg') != ''){ ?>
.footer-bt { background-color:#<?php echo $this->config->get('RGen_FooterBg'); ?>; }
<?php } ?>
.footer-bt a { 
	<?php if($this->config->get('RGen_FooterSocial') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_FooterSocial'); ?>;<?php } ?> 
	<?php if($this->config->get('RGen_FooterSocialRing') != ''){ ?>
	box-shadow: 0px 0px 0px 8px <?php echo $this->config->get('RGen_FooterSocialRing'); ?>;
	<?php } ?>
	}
.footer-bt a:hover { 
	<?php if($this->config->get('RGen_FooterSocial_hover') != ''){ ?>background-color:#<?php echo $this->config->get('RGen_FooterSocial_hover'); ?>; <?php } ?> 
	<?php
	if($this->config->get('RGen_FooterSocialRing_hover') != ''){
		echo 'box-shadow: 0px 0px 0px 8px '.$this->config->get('RGen_FooterSocialRing_hover').';';
	} ?>
	
	}
</style>