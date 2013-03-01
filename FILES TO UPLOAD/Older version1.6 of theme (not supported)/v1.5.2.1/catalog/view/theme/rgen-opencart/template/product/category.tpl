<?php echo $header; ?>

<div id="content" class="category">
	
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
		<h1 class="page-heading"><strong><?php echo $heading_title; ?></strong></h1>
		
		<?php echo $content_top; ?>
				
		<!--CATEGORY DESCRIPTION -->
		<?php if ($thumb || $description) { ?>
		<div class="category-info">
			<?php if ($thumb) { ?>
			<div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
			<?php } ?>
			<?php if ($description) { ?>
			<?php echo $description; ?>
			<?php } ?>
			<span class="clearfix hr"></span>
		</div>
		<?php } ?>
		
		<!--REFINE CATEGORIES -->
		<?php if ($categories) { ?>
		<div class="category-list refine-cate">
			<h2><span><?php echo $text_refine; ?></span></h2>
			<ul>
				<?php foreach ($categories as $category) { ?>
				<li>
					<a href="<?php echo $category['href']; ?>">
						<?php if ($category['pic']) { ?><img src="<?php echo $category['pic']; ?>" title="<?php echo $category['name']; ?>" alt="<?php echo $category['name']; ?>" /><?php } ?>
						<strong><?php echo $category['name']; ?></strong>
					</a>
				</li>
				<?php } ?>
			</ul>
		</div>
		<?php } ?>
		
		<!--PRODUCT FILTER TOOLS -->
		<?php if ($products) { ?>
		<div class="product-filter">
			<div class="sort"><b><?php echo $text_sort; ?></b>
				<select onchange="location = this.value;">
					<?php foreach ($sorts as $sorts) { ?>
					<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
					<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
					<?php } ?>
					<?php } ?>
				</select>
			</div>
			<div class="limit"><b><?php echo $text_limit; ?></b>
				<select onchange="location = this.value;">
					<?php foreach ($limits as $limits) { ?>
					<?php if ($limits['value'] == $limit) { ?>
					<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
					<?php } else { ?>
					<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
					<?php } ?>
					<?php } ?>
				</select>
			</div>
			
			<div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total" class="button"><?php echo $text_compare; ?></a></div>
			
			<div class="display">
				<!--<b><?php echo $text_display; ?></b> --> <b class="list-bt"><?php echo $text_list; ?></b> 
				<a onclick="display('grid');" class="grid-bt"><?php echo $text_grid; ?></a>
			</div>
			<span class="hr"></span>
		</div>
		
		
		<!--PRODUCT LIST AREA -->
		<div class="product-list">
			
			<!--PRODUCT BOX -->
			<?php foreach ($products as $product) { ?>
			<div class="prd-block">
				
				
				<div class="image">
					<?php if ($product['special']) { ?>
					<span class="offer-tag"></span>
					<?php } ?>
					<a href="<?php echo $product['href']; ?>">
						<?php if ($product['thumb']) { ?>
						<img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
						<?php } ?>
					</a>
				</div>
				
				
				<div class="info-wrp">
					<div class="info">
						<strong class="nameText"><a href="<?php echo $product['href']; ?>" class="name"><?php echo $product['name']; ?></a></strong>
						<div class="description"><?php echo $product['description']; ?></div>
						<div class="rating"><img src="catalog/view/theme/default/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" /></div>
						<span class="cart-button"><input class="cart-bt" type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" /></span>
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
						<?php if ($product['tax']) { ?>
						<span class="price-tax"><?php echo $text_tax; ?><br />
						<?php echo $product['tax']; ?></span>
						<?php } ?>
					</div>
					<?php } ?>
					
				</div>
			</div>
			<?php } ?>
			<div class="clearfix"></div>
		</div>
		
		
		<div class="pagination"><?php echo $pagination; ?></div>
		<?php } ?>
		
		
		<?php if (!$categories && !$products) { ?>
		<div class="content"><?php echo $text_empty; ?><br /><br /></div>
		<div class="buttons">
			<div class="right"><a href="<?php echo $continue; ?>" class="button dark-bt"><?php echo $button_continue; ?></a></div>
		</div>
		<?php } ?>
		
	</div>
	
	<div class="clearfix"></div>
	<?php echo $content_bottom; ?>
	
</div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		
		$('.product-grid').attr('class', 'product-list');
		
		
		$('.product-list > .prd-block').each(function(index, element) {
			
			$('.grid-block').off('hover');
			$('.product-grid > .prd-block').addClass('list-block');
			
			// PRODUCT IMAGE
			var image = $(element).find('.image').html();
			html = '<div class="image">' + image + '</div>';
			
			html += '<div class="info-wrp">'
			html += '	<div class="info">'
			html += '		<strong class="nameText">' + $(element).find('.nameText').html() + '</strong>';
			html += '		<div class="description">'+ $(element).find('.description').html() +'</div>';
			html += '		<div class="buy-option">';
			html += '			<span class="cart-button">' + $(element).find('.cart-button').html() + '</span>';
			html += '			<ul>' + $(element).find('ul').html() + '</ul>';
			html += '		</div>';
			html += '	</div>'
			
			var price = $(element).find('.price').html();
			if (price != null) {
				html += '<div class="price-wrp">';	
				html += '<div class="price">' + price  + '</div>';
				html += '</div>';
			}
			
			html += '</div>';
			$(element).html(html);
			
		});		
		
		$('.display').html('<a onclick="display(\'grid\');" class="grid-bt"><?php echo $text_grid; ?></a><b class="list-bt"><?php echo $text_list; ?></b>');
		
		$.cookie('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > .prd-block').each(function(index, element) {
			$('.product-grid > .prd-block').addClass('grid-block');
					
			// PRODUCT IMAGE
			var image = $(element).find('.image').html();
			html = '<div class="image">' + image + '</div>';
			
			html += '<div class="info-wrp">'
			html += '	<div class="info">'
			html += '		<strong class="nameText">' + $(element).find('.nameText').html() + '</strong>';
			html += '		<div class="description" style="display:none;">'+ $(element).find('.description').html() +'</div>';
			html += '		<span class="cart-button">' + $(element).find('.cart-button').html() + '</span>';
			html += '		<ul>' + $(element).find('ul').html() + '</ul>';
			html += '	</div>'
			
			// PRODUCT PRICE
			var price = $(element).find('.price').html();
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			html += '</div>';
			
			$(element).html(html);
			
			
		});	
					
		$('.display').html('<b class="grid-bt"><?php echo $text_grid; ?></b><a onclick="display(\'list\');" class="list-bt"><?php echo $text_list; ?></a>');
		
		$.cookie('display', 'grid');
		
		$('.grid-block').on('hover');
		setHover();
	}
}

view = $.cookie('display');

if (view) { 
	display(view);
} else {
	display('grid');
}

function setHover(){
	var H = $('.grid-block').find('.info-wrp').outerHeight();
	$('.grid-block').hover(
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
$(document).ready(function(){
	if($('.refine-cate li').length > 5){
		$('.refine-cate > ul').bxSlider({
			minSlides: 1,
			maxSlides: 5,
			slideWidth: 121,
			slideMargin: 0,
			pager:false
		});
	}
});

//--></script> 
<?php echo $footer; ?>