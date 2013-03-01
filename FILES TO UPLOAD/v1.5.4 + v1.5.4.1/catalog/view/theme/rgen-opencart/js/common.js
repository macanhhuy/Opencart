// Tiny jQuery Plugin by Chris Goodchild
$.fn.exists = function(callback) { var args = [].slice.call(arguments, 1); if (this.length) { callback.call(this, args); } return this; };
$(document).ready(function() {
	
	/* CSS CLASS ADDED FOR HOME PAGE */
	$('.store-home').parent().addClass('home-wrapper');
	if($('.store-home').hasClass('full-slideshow') == true){
		$('body').addClass('full-slideshow');
	}
	$('.home-wrapper').exists(function() {
		$('body').addClass('homepage');
	});
	
	if($('#content').hasClass('full-slideshow') || $('#content').hasClass('medium-slideshow')){
		$('#container').addClass('slideshow-overflow')
	}
	
	/* NOTIFICATION ADDED IN TO CONTENT AREA */
	$('#notification').prependTo('#content');
	
	/************************************************************/
	/* CUSTOM FOOTER ADD CLASS */
	
	$('.custom-footer').find('.column:last').addClass('last');
	
	
	/************************************************************/
	/* MAIN MENU DROP DOWN */
	
	var mainNavigation = $('#menu').clone();
	
	if($('#menu').find('select').length == 0){
		$('#menu').prepend('<select class="menu"></select>');
	}
	var selectMenu 	= $('select.menu');
	var menuText 	= $('#menu > span').text();
	
	$(selectMenu).prepend('<option>'+menuText+'</option>');
	//$(selectMenu).append('<option value="'+$('#menu .home-btn').attr('href')+'">'+ $('#menu .home-btn').text() +'</option>');
	
	$(mainNavigation).children('ul').children('li').each(function() {
		var href = $(this).children('a').attr('href');
		var text = $(this).children('a').text();
		$(selectMenu).append('<option value="'+href+'">'+text+'</option>');
		
		if ($(this).children('div').find('ul').length > 0) {
			$(this).children('div').find('ul').children('li').each(function() {
				var href2 = $(this).children('a').attr('href');
				var text2 = $(this).children('a').text();
				$(selectMenu).append('<option value="'+href2+'"> |-- '+text2+'</option>');
			});
		}
	});
	$(selectMenu).change(function() { location = this.options[this.selectedIndex].value; });
	
	/************************************************************/
	
	
	/* BREADCRUMB */
	$('.breadcrumb').appendTo('.navigation-bar');
	$('.breadcrumb').css({visibility:'visible'});
	$('.thm-3 .breadcrumb').appendTo('#menu');
	
	
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
		
		var newCls = '.sp'+srl;
		// CALLING SCROLL PANE FUNCTION
		$(newCls).jScrollPane({ verticalGutter: 0, hideFocus: true });
		$(newCls + ' .jspVerticalBar').prependTo(newCls);
		$(newCls + ' > .jspVerticalBar').addClass('srlBar1');
		
		var api = $(newCls).data('jsp');
		var throttleTimeout;
		$(window).bind('resize', function(){
			if ($.browser.msie) {
				// IE fires multiple resize events while you are dragging the browser window which
				// causes it to crash if you try to update the scrollpane on every one. So we need
				// to throttle it to fire a maximum of once every 50 milliseconds...
				if (!throttleTimeout) {
					throttleTimeout = setTimeout(
						function() {
							api.reinitialise();
							$(newCls + ' .jspContainer .jspVerticalBar').exists(function() {
								console.log('Scroll bar is exists');	
								$(this).addClass('srlBar1');
								$(this).prependTo(newCls);
								$(newCls + ' > .srlBar1').last().remove();
							});
							throttleTimeout = null;
						},
						50
					);
				}
			} else {
				api.reinitialise();
				$(newCls + ' .jspContainer .jspVerticalBar').exists(function() {
					$(this).addClass('srlBar1');
					$(this).prependTo(newCls);
					if($(newCls).children('.srlBar1').length > 1){
						$(newCls + ' > .srlBar1').last().remove();
					}
				});
			}
		});
		
	});
	
	
	/* SELECT DROPDOWN MENU	*/
	$('select').each(function(){
		if($(this).parent().hasClass('select') == false){
			$(this).wrap("<span class='select'></span>");
			$(this).addClass('select-menu');
		}
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
	
	function menuDropDown(){
		$('#menu ul > li > a + div').each(function(index, element) {
			var menu = $('#menu').offset();
			var dropdown = $(this).parent().offset();
			i = (dropdown.left + $(this).outerWidth()) - (menu.left + $('#menu').outerWidth());
			if (i > 0) {
				$(this).css('margin-left', '-' + (i + 5) + 'px');
			}
		});
	}
	menuDropDown();
	$(window).bind('resize', function(){ menuDropDown(); });
	

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

function getURLVar(urlVarName) {
	var urlHalves = String(document.location).toLowerCase().split('?');
	var urlVarValue = '';
	
	if (urlHalves[1]) {
		var urlVars = urlHalves[1].split('&');

		for (var i = 0; i <= (urlVars.length); i++) {
			if (urlVars[i]) {
				var urlVarPair = urlVars[i].split('=');
				
				if (urlVarPair[0] && urlVarPair[0] == urlVarName.toLowerCase()) {
					urlVarValue = urlVarPair[1];
				}
			}
		}
	}
	
	return urlVarValue;
	
}

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