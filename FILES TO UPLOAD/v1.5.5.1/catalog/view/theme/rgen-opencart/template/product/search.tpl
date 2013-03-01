<?php echo $header; ?>

<div id="content">
	
	<!--CONTENT LEFT -->
	<?php echo $column_left; ?>
	
	<!--CONTENT RIGHT -->
	<?php echo $column_right; ?>
	
	<!--PAGE CONTENT WRAPPER -->
	<div class="content-body search-page">
		
		<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<span><?php echo $breadcrumb['separator']; ?></span><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
		</div>
		
		<h1 class="page-heading"><strong><?php echo $heading_title; ?></strong></h1>
		
		<?php echo $content_top; ?>
		
		<div class="box-form">
			<h2 class="header-3"><?php echo $text_critea; ?></h2>
			<div class="content">
				<table>
					<tr>
						<td valign="top"><label style="position:relative; top:8px;"><?php echo $entry_search; ?></label></td>
						<td>
							<?php if ($search) { ?>
							<input type="text" name="search;" value="<?php echo $search;; ?>" />
							<?php } else { ?>
							<input type="text" name="search;" value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
							<?php } ?>
							<select name="category_id">
								<option value="0"><?php echo $text_category; ?></option>
								<?php foreach ($categories as $category_1) { ?>
								<?php if ($category_1['category_id'] == $category_id) { ?>
								<option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
								<?php } else { ?>
								<option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
								<?php } ?>
								<?php foreach ($category_1['children'] as $category_2) { ?>
								<?php if ($category_2['category_id'] == $category_id) { ?>
								<option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
								<?php } else { ?>
								<option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
								<?php } ?>
								<?php foreach ($category_2['children'] as $category_3) { ?>
								<?php if ($category_3['category_id'] == $category_id) { ?>
								<option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
								<?php } else { ?>
								<option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
								<?php } ?>
								<?php } ?>
								<?php } ?>
								<?php } ?>
							</select>
							
							<br />
							<?php if ($sub_category) { ?>
							<input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
							<?php } else { ?>
							<input type="checkbox" name="sub_category" value="1" id="sub_category" />
							<?php } ?>
							<label for="sub_category"><?php echo $text_sub_category; ?></label>
							
							<?php if ($description) { ?>
							<input type="checkbox" name="description" value="1" id="description" checked="checked" />
							<?php } else { ?>
							<input type="checkbox" name="description" value="1" id="description" />
							<?php } ?>
							<label for="description"><?php echo $entry_description; ?></label>
							<br /><br />
							<input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" />
						</td>
					</tr>
				</table>
			</div>
		</div>
		
		<h2 class="header-2"><?php echo $text_search; ?></h2><br /><br />
		
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
				<b><?php echo $text_list; ?></b> 
				<a onclick="display('grid');"><?php echo $text_grid; ?></a>
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
		<?php } else { ?>
		<div class="content"><?php echo $text_empty; ?></div>
		<?php }?>
		
	</div>
	<div class="clearfix"></div>
	<?php echo $content_bottom; ?>

</div>
<script type="text/javascript"><!--
$('#content input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').attr('disabled', 'disabled');
		$('input[name=\'sub_category\']').removeAttr('checked');
	} else {
		$('input[name=\'sub_category\']').removeAttr('disabled');
	}
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
	var search = $('#content input[name=\'search\']').attr('value');
	
	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').attr('value');
	
	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}
	
	var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');
	
	if (sub_category) {
		url += '&sub_category=true';
	}
		
	var filter_description = $('#content input[name=\'description\']:checked').attr('value');
	
	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});
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
			
			var offer = $(element).find('.price').find('.offer-tag').prependTo($(element).find('.image'));
			if (offer != null) {
				offer;
			}
		});		
		
		$('.display').html('<b class="list-bt"><?php echo $text_list; ?></b> <a onclick="display(\'grid\');" class="grid-bt"><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
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
			
			var offer = $(element).find('.price').find('.offer-tag').prependTo($(element).find('.image'));
			if (offer != null) {
				offer;
			}
		});	
					
		$('.display').html('<a onclick="display(\'list\');" class="list-bt"><?php echo $text_list; ?></a><b class="grid-bt"><?php echo $text_grid; ?></b>');
		
		$.totalStorage('display', 'grid');
		
		$('.grid-block').on('hover');
	}
}

view = $.totalStorage('display');

if (view) { 
	display(view);
} else {
	<?php if ($this->config->get('RGen_prdList_defaultView') == 'grid') { ?>
	display('grid');
	<?php }else { ?>
	display('list');
	<?php } ?>
}

//--></script>
<?php echo $footer; ?>