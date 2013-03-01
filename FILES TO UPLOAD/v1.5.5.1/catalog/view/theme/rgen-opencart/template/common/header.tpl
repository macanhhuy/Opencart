<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html dir="<?php echo $direction; ?>" class="no-js" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>"> <!--<![endif]-->

<head>
	<title><?php echo $title; ?></title>
	<base href="<?php echo $base; ?>" />
	
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<?php if ($this->config->get('RGen_reaponsive_status') == 1) { ?>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<?php } ?>
	
	<?php if ($description) { ?><meta name="description" content="<?php echo $description; ?>" /><?php } ?>
	<?php if ($keywords) { ?><meta name="keywords" content="<?php echo $keywords; ?>" /><?php } ?>
	<?php if ($icon) { ?><link href="<?php echo $icon; ?>" rel="icon" /><?php } ?>
	<?php foreach ($links as $link) { ?><link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" /><?php } ?>

	<?php /* ALL JS FILES 
	******************************/	?>
	
	<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
	<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>
	
	<script type="text/javascript" src="catalog/view/theme/rgen-opencart/js/modernizr-2.6.2.min.js"></script>
	<script type="text/javascript" src="catalog/view/theme/rgen-opencart/js/common.js"></script>
	<script type="text/javascript" src="catalog/view/theme/rgen-opencart/js/matchMedia.js"></script>
	<script type="text/javascript" src="catalog/view/theme/rgen-opencart/js/enquire.min.js"></script>

	<?php foreach ($scripts as $script) { ?>
	<script type="text/javascript" src="<?php echo $script; ?>"></script>
	<?php } ?>


	<?php /* ALL CSS FILES 
	******************************/	?>
	
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
	<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
	
	<link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/stylesheet.css" />
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/theme.css" />
	
	<?php foreach ($styles as $style) { ?>
	<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
	<?php } ?>
	
	<?php /* ALL CSS FILES 
	******************************/	?>
	<link media="only screen and (min-width: 980px)" rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/desk.css" />
	
	<?php if ($this->config->get('RGen_reaponsive_status') == 1) { ?>
	<link media="only screen and (min-width: 768px) and (max-width: 979px)" rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/tab.css" />
	<link media="only screen and (min-width: 200px) and (max-width: 767px)" rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/mob.css" />
	<script type="text/javascript" src="catalog/view/theme/rgen-opencart/js/responsive.js?01"></script>
	<?php }else{ ?>
	<style type="text/css">
		#container { overflow:hidden; }
		.full-slideshow #header-wrapper { background:none; }
		.navigation-bar { background: #63C9CC; }
	</style>
	<?php } ?>
	<!--[if IE 7]>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie7.css" />
	<![endif]-->
	<!--[if lt IE 7]>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie6.css" />
	<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
	<script type="text/javascript">
	DD_belatedPNG.fix('#logo img');
	</script>
	<![endif]-->
	<!--[if IE]>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/ie.css" />
	<![endif]-->
	
	<?php if ($stores) { ?>
	<script type="text/javascript"><!--
		$(document).ready(function() {
		<?php foreach ($stores as $store) { ?>
		$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
		<?php } ?>
		});
	//--></script>
	<?php } ?>
	
	<?php if ($this->config->get('RGen_logoPosition_status') == 1) { ?> 
	<style type="text/css">
	.store-logo1 #logo { 
		<?php if ($this->config->get('RGen_logoLeft') != '') { ?>margin-left:<?php echo $this->config->get('RGen_logoLeft'); ?>px;<?php } ?>
		<?php if ($this->config->get('RGen_logoTop') != '') { ?>margin-top:<?php echo $this->config->get('RGen_logoTop'); ?>px;<?php } ?>
		<?php if ($this->config->get('RGen_logoSpaceAround_TB') != '') { ?>
			padding-top:<?php echo $this->config->get('RGen_logoSpaceAround_TB'); ?>px;
			padding-bottom:<?php echo $this->config->get('RGen_logoSpaceAround_TB'); ?>px;
		<?php } ?>
		<?php if ($this->config->get('RGen_logoSpaceAround_LR') != '') { ?>
			padding-left:<?php echo $this->config->get('RGen_logoSpaceAround_LR'); ?>px;
			padding-right:<?php echo $this->config->get('RGen_logoSpaceAround_LR'); ?>px;
		<?php } ?>
		<?php if ($this->config->get('RGen_logoBG_color') != '') { ?>background-color:<?php echo $this->config->get('RGen_logoBG_color'); ?>;<?php } ?>
	}
	</style>
	<?php } ?>
	
	<?php /* THEME OPTIONS STYLESHEETS
	**************************************/ ?>
	<?php if ($this->config->get('RGen_theme_optionStatus') == 1) { ?>
		<?php if ($this->config->get('RGen_theme_option') == 1) { ?>
		<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/dark-theme.css" />
		<?php } elseif ($this->config->get('RGen_theme_option') == 2) { ?>
		<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/light-theme.css" />
		
		<?php } elseif ($this->config->get('RGen_theme_option') == 3) { ?>
		<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/theme3.css" />
			<?php if ($this->config->get('RGen_reaponsive_status') == 1) { ?>
			<style>
			@media only screen and (min-width: 200px) and (max-width: 979px) {
				.no-logo #menu, #menu { margin-bottom:0px; }
				.navigation-bar { background:none; }
				.no-logo #menu, #menu { width:auto; }
				.beside-bnr-slideshow .slideshow, .small-slideshow .slideshow { margin-top:0px; }
				#content.beside-bnr-slideshow, #content.full-slideshow, #content.medium-slideshow, #content.small-slideshow {
					padding-top:20px;	
				}
				.beside-slideshow .slideshow, .full-slideshow .slideshow, .medium-slideshow .slideshow, .small-slideshow .slideshow {
				margin-left:0px; margin-right:0px;
				}
			}
			</style>
			<?php } ?>
		<?php } elseif ($this->config->get('RGen_theme_option') == 4) { ?>
		<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/theme3.css" />
			<style>
			.content-body-wrapper { background:#fff; }
			@media only screen and (min-width: 980px) {
				#container {
					max-width:1080px;
					min-width:980px;
				}
			}
			
			<?php if ($this->config->get('RGen_reaponsive_status') == 1) { ?>
			@media only screen and (min-width: 200px) and (max-width: 979px) {
				.no-logo #menu, #menu { margin-bottom:0px; }
				.navigation-bar { background:none; }
				.no-logo #menu, #menu { width:auto; }
				.beside-bnr-slideshow .slideshow, .small-slideshow .slideshow { margin-top:0px; }
				#content.beside-bnr-slideshow, #content.full-slideshow, #content.medium-slideshow, #content.small-slideshow {
					padding-top:20px;	
				}
				.beside-slideshow .slideshow, .full-slideshow .slideshow, .medium-slideshow .slideshow, .small-slideshow .slideshow {
				margin-left:0px; margin-right:0px;
				}
			}
			<?php } ?>
			
			</style>
		<?php } elseif ($this->config->get('RGen_theme_option') == 5) { ?>
		<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/theme4.css" />
		<?php } elseif ($this->config->get('RGen_theme_option') == 6) { ?>
		<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/theme4.css" />
		<?php } ?>
		
		
	<?php } ?>
	
	<?php /* THEME COLOR SETTINGS
	**************************************/ ?>
	<?php 
		$CustomTheme = $this->config->get('RGen_theme');
		if ($CustomTheme == 1) {
			include "catalog/view/theme/rgen-opencart/template/common/RGen_theme_setting.php";
		}
	?>
	
	<?php /* THEME FONTS SETTINGS
	**************************************/ ?>
	<?php if ($this->config->get('RGen_fontSettings_status') == 1) { 
		include "catalog/view/theme/rgen-opencart/template/common/RGen_font_setting.php";
	} ?>
	
	<?php /* CUSTOM CSS FILE
	**************************************/ ?>
	<?php if ($this->config->get('RGen_customFile_Status') == 1 && $this->config->get('RGen_CustomCSS_file') != '' ) { ?>
	<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/<?php echo $this->config->get('RGen_CustomCSS_file'); ?>" />
	<?php }	?>
	
	<?php /* CUSTOM CSS INPUT
	**************************************/ ?>
	<?php if ($this->config->get('RGen_CustomCSS_Status') == 1 || $this->config->get('RGen_CustomCSS_Status') == '' && $this->config->get('RGen_CustomCSS') != '' ) { ?>
	<style type="text/css">
	<?php echo htmlspecialchars_decode( $this->config->get('RGen_CustomCSS'), ENT_QUOTES ); ?>
	</style>
	<?php }	?>

