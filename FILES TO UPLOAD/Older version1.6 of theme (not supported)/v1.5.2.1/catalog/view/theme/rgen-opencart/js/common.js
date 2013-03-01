$(document).ready(function() {
	
	/* CSS CLASS ADDED FOR HOME PAGE */
	$('.store-home').parent().addClass('home-wrapper');
	if($('.store-home').hasClass('full-slideshow') == true){
		$('body').addClass('full-slideshow');
		//$('#header-wrapper').css({background:'none', bgColor:'none'});
	}
	
	if($('#content').hasClass('full-slideshow') || $('#content').hasClass('medium-slideshow')){
		$('#container').addClass('slideshow-overflow')
	}
	
	/* NOTIFICATION ADDED IN TO CONTENT AREA */
	$('#notification').prependTo('#content');
	
	/* CUSTOM FOOTER ADD CLASS */
	$('.custom-footer').find('.column:last').addClass('last');
	var colHeight = 0;  
    $('.custom-footer').find('.column').each(function(){  
        if($(this).height() > colHeight){ 
			colHeight = $(this).height();  
        }
    });
	if(colHeight > 200){
		$('.custom-footer .column').height(colHeight);  	
	}
    
	
	
	/* BREADCRUMB */
	$('.breadcrumb').appendTo('.navigation-bar');
	$('.breadcrumb').css({visibility:'visible'});
	
	
	/* AUTO TAB SETUP */
	var T = 0;
	var CT = 0;
	var CP = 0;
	$('.content-tab').each(function(){
		T++
		var createCls = 'cTab'+T;
		$(this).addClass(createCls);
		
		var newCls = '.cTab'+T + ' .htabs a';
		var newClsPane = '.cTab'+ T + ' .tab-content';
		
		
		$(newCls).each(function(){
			CT++
			var tabCls = 'cT'+CT;
			$(this).attr('href', '#'+tabCls);
		});
		
		$(newClsPane).each(function(){
			CP++
			var paneCls = 'cT'+CP;
			$(this).attr('id', paneCls);
		});
		$(newCls).tabs();
	});
	
	
	var srl = 0;
	$('.scrollPane').each(function(){
		
		// SET ID ON ALL SCROLL PANE
		srl++;
		var createCls = 'sp'+srl;
		$(this).addClass(createCls);
		$(this).wrapInner('<div class="dataHolder"></div>');
		
		// CONDITION FOR WEB KIT BROWSER'S ONLY
		if ($.browser.webkit) {
			var H = $(this).find('.dataHolder').outerHeight();
			if((H >= 1) && (H <= 500)){
				$(this).find('.dataHolder').css({height:H + 50});
			}if((H >= 501) && (H <= 1000)){
				$(this).find('.dataHolder').css({height:H + 100});
			}if((H >= 1001) && (H <= 2000)){
				$(this).find('.dataHolder').css({height:H + 300});
			}if((H >= 2001) && (H <= 3000)){
				$(this).find('.dataHolder').css({height:H + 450});
			}
		}
		
		// CALLING SCROLL PANE FUNCTION
		var newCls = '.sp'+srl;
		$(newCls).jScrollPane({
			verticalGutter 	: 0
		})
		$(newCls + ' .jspVerticalBar').prependTo(newCls);
		
	});
	
	
	/* SELECT DROPDOWN MENU	*/
	var i = 0;
	$('select').each(function(){
		
		i++;
		var createCls = 'select'+i;
		$(this).addClass(createCls);
		$(this).attr('class', createCls);
		
		$(this).wrap("<span class='selectWrp'></span>");
		
		var newCls = '.select'+i;
		
		if (!$.browser.opera) {
			
			var title = $(newCls).find('option:selected').text();
			
			if( $('option:selected', this).val() != ''  ) 
			title = $('option:selected',this).text();
			
			$(newCls)
				.css({'z-index':10,'opacity':0,'-khtml-appearance':'none', width:$(newCls).width()})
				.after('<span class="select">' + title + '</span>')
				.change(function(){
					val = $('option:selected',this).text();
					$(this).parent().find('span.select').text(val);
					})
			$(newCls).parent().find('.select').css({width:$(newCls).width()});
		};
		
	})

	
		
	
	/* CURRENCY */
	$('#currency').hover(
		function(){ $(this).find('ul').css({display:'block'}) },
		function(){ $(this).find('ul').css({display:'none'}) }
	);
	
	/* CURRENCY */
	$('#language').hover(
		function(){ $(this).find('ul').css({display:'block'}) },
		function(){ $(this).find('ul').css({display:'none'}) }
	);
	
	
	/* HEADER SECTION SEARCH BOX */
	$('.button-search').hover(
	function(){
		$('#search').addClass('active');
		$('#search > .search-box').css({opacity:0 , width:0, display:'block'});
		$('#search > .search-box input').css({opacity:0});
		$('#search > .search-box').stop().animate({
			opacity:1,
			width:475
			}, 300, function(){
				$('#search > .search-box input').stop().animate({
				opacity:1
				}, 150);	
			});
		
		},
	function(){}
	);
	$('.search-close').click(
	function(){
		$('#search').removeClass('active');
		$('#search > .search-box').css({display:'none'});
		}
	);
	
	/* Search */
	$('.button-search').bind('click', function() {
		url = $('base').attr('href') + 'index.php?route=product/search';
				 
		var filter_name = $('input[name=\'filter_name\']').attr('value');
		
		if (filter_name) {
			url += '&filter_name=' + encodeURIComponent(filter_name);
		}
		
		location = url;
	});
	
	
	$('#header input[name=\'filter_name\']').bind('keydown', function(e) {
		if (e.keyCode == 13) {
			url = $('base').attr('href') + 'index.php?route=product/search';
			 
			var filter_name = $('input[name=\'filter_name\']').attr('value');
			
			if (filter_name) {
				url += '&filter_name=' + encodeURIComponent(filter_name);
			}
			
			location = url;
		}
	});
	
	/* Mega Menu */
	$('#menu > ul > li > div').each(function(index, element) {
		
		$(element).children('ul').wrap("<td />");
		$(element).wrapInner("<tr />");
		$(element).wrapInner("<table />");
		
		if ($.browser.msie && ($.browser.version == 7 || $.browser.version == 6)) {
			
		}
	});
	
	$('#menu ul > li > a + div').each(function(index, element) {
		
		var menu = $('#menu').offset();
		var dropdown = $(this).parent().offset();
		
		i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#menu').outerWidth());
		
		if (i > 0) {
			$(this).css('margin-left', '-' + (i + 5) + 'px');
		}
	});

	// IE6 & IE7 Fixes
	if ($.browser.msie) {
		if ($.browser.version <= 6) {
			$('#column-left + #column-right + #content, #column-left + #content').css('margin-left', '195px');
			
			$('#column-right + #content').css('margin-right', '195px');
		
			$('.box-category ul li a.active + ul').css('display', 'block');	
		}
		
		if ($.browser.version <= 7) {
			$('#menu > ul > li').bind('mouseover', function() {
				$(this).addClass('active');
			});
				
			$('#menu > ul > li').bind('mouseout', function() {
				$(this).removeClass('active');
			});	
		}
	}
	
	$('.success img, .warning img, .attention img, .information img').live('click', function() {
		$(this).parent().fadeOut('slow', function() {
			$(this).remove();
		});
	});	
});

