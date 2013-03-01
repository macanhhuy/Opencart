
// FUNCTION FOR SLIDE SHOW PRODUCTS
function slideshowPrd() {
	$('.slidshow-prd').animate({ opacity:0,right:0}, 300, function(){
		//SLIDE SHOW PRODUCT MOVE TO CONTENT AREA
		var slidshowPrd = $('.slidshow-prd').find('.caroufredsel_wrapper .box-product').html();
		$('.content-body').prepend('<div style="opacity:0;" class="box latest-prd list-carousel slidshowPrd"><div class="box-heading header-1">' + $('.slidshow-prd').find('.box-heading').html() + '</div><ul class="box-product">' + slidshowPrd + '</ul><div class="carousel-controls"><a class="prev"></a><a class="next"></a></div><div class="clearfix hr"></div></div>');
		$('.slidshow-prd').remove();
		$('.slidshowPrd').find('.box-product').carouFredSel({
			responsive: true,
			prev: '.slidshowPrd .carousel-controls .prev',
			next: '.slidshowPrd .carousel-controls .next',
			width: '100%',
			auto:false,
			scroll: 1,
			items: { visible: { min: 1, max: 4 } },
			swipe:{ onTouch: true },
			circular:false,
			infinite:false
		});
			
		$('.slidshowPrd').animate({ opacity:1}, 500, function(){});
		
	});
}
function slideshowPrdBack() {
	$('.slidshowPrd').animate({ opacity:0, height:0 }, 300, function(){
		// SLIDESHOW PRODUCT MOVE BACK TO ON SLIDESHOW
		var slidshowPrd = $('.slidshowPrd').find('.caroufredsel_wrapper .box-product').html();
		$('#content .slideshow:first').prepend('<div style="opacity:0; right:0px" class="box latest-prd slidshow-prd list-carousel" id="slidshow-box"><div class="box-heading header-1">' + $('.slidshowPrd').find('.box-heading').html() + '</div><ul class="box-product">' + slidshowPrd + '</ul><div class="carousel-controls"><a class="prev"></a><a class="next"></a></div><div class="clearfix hr"></div></div>');
		$('.slidshowPrd').remove();
		$('.slidshow-prd').find('.box-product').carouFredSel({
			prev: '.slidshow-prd .carousel-controls .prev',
			next: '.slidshow-prd .carousel-controls .next',
			width: 469,
			auto:false,
			scroll: 2,
			items: { visible: { min: 2 } },
			swipe:{ onTouch: true },
			circular:false,
			infinite:false
		});
		$('.slidshow-prd').animate({ right:70, opacity:1 }, 500, function(){});
		
	});
}

function productInfo() {
	$('.prdimage-wrapper .image a').click(function(){
		$(this).colorbox({ overlayClose: true, opacity: 0.5 });	
	});
	$('.product-info .header-1').prependTo('.prdinfo-wrapper');
	$('.prdinfo-wrapper > .header-1').addClass('page-heading');

}
function productInfoBack() {
	$('.prdinfo-wrapper > .page-heading').prependTo('.prdoptions-wrapper');
	$('.prdoptions-wrapper > .header-1').removeClass('page-heading');
}
function logoAction() {
	$('.store-logo').css({opacity:0});
	$('.store-logo').prependTo('#header-wrapper');
	$('.store-logo').animate({opacity:1}, 400);
}
function logoActionBack() {
	$('.store-logo').css({opacity:0});
	$('.store-logo').prependTo('.navigation-bar');
	$('.store-logo').animate({opacity:1}, 400);
}
function additionalImgScroll(){
	//$(".thumb-wrapper").prependTo('.prdimage-wrapper');
	$('.image-additional').exists(function() {
		$('.th-b .image-additional').carouFredSel({
			prev: '.thumb-wrapper .carousel-controls .prev',
			next: '.thumb-wrapper .carousel-controls .next',
			width: 381,
			auto: false,
			scroll: 1,
			items : 3,
			swipe:{onTouch: true},
			circular:false,
			infinite:false
		});
		$('.th-l .image-additional').carouFredSel({
			prev: '.thumb-wrapper .carousel-controls .prev',
			next: '.thumb-wrapper .carousel-controls .next',
			width: 131,
			auto: false,
			direction: 'up',
			scroll: 1,
			items : 3,
			swipe:{onTouch: true},
			circular:false,
			infinite:false
		});
	});
	
}
function customFootHeigh(){
	$('.custom-footer .column').removeAttr('style');
	var colHeight = 0;  
	$('.custom-footer').find('.column').each(function(){  
		if($(this).outerHeight() > colHeight){ 
			colHeight = $(this).outerHeight();  
		}
	});
	if(colHeight > 200){
		$('.custom-footer .column').css({minHeight: colHeight}); 
	}
}

