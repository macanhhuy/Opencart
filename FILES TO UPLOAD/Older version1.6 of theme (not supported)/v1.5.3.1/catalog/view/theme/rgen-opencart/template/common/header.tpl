<?php if (isset($_SERVER['HTTP_USER_AGENT']) && !strpos($_SERVER['HTTP_USER_AGENT'], 'MSIE 6')) echo '<?xml version="1.0" encoding="UTF-8"?>'. "\n"; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>"><head>
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?><?php

/*****************************
ALL JS FILES 
******************************/
?><script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/external/jquery.cookie.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/colorbox/jquery.colorbox.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/tabs.js"></script>

<script type="text/javascript" src="catalog/view/theme/rgen-opencart/js/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?><?php

/*****************************
ALL CSS FILES 
******************************/
?><link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/colorbox/colorbox.css" media="screen" />
<link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/theme.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
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

<?php
	
/*****************************
THEME OPTIONS STYLESHEETS
******************************/
?>
<?php if ($this->config->get('RGen_theme_optionStatus') == 1) { ?>
<?php if ($this->config->get('RGen_theme_option') == 1) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/dark-theme.css" />
<?php } elseif ($this->config->get('RGen_theme_option') == 2) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/light-theme.css" />
<?php } ?>
<?php } ?>

<?php if ($this->config->get('RGen_customFile_Status') == 1 && $this->config->get('RGen_CustomCSS_file') != '' ) { ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/rgen-opencart/stylesheet/<?php echo $this->config->get('RGen_CustomCSS_file'); ?>" />
<?php }	?>

<?php 
	$CustomTheme = $this->config->get('RGen_theme');
	if ($CustomTheme == 1) {
		include "catalog/view/theme/rgen-opencart/template/common/RGen_theme_setting.php";
	}
?>

<?php if ($this->config->get('RGen_CustomCSS_Status') == 1 || $this->config->get('RGen_CustomCSS_Status') == '' && $this->config->get('RGen_CustomCSS') != '' ) { ?>
<style type="text/css">
<?php echo $this->config->get('RGen_CustomCSS'); ?>
</style>
<?php }	?>


<?php echo $google_analytics; ?>
</head>
<body>
<div id="container">
	<div id="header-wrapper"><?php
	
		/*****************************
		HEADER OTHER INFORMATION 
		******************************/
		?><div id="header">
			
			<div class="top-options">
				<?php echo $cart; ?>
				<?php echo $currency; ?>
				<?php echo $language; ?>
				<div class="links">
					<!--<a href="<?php echo $home; ?>"><?php echo $text_home; ?></a> -->
					<a href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a>
					<a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a>
					<a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
					<a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
				</div>
			</div>
			
			
			<div id="search">
				<div class="button-search"></div>
				<?php if ($filter_name) { ?>
				<span class="search-box"><span class="search-close"></span><input type="text" name="filter_name" value="<?php echo $filter_name; ?>" /></span>
				<?php } else { ?>
				<span class="search-box"><span class="search-close"></span><input type="text" name="filter_name" value="<?php echo $text_search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '#000000';" /></span>
				<?php } ?>
			</div>
			
			<div id="welcome">
				<?php if (!$logged) { ?>
				<?php echo $text_welcome; ?>
				<?php } else { ?>
				<?php echo $text_logged; ?>
				<?php } ?>
			</div>
			
			
		</div><?php
	
		/*****************************
		LOGO & CATEGORY NAVIGATION LINKS
		******************************/
		?>
		<div class="navigation-bar">
			<div class="store-logo">
				<?php if ($logo) {
				list($width, $height, $type, $attr) = getimagesize("image/".$this->config->get('config_logo'));
				$W = ($width/2)+8 . 'px'; $H = $height/2 . 'px';
				?>
				<a href="<?php echo $home; ?>" id="logo" style="margin-left:-<?php echo $W; ?>; margin-top:-<?php echo $H; ?>;">
					<?php echo "<img src=\"$logo\" $attr title=\"$name\" alt=\"$name\" />"; ?>
				</a>
				<?php } ?>
			</div>
			<?php if ($categories) { ?>
			<div id="menu">
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
				</ul>
			</div>
			<?php } ?>		
		</div>
		
	</div>
	
	
	<div id="notification"></div>
	
	
