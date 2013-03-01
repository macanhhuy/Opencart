<?php 
	$slideshowType = $this->config->get('RGen_SlideShow_Type');
?>

<div class="slideshow-wrapper<?php if ($this->config->get('RGen_bannerPosition') == 'beside' && $getRoute == 'common/home') { ?> beside-slideshow<?php } ?>">
	<div class="slideshow slider-wrapper theme-default">
		<div id="slideshow<?php echo $module; ?>" class="nivoSlider">
			<?php foreach ($banners as $banner) { ?>
			<?php if ($banner['link']) { ?>
			<a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
			<?php } else { ?>
			<img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
			<?php } ?>
			<?php } ?>
		</div>
	</div>
	<?php if ($this->config->get('RGen_bannerPosition') == 'beside') { ?>
	<div class="banner-beside">
	</div>
	<?php } ?>
</div>


<script type="text/javascript"><!--
$(window).load(function() {
	$('#slideshow<?php echo $module; ?>').animate({opacity:1}, 50, function(){
		$(this).nivoSlider({
			<?php if ($this->config->get('RGen_slideshow_Effect') != '--') { ?>
			effect: '<?php echo $this->config->get('RGen_slideshow_Effect'); ?>',
			<?php } ?>
			<?php if ($this->config->get('RGen_slideshow_animSpeed') != '') { ?>
			animSpeed: <?php echo $this->config->get('RGen_slideshow_animSpeed'); ?>,
			<?php } ?>
			<?php if ($this->config->get('RGen_slideshow_pauseTime') != '') { ?>
			pauseTime: <?php echo $this->config->get('RGen_slideshow_pauseTime'); ?>,
			<?php } ?>
			<?php if ($this->config->get('RGen_slideshow_startSlide') != '') { ?>
			startSlide: <?php echo $this->config->get('RGen_slideshow_startSlide'); ?>,
			<?php } ?>
			<?php if ($this->config->get('RGen_slideshow_directionNav') == 'false') { ?>
			directionNav: <?php echo $this->config->get('RGen_slideshow_directionNav'); ?>,
			<?php } ?>
			<?php if ($this->config->get('RGen_slideshow_controlNav') == 'false') { ?>
			controlNav: <?php echo $this->config->get('RGen_slideshow_controlNav'); ?>,
			<?php } ?>
			<?php if ($this->config->get('RGen_slideshow_pauseOnHover') == 'false') { ?>
			pauseOnHover: <?php echo $this->config->get('RGen_slideshow_pauseOnHover'); ?>,
			<?php } ?>
			randomStart: false
		});	
	});
});


$(document).ready(function() {
	// DO NOT DELETE THIS JS 
	if($('#content').hasClass('full-slideshow') || $('#content').hasClass('medium-slideshow') || $('#content').hasClass('small-slideshow')){
		
		$('.slideshow-wrapper').css({opacity:0}).prependTo('#content').end().animate({opacity:1}, 500);
		$('.slideshow-wrapper').after('<div class="notification-block"></div>');
		$('#notification').prependTo('.notification-block');
		//$('.slideshow').wrap('<div class="slideshow-wrapper" />');
		
		<?php if ($this->config->get('RGen_bannerPosition') == 'below') { ?>
		$('#banner0').css({opacity:0}).appendTo('.slideshow-wrapper').end().animate({opacity:1}, 500);
		<?php } ?>
		
	}
	<?php if ($this->config->get('RGen_bannerPosition') == 'beside' && $getRoute == 'common/home') { ?>
	$('.beside-bnr-slideshow #banner0').css({opacity:0}).appendTo('.banner-beside').end().animate({opacity:1}, 500, function(){
		$('.beside-slideshow').css({minHeight: $('.banner-beside').outerHeight()});
	});
	<?php } ?>
	if($('#content').hasClass('full-slideshow')){
		$('.full-slideshow .slideshow').css({marginTop:-$('#header-wrapper').outerHeight()});
	}
	
	
	
});

--></script>