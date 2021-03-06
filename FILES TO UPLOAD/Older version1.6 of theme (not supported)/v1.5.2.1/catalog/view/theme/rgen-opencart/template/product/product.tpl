<?php echo $header; ?>

<div id="content" class="prdinfo-wrapper">
	
	<!--CONTENT LEFT -->
	<?php echo $column_left; ?>
	
	<!--CONTENT RIGHT -->
	<?php echo $column_right; ?>
	
	<!--PAGE CONTENT WRAPPER -->
	<div class="content-body">
		
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<span><?php echo $breadcrumb['separator']; ?></span><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>
		<?php echo $content_top; ?>
		
		<div class="product-info">
			
			<!--PRODUCT IMAGE -->
			<?php if ($thumb || $images) { ?>
			<div class="left">
				
				<div class="thumb-wrapper">
					<?php if ($images) { ?>
					<ul class="image-additional">
						<?php if ($thumb) { ?>
						<li>
							<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<?php echo $thumb; ?>'">
							<img src="<?php echo $additional; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
							</a>
						</li>
						<?php } ?>
						<?php foreach ($images as $image) { ?>
						<li>
							<a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<?php echo $image['thumb1']; ?>'">
							<img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
							</a>
						</li>
						<?php } ?>
					</ul>
					<?php } ?>
				</div>
				
				
				<?php if ($thumb) { ?>
				<div class="image">
					<a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="cloud-zoom" id='zoom1' rel="adjustX: 60, adjustY:-15, showTitle:false, lensOpacity:0.5">
						<img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" />
					</a>
					<span class="zoom-text"><b></b><?php echo $text_zoom; ?></span>
				</div>
				<?php } ?>
			</div>
			<?php } ?>
			
			<div class="right">
				<h1 class="header-1"><?php echo $heading_title; ?></h1>
				<div class="l">
				
					<ul class="description">
						<?php if ($manufacturer) { ?>
						<li><span><?php echo $text_manufacturer; ?></span><a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
						<?php } ?>
						<li><span><?php echo $text_model; ?></span><?php echo $model; ?></li>
						<?php if ($reward) { ?>
						<li><span><?php echo $text_reward; ?></span><?php echo $reward; ?></li>
						<?php } ?>
						<li><span><?php echo $text_stock; ?></span><?php echo $stock; ?></li>
					</ul>
					
					<?php if ($review_status) { ?>
					<div class="review">
						
						<span class="lrg-stars stars-<?php echo $rating; ?>" title="<?php echo $reviews; ?>"></span>
						<span>
							<a href="#review" id="readReview" onclick="$('a[href=\'#tab-review\']').trigger('click');">(<?php echo $reviews; ?>)</a><br />
							<a href="#review" id="writeReview" onclick="$('.wrt-bt').trigger('click');"><?php echo $text_write; ?></a>
						</span>
					</div>
					<?php } ?>
					
					<?php if ($options) { ?>
					<div class="options">
						<!--<h2><?php echo $text_option; ?></h2>
						<br /> -->
						
						<!--SELECT OPTION -->
						<?php foreach ($options as $option) { ?>
						<?php if ($option['type'] == 'select') { ?>
						<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
							<b><?php if ($option['required']) { ?><span class="required">*</span><?php } ?> <?php echo $option['name']; ?>: </b>
							<select name="option[<?php echo $option['product_option_id']; ?>]">
								<option value=""><?php echo $text_select; ?></option>
								<?php foreach ($option['option_value'] as $option_value) { ?>
								<option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
								<?php if ($option_value['price']) { ?>
								(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
								<?php } ?>
								</option>
								<?php } ?>
							</select>
						</div>
						<?php } ?>
						
						<!--RADIO BUTTON -->
						<?php if ($option['type'] == 'radio') { ?>
						<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
							<b><?php if ($option['required']) { ?><span class="required">*</span><?php } ?> <?php echo $option['name']; ?>:</b>
							<?php foreach ($option['option_value'] as $option_value) { ?>
							<input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
							<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
								<?php if ($option_value['price']) { ?>
								(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
								<?php } ?>
							</label><br />
							<?php } ?>
						</div>
						<?php } ?>
						
						<!--CHECK BOX -->
						<?php if ($option['type'] == 'checkbox') { ?>
						<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
							<b><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</b>
							<?php foreach ($option['option_value'] as $option_value) { ?>
							<input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
							<label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
								<?php if ($option_value['price']) { ?>
								(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
								<?php } ?>
							</label>
							<br />
							<?php } ?>
						</div>
						<?php } ?>
						
						<?php if ($option['type'] == 'image') { ?>
						<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
							<b><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</b>
							<table class="option-image">
								<?php foreach ($option['option_value'] as $option_value) { ?>
								<tr>
									<td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
									<td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
									<td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
											<?php if ($option_value['price']) { ?>
											(<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
											<?php } ?>
										</label></td>
								</tr>
								<?php } ?>
							</table>
						</div>
						<?php } ?>
						
						<!--TEXT BOX -->
						<?php if ($option['type'] == 'text') { ?>
						<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
							<b><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</b>
							<input type="text" class="input-text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
						</div>
						<?php } ?>
						
						<!--TEXTAREA -->
						<?php if ($option['type'] == 'textarea') { ?>
						<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
							<b><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</b>
							<textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5"><?php echo $option['option_value']; ?></textarea>
						</div>
						<?php } ?>
						
						<!--IMAGE UPLOAD -->
						<?php if ($option['type'] == 'file') { ?>
						<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
							<b><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</b>
							<a id="button-option-<?php echo $option['product_option_id']; ?>" class="button"><?php echo $button_upload; ?></a>
							<input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
						</div>
						<?php } ?>
						
						<!--DATE -->
						<?php if ($option['type'] == 'date') { ?>
						<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
							<b><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</b>
							<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
						</div>
						<?php } ?>
						
						<!--DATE TIME -->
						<?php if ($option['type'] == 'datetime') { ?>
						<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
							<b><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</b>
							<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
						</div>
						<?php } ?>
						
						<!--TIME -->
						<?php if ($option['type'] == 'time') { ?>
						<div id="option-<?php echo $option['product_option_id']; ?>" class="option">
							<b><?php if ($option['required']) { ?><span class="required">*</span><?php } ?><?php echo $option['name']; ?>:</b>
							<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
						</div>
						<?php } ?>
						
						<?php } ?>
					</div>
					<?php } ?>
					
					<div class="share"><!-- AddThis Button BEGIN -->
						<div class="addthis_default_style"><a class="addthis_button_facebook"></a> <a class="addthis_button_twitter"></a> <a class="addthis_button_email"></a> <a class="addthis_button_print"></a> <a class="addthis_button_compact"><?php echo $text_share; ?></a> </div>
						<script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
						<!-- AddThis Button END --> 
					</div>
					
				</div>
				
				<div class="r">
					<?php if ($price) { ?>
						<div class="price">
							<?php //echo $text_price; ?>
							<?php if (!$special) { ?>
							<?php echo $price; ?>
							<?php } else { ?>
							<span class="price-old"><?php echo $price; ?></span>
							<span class="price-new"><?php echo $special; ?></span>
							<?php } ?>
							<?php if ($tax) { ?>
							<span class="price-tax"><?php echo $text_tax; ?><br /><?php echo $tax; ?></span>
							<?php } ?>
						</div>
						<?php if ($points) { ?>
						<span class="reward"><?php echo $text_points; ?> <?php echo $points; ?></span>
						<?php } ?>
						<?php if ($discounts) { ?>
						<ul class="discount">
							<?php foreach ($discounts as $discount) { ?>
							<li><?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?></li>
							<?php } ?>
						</ul>
						<?php } ?>
					<?php } ?>
					
					<div class="cart">
						<span class="qty">
							<strong><?php echo $text_qty; ?></strong>
							<input type="text" name="quantity" size="2" class="qty-input" value="<?php echo $minimum; ?>" />
							<input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
							<input type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="cart-bt" />
						</span>
						<span class="cart-option">
							<a onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?></a>
							<a onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a>
						</span>
					</div>
					<?php if ($minimum > 1) { ?>
					<div class="minimum"><?php echo $text_minimum; ?></div>
					<?php } ?>
				</div>
				
			</div>
			<div class="clearfix hr"></div>
			
			<div class="left">
				<!--DESCRIPTION TABS -->
				<div id="tabs" class="htabs">
					<a href="#tab-description"><?php echo $tab_description; ?></a>
					<?php if ($attribute_groups) { ?>
					<a href="#tab-attribute"><?php echo $tab_attribute; ?></a>
					<?php } ?>
				</div>
				<div id="tab-description" class="tab-content">
					<div class="scrollPane"><?php echo $description; ?></div>
				</div>
				<?php if ($attribute_groups) { ?>
				<div id="tab-attribute" class="tab-content">
					<div class="scrollPane">
						<table class="list" style="width:445px;">
							<?php foreach ($attribute_groups as $attribute_group) { ?>
							<thead>
								<tr>
									<td colspan="2"><?php echo $attribute_group['name']; ?></td>
								</tr>
							</thead>
							<tbody>
								<?php foreach ($attribute_group['attribute'] as $attribute) { ?>
								<tr>
									<td><?php echo $attribute['name']; ?></td>
									<td><?php echo $attribute['text']; ?></td>
								</tr>
								<?php } ?>
							</tbody>
							<?php } ?>
						</table>	
					</div>
				</div>
				<?php } ?>
				
			</div>
			
			<div class="right">
				
				<div class="reviews-block">
					<a name="review"></a>
					<?php if ($review_status) { ?>
					<h2 class="review-title header-3"><?php echo $tab_review; ?></h2>
					<?php } ?>
					<?php if ($review_status) { ?>
					<div class="read-review">
						<div id="review"></div>
						<span class="wrt-bt wrt-on" title="Write review"></span>
					</div>
					<div class="write-review">
						<div class="message"></div>
						<label><?php echo $entry_name; ?></label>
						<input type="text" name="name" value="" />
						
						<label><?php echo $entry_review; ?><span class="note"><?php echo $text_note; ?></span></label>
						<textarea name="text" cols="40" rows="8" style="width: 95%;"></textarea>
						
						<label><?php echo $entry_rating; ?></label>
						<ol>
							<li class="bad"><?php echo $entry_bad; ?></li>
							<li><input type="radio" name="rating" value="1" /></li>
							<li><input type="radio" name="rating" value="2" /></li>
							<li><input type="radio" name="rating" value="3" /></li>
							<li><input type="radio" name="rating" value="4" /></li>
							<li><input type="radio" name="rating" value="5" /></li>
							<li class="good"><?php echo $entry_good; ?></li>
						</ol>
						
						<label><?php echo $entry_captcha; ?></label>
						<ul class="captcha">
							<li class="captcha-input"><input type="text" name="captcha" style="width:142px;" value="" /></li>
							<li><img src="index.php?route=product/product/captcha" alt="" id="captcha" /></li>
						</ul>
						
						<a id="button-review" class="button dark-bt"><?php echo $button_continue; ?></a>
						
					</div>
					<?php } ?>	
				</div>
				
			</div>
			
			<div class="clearfix"></div>
			
		</div>
		
		<?php if ($products) { ?>
		<div class="box related-prd" id="related-prd">
			<div class="clearfix hr"></div>
			<div class="box-heading header-1"><?php echo $tab_related; ?> (<?php echo count($products); ?>)</div>
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
								<div class="info">
									<a href="<?php echo $product['href']; ?>" class="name"><?php echo $product['name']; ?></a>
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
								<div class="price" onclick="javascript:location.href='<?php echo $product['href']; ?>'">
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
					</div>
					<?php } ?>
					
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		
		<?php } ?>
		
		<?php if ($tags) { ?>
		
		<div class="tags">
			<h3 class="header-3"><?php echo $text_tags; ?></h3>
			<?php foreach ($tags as $tag) { ?>
			<a href="<?php echo $tag['href']; ?>" class="link-bt"><?php echo $tag['tag']; ?></a>
			<?php } ?>
		</div>
		<?php } ?>
		
	</div>
	
	<div class="clearfix"></div>
	<?php echo $content_bottom; ?>

</div>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	overlayClose: true,
	opacity: 0.5
});

$('#readReview, #writeReview').bind('click',function(event){
	$('html, body').animate({scrollTop: $('.reviews-block').offset().top}, 500);
	return false;
});



$('#button-cart').bind('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, information, .error').remove();
			
			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
					}
				}
			} 
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
				$('.success').fadeIn('slow');
				
				$('#cart').load('index.php?route=module/cart #cart > *', function(){
					var getTotal = $('.mini-cart-total').find('tr:last').find('td:last').html();
					$('#cart').find('#cart-total').html(getTotal);
				});
					
				//$('#cart-total').html(json['total']);
				
				$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}	
		}
	});
});