<?php echo $google_analytics; ?>
</head>
<body <?php 
	if ($this->config->get('RGen_theme_option') == 3) { ?>class="thm-3"<?php 
	} elseif ($this->config->get('RGen_theme_option') == 4) { ?>class="thm-3"<?php 
	} elseif ($this->config->get('RGen_theme_option') == 5) { ?>class="thm-4"<?php
	} elseif ($this->config->get('RGen_theme_option') == 6) { ?>class="thm-4 boxed"<?php } ?>>
<div id="container">
	<div id="header-wrapper"><?php
	
		/*****************************
		HEADER OTHER INFORMATION 
		******************************/
		?><div id="header"<?php if ($this->config->get('RGen_logoPosition_status') == 1) { ?> class="logo-in-header"<?php } ?>>
			
			<?php if ($this->config->get('RGen_logoPosition_status') == 1) { ?>
			<div class="store-logo1"><?php if ($logo) { ?><a href="<?php echo $home; ?>" id="logo"><?php echo "<img src=\"$logo\" title=\"$name\" alt=\"$name\" />"; ?></a><?php } ?></div>
			<?php } ?>
			
			<div id="welcome">
				<?php if (!$logged) { ?>
				<?php echo $text_welcome; ?>
				<?php } else { ?>
				<?php echo $text_logged; ?>
				<?php } ?>
			</div>
			
			<div id="search">
				<div class="button-search"></div>
				<span class="search-box"><input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" /></span>
			</div>
			
			<div class="top-options">
				<?php echo $cart; ?>
				<?php echo $currency; ?>
				<?php echo $language; ?>
				<div class="links">
					<a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>
					<a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
					<a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
					<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
				</div>
			</div>
			
			
		</div><?php
	
		/*****************************
		LOGO & CATEGORY NAVIGATION LINKS
		******************************/
		?>
		<div class="navigation-bar <?php if ($this->config->get('RGen_logoPosition_status') == 1) { ?>no-logo<?php } ?>">
			<?php if ($this->config->get('RGen_logoPosition_status') == 0 || $this->config->get('RGen_logoPosition_status') == '') { ?>
			<div class="store-logo">
				<?php if ($logo) {
				list($width, $height, $type, $attr) = getimagesize("image/".$this->config->get('config_logo'));
				$W = ($width/2) . 'px'; $H = $height/2 . 'px';
				?>
				<a href="<?php echo $home; ?>" id="logo" style="margin-left:-<?php echo $W; ?>; margin-top:-<?php echo $H; ?>;">
					<?php echo "<img src=\"$logo\" $attr title=\"$name\" alt=\"$name\" />"; ?>
				</a>
				<?php } ?>
			</div>
			<?php } ?>
			<?php if ($categories) { ?>
			<div id="menu">
				<span><?php echo $menu_text; ?></span>
				<a href="<?php echo $home; ?>" title="<?php echo $name; ?>" class="home-btn"><?php echo $name; ?></a>
				<ul>
					<?php foreach ($categories as $category) { ?>
					<li><a href="<?php echo $category['href']; ?>" class="top-lvl"><?php echo $category['name']; ?></a>
						<?php if ($category['children']) { ?>
						<div>
							<?php for ($i = 0; $i < count($category['children']);) { ?>
							<ul>
								<?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
								<?php for (; $i < $j; $i++) { ?>
								<?php if (isset($category['children'][$i])) { ?>
								<li><a href="<?php echo $category['children'][$i]['href']; ?>" class="sub-lvl"><?php echo $category['children'][$i]['name']; ?></a></li>
								<?php } ?>
								<?php } ?>
							</ul>
							<?php } ?>
						</div>
						<?php } ?>
					</li>
					<?php } ?>
					<?php if ($this->config->get('RGen_menu_AllCategory') == 0 && $this->config->get('RGen_informationMenu_status') == 1) { ?>
					<li>
						<a class="top-lvl"><?php echo $text_information; ?></a>
						<div>
							<ul>
							<?php foreach ($informations as $information) { ?>
							<li><a href="<?php echo $information['href']; ?>" class="sub-lvl"><?php echo $information['title']; ?></a></li>
							<?php } ?>
							</ul>
						</div>
					</li>
					<?php } ?>
					<?php
						include "catalog/view/theme/rgen-opencart/template/common/RGen_custom_dropdown.php";
						include "catalog/view/theme/rgen-opencart/template/common/RGen_custom_menu_items.php";
					?>
				</ul>
			</div>
			<?php } ?>
		</div>
		
	</div>
	
	<div id="notification"></div>
	<div class="content-body-wrapper">