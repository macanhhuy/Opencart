<div class="box-form1-wrapper guest-address">
	<div class="left">
		<div class="box-form">
			<h2 class="header-3"><?php echo $text_your_details; ?></h2>
			<label for="firstname"><?php echo $entry_firstname; ?><span class="required">*</span></label>
			<input type="text" name="firstname" value="<?php echo $firstname; ?>" class="large-field" />

			<label class="lastname"><?php echo $entry_lastname; ?> <span class="required">*</span></label>
			<input type="text" name="lastname" value="<?php echo $lastname; ?>" class="large-field" />

			<label class="email"><?php echo $entry_email; ?> <span class="required">*</span></label>
			<input type="text" name="email" value="<?php echo $email; ?>" class="large-field" />

			<label for="telephone"><?php echo $entry_telephone; ?> <span class="required">*</span></label>
			<input type="text" name="telephone" value="<?php echo $telephone; ?>" class="large-field" />

			<label class="fax"><?php echo $entry_fax; ?></label>
			<input type="text" name="fax" value="<?php echo $fax; ?>" class="large-field" />
		</div>
	</div>
	<div class="right">
	<div class="box-form">
		<h2 class="header-3"><?php echo $text_your_address; ?></h2>
		<label for="company"><?php echo $entry_company; ?></label>
		<input type="text" name="company" value="<?php echo $company; ?>" class="large-field" />

		<label for="address_1"><?php echo $entry_address_1; ?> <span class="required">*</span></label>
		<input type="text" name="address_1" value="<?php echo $address_1; ?>" class="large-field" />

		<label for="address_2"><?php echo $entry_address_2; ?></label>
		<input type="text" name="address_2" value="<?php echo $address_2; ?>" class="large-field" />

		<label for="city"><?php echo $entry_city; ?> <span class="required">*</span></label>
		<input type="text" name="city" value="<?php echo $city; ?>" class="large-field" />

		<label for="postcode"><?php echo $entry_postcode; ?> <span class="required">*</span></label>
		<input type="text" name="postcode" value="<?php echo $postcode; ?>" class="large-field" />
		
		<label for="country_id"><?php echo $entry_country; ?> <span class="required">*</span></label>
		<select name="country_id" class="large-field" onchange="$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/guest/zone&country_id=' + this.value);">
			<option value=""><?php echo $text_select; ?></option>
			<?php foreach ($countries as $country) { ?>
			<?php if ($country['country_id'] == $country_id) { ?>
			<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
			<?php } else { ?>
			<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
			<?php } ?>
			<?php } ?>
		</select><br /><br />
				
		<label for="zone_id"><?php echo $entry_zone; ?> <span class="required">*</span></label>
		<select name="zone_id" class="large-field">
		</select>
	</div>
	
</div>
	<div class="clearfix"></div>
</div>

<?php if ($shipping_required) { ?>
<div style="clear: both; padding-top: 15px; border-top: 1px solid #DDDDDD;">
	<?php if ($shipping_address) { ?>
	<input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
	<?php } else { ?>
	<input type="checkbox" name="shipping_address" value="1" id="shipping" />
	<?php } ?>
	<label for="shipping"><?php echo $entry_shipping; ?></label>
	<br />
	<br />
	<br />
</div>
<?php } ?>
<div class="buttons">
	<div class="right">
		<input type="button" value="<?php echo $button_continue; ?>" id="button-guest" class="button dark-bt" />
	</div>
</div>
<script type="text/javascript"><!--
$('select').each(function(){
	if($(this).parent().hasClass('select') == false){
		$(this).wrap("<span class='select'></span>");
		$(this).addClass('select-menu');
	}
});
$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/guest/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
//--></script>