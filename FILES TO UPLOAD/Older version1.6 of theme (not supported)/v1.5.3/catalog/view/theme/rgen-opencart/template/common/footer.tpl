<?php 
	$On_customFT = $this->config->get('RGen_FT_Status');
	
	if ($On_customFT == 1 && $getRoute == 'common/home') {
		echo $rgen_theme;
	}elseif ($On_customFT == 1 && $this->config->get('RGen_FT_Status_home') == 'all') {
		echo $rgen_theme;
	}
?>

<div id="footer">
	<?php if ($informations) { ?>
	<div class="column">
		<h3 class="header-3"><?php echo $text_information; ?></h3>
		<ul>
			<?php foreach ($informations as $information) { ?>
			<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
			<?php } ?>
		</ul>
	</div>
	<?php } ?>
	<div class="column">
		<h3 class="header-3"><?php echo $text_service; ?></h3>
		<ul>
			<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
			<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
			<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		</ul>
	</div>
	<div class="column">
		<h3 class="header-3"><?php echo $text_extra; ?></h3>
		<ul>
			<li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
			<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
			<li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
			<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
		</ul>
	</div>
	<div class="column">
		<h3 class="header-3"><?php echo $text_account; ?></h3>
		<ul>
			<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
			<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
			<li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
			<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		</ul>
	</div>
	
	<?php if ($this->config->get('FT_Contact_status') == '1') { ?>
	<div class="column contact-info">
		<ul>
			<?php if ($this->config->get('FT_Contact_phStatus') == '1') { ?>
			<li>
				<span class="ph-image" title="Phone"></span>
				<span class="ph-text">
					<?php echo $this->config->get('FT_Contact_ph'); ?><br />
					<?php echo $this->config->get('FT_Contact_ph1'); ?>
				</span>
			</li>
			<?php } ?>
			
			<?php if ($this->config->get('FT_Contact_faxStatus') == '1') { ?>
			<li>
				<span class="fax-image" title="Fax"></span>
				<span class="fax-text">
					<?php echo $this->config->get('FT_Contact_fax'); ?> 
					<?php echo $this->config->get('FT_Contact_fax1'); ?>
				</span>
			</li>
			<?php } ?>
			
			<?php if ($this->config->get('FT_Contact_emailStatus') == '1') { ?>
			<li>
				<span class="email-image" title="Email us"></span>
				<a href="mailto:<?php echo $this->config->get('FT_Contact_email'); ?>" class="email-text">Click here<br /> to email us</a></span>
			</li>
			<?php } ?>

		</ul>
	</div>
	<?php } ?>
	
</div>
<div class="footer-bt">
	<table width="100%">
		<tr>
			<td>
				<?php if ($this->config->get('socialLink_fb_Status') == '1') : ?>
				<a href="<?php echo $this->config->get('socialLink_fb'); ?>" target="_blank" class="facebook-icon"></a>
				<?php endif; ?>
				
				<?php if ($this->config->get('socialLink_twitter_Status') == '1') : ?>
				<a href="<?php echo $this->config->get('socialLink_twitter'); ?>" target="_blank" class="twitter-icon"></a>
				<?php endif; ?>
				
				<?php if ($this->config->get('socialLink_youtube_Status') == '1') : ?>
				<a href="<?php echo $this->config->get('socialLink_youtube'); ?>" target="_blank" class="youtube-icon"></a>
				<?php endif; ?>
				
				<?php if ($this->config->get('socialLink_google_Status') == '1') : ?>
				<a href="<?php echo $this->config->get('socialLink_google'); ?>" target="_blank" class="google-icon"></a>
				<?php endif; ?>
				
				<?php if ($this->config->get('socialLink_mailTo_Status') == '1') : ?>
					<a class="mailto-icon addthis_button_email"></a>
				<?php endif; ?>
				
				<?php if ($this->config->get('socialLink_addThis_Status') == '1') { ?>
					<a class="addthis-icon addthis_button_compact"></a>
					<script type="text/javascript" src="//s7.addthis.com/js/250/addthis_widget.js"></script> 
				<?php } ?>
				
			</td>
			<td class="cards"><img src="catalog/view/theme/rgen-opencart/image/rgen/crads.png" class="credit-cards" /></td>
		</tr>
	</table>

</div>
<div class="cp-text" id="powered"><?php echo $powered; ?></div>
</div>
</body></html>