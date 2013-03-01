<?php echo $header; ?>

<?php if ($this->config->get('RGen_SlideShow_Type') == 'full') { ?>
<div id="content" class="store-home full-slideshow">
<?php } elseif($this->config->get('RGen_SlideShow_Type') == 'medium') { ?>
<div id="content" class="store-home medium-slideshow">
<?php } elseif($this->config->get('RGen_SlideShow_Type') == 'normal') { ?>
<div id="content" class="store-home small-slideshow">
<?php } elseif($this->config->get('RGen_SlideShow_Type') == 'beside_bnr') { ?>
<div id="content" class="store-home beside-bnr-slideshow">
<?php } else { ?>
<div id="content" class="store-home">
<?php } ?>
	
	<!--CONTENT LEFT -->
	<?php echo $column_left; ?>
	
	<!--CONTENT RIGHT -->
	<?php echo $column_right; ?>
	
	<!--PAGE CONTENT WRAPPER -->
	<div class="content-body">
		<h1 style="display: none;"><?php echo $heading_title; ?></h1>
		<?php echo $content_top; ?>
	
	</div>
	
	
	<?php echo $content_bottom; ?>
</div>

<?php echo $footer; ?>