/*==============================================*/

$(document).ready(function(e) {
	/*#############################################################
	Desktop standard 960 and up
	*/
	enquire.register("only screen and (min-width: 980px)", {
		match : function() {
			slideshowPrdBack();
			productInfoBack();
			additionalImgScroll();
			customFootHeigh();
			
			$('.full-slideshow .slideshow').css({marginTop:-$('#header-wrapper').outerHeight()});
			$('.beside-slideshow').css({minHeight: $('.banner-beside').outerHeight()});
			
			$('.store-logo').css({opacity:0});
			$('.store-logo').prependTo('.navigation-bar');
			$('.store-logo').animate({opacity:1}, 400);
			
			$(".refine-cate").animate({opacity:1}, 50, function(){
				if($('.refine-cate li').length < 5){
					$(".refine-cate ul").trigger("destroy");
				}
			});
			
			$('.thm-3 .breadcrumb').appendTo('#menu');
		}
	
	/*#############################################################
	Tablet Portrait size to standard 980
	*/
	}).register("only screen and (min-width: 768px) and (max-width: 979px)", {
		match : function() {
			slideshowPrd();
			productInfo();
			additionalImgScroll();
			customFootHeigh();
			
			$('.custom-footer #aboutus-content').removeAttr('style');
			
			$('.full-slideshow .slideshow').removeAttr('style');
			
			$('.store-logo').css({opacity:0});
			$('.store-logo').prependTo('#header');
			$('.store-logo').animate({opacity:1}, 400);
			
			$(".refine-cate").animate({opacity:1}, 50, function(){
				if($('.refine-cate li').length < 5){
					$(".refine-cate ul").trigger("destroy");
				}
			});
			$('.thm-3 .breadcrumb').appendTo('.navigation-bar');
		}
	
	/*#############################################################
	Mobile Landscape Size to Tablet Portrait
	*/
	}).register("only screen and (min-width: 200px) and (max-width: 767px)", {
		match : function() {
			logoAction();
			slideshowPrd();
			productInfo();
			
			$('.full-slideshow .slideshow').removeAttr('style');
			$('.custom-footer .column').removeAttr('style');
			
			$('#footer .column h3').click(function(){
				if($(this).next('ul').hasClass('active') == false){
					$(this).next('ul').slideDown(500, function(){
						$(this).addClass('active');
					});
				}else {
					$(this).next('ul').slideUp(500, function(){
						$(this).removeClass('active');
					});
				}
			});
			
			$(".image-additional").animate({opacity:1}, 50, function(){
				$(".image-additional").trigger("destroy");
				$(".image-additional").removeAttr('style');
				$(".product-info .price").prependTo('.prdoptions-wrapper');
			});
			$(".thumb-wrapper").appendTo('.prdimage-wrapper');
			
			$(".refine-cate").animate({opacity:1}, 50, function(){
				if($('.refine-cate li').length > 2){
					$('.refine-cate > ul').carouFredSel({
						responsive: true,
						prev: '.refine-cate .carousel-controls .prev',
						next: '.refine-cate .carousel-controls .next',
						width: '100%',
						auto:false,
						scroll: 1,
						items: {visible: {min: 1,max: 5}},
						swipe:{onTouch: true},
						circular:false,
						infinite:false
					});
				}
			});
			$('.thm-3 .breadcrumb').appendTo('.navigation-bar');
			
		},
		unmatch : function() {
			$(".prdoptions-wrapper .price").prependTo('.product-info > .prdoptions-wrapper > .r');
		}
	}).listen();
});