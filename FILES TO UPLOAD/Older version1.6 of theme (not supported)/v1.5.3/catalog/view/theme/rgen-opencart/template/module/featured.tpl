<?php if ($this->config->get('RGen_SlideShow_Mod') == 'featured' && $getRoute == 'common/home') { ?>
<div class="box featured-box slidshow-prd" id="slidshow-box">
<?php }else { ?>
<div class="box featured-box" id="featured-box<?php echo $module; ?>">
<?php } ?>

	<div class="box-heading header-1"><?php echo $heading_title; ?></div>
	<div class="box-content">
		<div class="box-product">
			<?php foreach ($products as $product) { ?>
			<div class="bx-item">
				<div class="prd-block">
					
					<div class="image">
						<?php if ($product['special']) { ?>
						<span class="offer-tag"></span>
						<?php } ?>
						<a href="<?php echo $product['href']; ?>">
							<?php if ($product['thumb']) { ?>
							<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
							<?php } ?>
						</a>
					</div>
					
					<div class="info-wrp">
						<div class="info"> <a href="<?php echo $product['href']; ?>" class="name"><?php echo $product['name']; ?></a>
							<?php if ($product['rating']) { ?>
							<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
							<?php } ?>
							<input class="cart-bt" type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />
							<ul>
								<li><a href="<?php echo $product['href']; ?>"><?php echo $button_moreinfo; ?> <span>&#8250;</span></a></li>
								<li><a onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?> <span>&#8250;</span></a></li>
								<li class="last"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?> <span>&#8250;</span></a></li>
							</ul>
						</div>
						<?php if ($product['price']) { ?>
						<div class="price">
							<?php if (!$product['special']) { ?>
							<?php echo $product['price']; ?>
							<?php } else { ?>
							<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
							<?php } ?>
						</div>
						<?php } ?>
					</div>
				</div>
			</div>
			<?php } ?>
		</div>
	</div>
	<div class="clearfix hr"></div>
</div>

<script type="text/javascript"><!--
$(document).ready(function(){
	
	var prdObj = $('#featured-box<?php echo $module; ?>');
	var chkW = $('.content-body').width();
	var posChk = prdObj.parent().hasClass('column');
	var chkHome = $('.featured-box').hasClass('slidshow-prd');
	
	// CHECK FOR COLUMN PRODUCTS
	if(posChk == true) {
		prdObj.find('.prd-block').addClass('col-prd').removeClass('prd-block');
		prdObj.find('.col-prd').each(function(index, element) {
			$(this).addClass('active-prd');
			$('.active-prd').find('.cart-bt').after('<span class="col-price"></span>');
			$('.active-prd').find('.price').prependTo('.active-prd .col-price');
			$(this).removeClass('active-prd');
		});
	}else {
		if(chkHome == true) {
			$('#slidshow-box').find('.box-product').each(function() {
				$(this).bxSlider({ minSlides: 1, maxSlides: 2, slideWidth: 235, slideMargin: 0, pager:false	});
				hoverSet();
			});
			$('#slidshow-box').prependTo('#content .slideshow:first');
		}else {
			prdObj.find('.box-product').each(function() {
				if($(this).find('.bx-item').length > 3) {
					$(this).bxSlider({ minSlides: 1, maxSlides: 4, slideWidth: 235, slideMargin: 0,	pager:false });
				}
				hoverSet();
			});
		}
	}
	
	// SET HOVER FOR PRODUCTS
	function hoverSet(){
		var H = $('#featured-box<?php echo $module; ?>, #slidshow-box').find('.info-wrp').outerHeight();
		$('#featured-box<?php echo $module; ?> .prd-block, #slidshow-box .prd-block').hover(
			function(){
				$(this).find('.info-wrp').stop().animate({
					bottom:1
					}, 300, function(){});
				},
			function(){
				H; 
				$(this).find('.info-wrp').stop().animate({
					bottom:-(H-1)
					}, 300, function(){});
				
				}
		);
	}
	
	
});


//--></script>