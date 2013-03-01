<?php if ($this->config->get('RGen_SlideShow_Mod_status') == 1 && $this->config->get('RGen_SlideShow_Mod') == 'best' && $getRoute == 'common/home') { ?>
<div class="box bestseller-prd slidshow-prd list-carousel" id="slidshow-box">
<?php }else { ?>
<div class="box bestseller-prd list-carousel" id="bestseller-prd<?php echo $module; ?>">
<?php } ?>

	<div class="box-heading header-1"><?php echo $heading_title; ?></div>
	<ul class="box-product">
		<?php foreach ($products as $product) { ?>
		<li class="carousel-item">
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
					<div class="info">
						<a href="<?php echo $product['href']; ?>" class="name"><?php echo $product['name']; ?></a>
						<?php if ($product['price']) { ?>
						<div class="price-wrp">
							<?php if (!$product['special']) { ?>
							<?php echo $product['price']; ?>
							<?php } else { ?>
							<span class="price-old"><?php echo $product['price']; ?></span>
							<?php echo $product['special']; ?>
							<?php } ?>
						</div>
						<?php } ?>
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
						<span class="price-old"><?php echo $product['price']; ?></span>
						<span class="price-new"><?php echo $product['special']; ?></span>
						<?php } ?>
					</div>
					<?php } ?>
					
				</div>
				
			</div>
		</li>
		<?php } ?>
	</ul>
	<div class="carousel-controls"><a class="prev"></a><a class="next"></a></div>
	<div class="clearfix hr"></div>
</div>
<script type="text/javascript"><!--
$(document).ready(function(){
	
	var prdObj 	= 	$('#bestseller-prd<?php echo $module; ?>');
	var chkW 	= 	$('.content-body').width();
	var posChk 	= 	prdObj.parent().hasClass('column');
	var chkHome = 	$('.bestseller-prd').hasClass('slidshow-prd');
	
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
		
		/* PRODUCTS DISPLAY ON SLIDESHOW 
		*******************************************/
		<?php if ($this->config->get('RGen_SlideShow_Mod_status') == 1 && $this->config->get('RGen_SlideShow_Mod') == 'best' && $getRoute == 'common/home') { ?>
		$('#slidshow-box').find('.box-product').each(function() {
			
			$(this).carouFredSel({
				//responsive: true,
				prev: '#slidshow-box .carousel-controls .prev',
				next: '#slidshow-box .carousel-controls .next',
				width: 469,
				auto:false,
				scroll: 1,
				onCreate: function(){
					$('#slidshow-box .carousel-controls').css({ display:'block' });
				},
				items: { visible: {min: 2}},
				swipe:{onTouch: true},
				circular:false,
				infinite:false
			});
		});
		$('#slidshow-box').prependTo('#content .slideshow:first');
		
		/* PRODUCTS DISPLAY ON NORMAL MODULE
		*******************************************/
		<?php }else { ?>
		prdObj.find('.box-product').each(function() {
			if($(this).children('li').length == 3) {
				$(this).addClass('less3');
			}else if($(this).children('li').length == 2) {
				$(this).addClass('less2');
			}else if($(this).children('li').length == 1) {
				$(this).addClass('less1');
			}
			
			$(this).carouFredSel({
				responsive: true,
				prev: '#bestseller-prd<?php echo $module; ?> .carousel-controls .prev',
				next: '#bestseller-prd<?php echo $module; ?> .carousel-controls .next',
				width: '100%',
				auto:false,
				scroll: 1,
				items: {visible: {min: 1,max: 4}},
				swipe:{onTouch: true},
				circular:false,
				infinite:false,
			}, { onWindowResize  : "throttle" });
		});
		<?php } ?>
	}

});
//--></script>