function addToCart(product_id, quantity) {
	quantity = typeof(quantity) != 'undefined' ? quantity : 1;

	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: 'product_id=' + product_id + '&quantity=' + quantity,
		dataType: 'json',
		success: function(json) {
			
			$('.success, .warning, .attention, .information, .error').remove();
			
			if (json['redirect']) {
				location = json['redirect'];
			}
			
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
				$('.success').fadeIn('slow');
				
				$('#cart').load('index.php?route=module/cart #cart > *', function(){
					var getTotal = $('.mini-cart-total').find('tr:last').find('td:last').html();
					$('#cart').find('#cart-total').html(getTotal);
				});

				//$('html, body').animate({ scrollTop: 0 }, 'slow'); 
			}
			if (json['success'] && $('#content').hasClass('store-home') == true) {
				$('html, body').animate({ scrollTop: 700 }, 'slow');
				
			}else {
				$('html, body').animate({ scrollTop: 0 }, 'slow');
			}	
		}
	});
}
function addToWishList(product_id) {
	$.ajax({
		url: 'index.php?route=account/wishlist/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information').remove();
			
			if (json['success']) {
				$('#notification').after('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
				$('.success').fadeIn('slow');
				
				$('#wishlist-total').html(json['total']);
				
				//$('html, body').animate({ scrollTop: 700 }, 'slow');
				
			}
			
			if (json['success'] && $('#content').hasClass('store-home') == true) {
				$('html, body').animate({ scrollTop: 700 }, 'slow');
				
			}else {
				$('html, body').animate({ scrollTop: 0 }, 'slow');
			}
			
		}
	});
}

function addToCompare(product_id) { 
	$.ajax({
		url: 'index.php?route=product/compare/add',
		type: 'post',
		data: 'product_id=' + product_id,
		dataType: 'json',
		success: function(json) {
			$('.success, .warning, .attention, .information').remove();
						
			if (json['success']) {
				$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
				
				$('.success').fadeIn('slow');
				
				$('#compare-total').html(json['total']);
				
				//$('html, body').animate({ scrollTop: 700 }, 'slow'); 
			}
			if (json['success'] && $('#content').hasClass('store-home') == true) {
				$('html, body').animate({ scrollTop: 700 }, 'slow');
				
			}else {
				$('html, body').animate({ scrollTop: 0 }, 'slow');
			}	
		}
	});
}