$(document).ready(function(){
	
	if($('.image-additional li').length > 3){
		$('.image-additional').bxSlider({
			mode:'vertical',
			minSlides: 3,
			slideMargin: 0,
			pager:false
		});	
	}
	
	$('.image-additional li a').click(function(){
		$('.image-additional li').removeClass('active');
		$(this).parent().addClass('active');
	});
	
	if($('.image-additional li').hasClass('pager') == true ){
		$('.image-additional .pager:first').addClass('active');
	}else {
		$('.image-additional li:first').addClass('active');
	}
	
	
	
	priceTax = $('.product-info .r').find('.price-tax').html();
	if (priceTax != null) {
		$('.product-info .price').addClass('price-tax-y');
	}
	
	$('#tabs a').tabs();
	
	$('.wrt-bt').toggle(
		function(){
			$('.reviews-block > .write-review').css({display:'block'});	
			$('.wrt-on').addClass('wrt-off');
			$('.wrt-on').removeClass('wrt-on');
		},
		function(){
			$('.reviews-block > .write-review').css({display:'none'});
			$('.wrt-off').addClass('wrt-on');
			$('.wrt-off').removeClass('wrt-off');
		}
	);
	
	if($('#related-prd .bx-item').length > 4){
		$('#related-prd .box-product').bxSlider({
			minSlides: 1,
			maxSlides: 4,
			slideWidth: 234,
			slideMargin: 0,
			pager:false
		});
	}
	
	
	
	var H = $('.related-prd').find('.info-wrp').outerHeight();
	$('.related-prd .prd-block').hover(
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
});

//--></script> 

<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>

<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
	},
	onComplete: function(file, json) {
		$('.error').remove();
		
		if (json.success) {
			alert(json.success);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json.file);
		}
		
		if (json.error) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json.error + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--

/* FETCH REVIEW  */
$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>', function() {
	$('#review').jScrollPane({ verticalGutter: 20 });
});

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('.write-review > .message').prepend('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data.error) {
				$('.write-review > .message').prepend('<div class="warning">' + data.error + '</div>');
			}
			
			if (data.success) {
				$('.write-review > .message').prepend('<div class="success">' + data.success + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 

<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
<script type="text/javascript"><!--
if ($.browser.msie && $.browser.version == 6) {
	$('.date, .datetime, .time').bgIframe();
}

$('.date').datepicker({dateFormat: 'yy-mm-dd'});
$('.datetime').datetimepicker({
	dateFormat: 'yy-mm-dd',
	timeFormat: 'h:m'
});
$('.time').timepicker({timeFormat: 'h:m'});
//--></script> 
<?php echo $footer; ?>