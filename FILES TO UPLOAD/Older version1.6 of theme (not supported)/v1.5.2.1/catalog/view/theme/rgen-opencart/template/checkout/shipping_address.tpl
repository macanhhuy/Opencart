<div class="box-form">
	<?php if ($addresses) { ?>
	
	<input type="radio" name="shipping_address" value="existing" id="shipping-address-existing" checked="checked" />
	<label for="shipping-address-existing"><strong><?php echo $text_address_existing; ?></strong></label>
	<div id="shipping-existing">
		<select name="address_id" style="width: 100%; margin-bottom: 15px;" size="5">
			<?php foreach ($addresses as $address) { ?>
			<?php if ($address['address_id'] == $address_id) { ?>
			<option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
			<?php } else { ?>
			<option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
			<?php } ?>
			<?php } ?>
		</select>
	</div>
	<?php } ?>
	<div>
		<input type="radio" name="shipping_address" value="new" id="shipping-address-new" />
		<label for="shipping-address-new"><strong><?php echo $text_address_new; ?></strong></label>
	</div>
	<div id="shipping-new" style="display: none;">
		<table class="form">
			<tr>
				<td><?php echo $entry_firstname; ?> <span class="required">*</span></td>
				<td><input type="text" name="firstname" value="" class="large-field" /></td>
			</tr>
			<tr>
				<td><?php echo $entry_lastname; ?> <span class="required">*</span></td>
				<td><input type="text" name="lastname" value="" class="large-field" /></td>
			</tr>
			<tr>
				<td><?php echo $entry_company; ?></td>
				<td><input type="text" name="company" value="" class="large-field" /></td>
			</tr>
			<tr>
				<td><?php echo $entry_address_1; ?> <span class="required">*</span></td>
				<td><input type="text" name="address_1" value="" class="large-field" /></td>
			</tr>
			<tr>
				<td><?php echo $entry_address_2; ?></td>
				<td><input type="text" name="address_2" value="" class="large-field" /></td>
			</tr>
			<tr>
				<td><?php echo $entry_city; ?> <span class="required">*</span></td>
				<td><input type="text" name="city" value="" class="large-field" /></td>
			</tr>
			<tr>
				<td><?php echo $entry_postcode; ?> <span class="required">*</span></td>
				<td><input type="text" name="postcode" value="" class="large-field" /></td>
			</tr>
			<tr>
				<td><?php echo $entry_country; ?> <span class="required">*</span></td>
				<td><select name="country_id" class="large-field" onchange="$('#shipping-address select[name=\'zone_id\']').load('index.php?route=checkout/shipping_address/zone&country_id=' + this.value);">
						<option value=""><?php echo $text_select; ?></option>
						<?php foreach ($countries as $country) { ?>
						<?php if ($country['country_id'] == $country_id) { ?>
						<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
						<?php } else { ?>
						<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
						<?php } ?>
						<?php } ?>
					</select></td>
			</tr>
			<tr>
				<td><?php echo $entry_zone; ?> <span class="required">*</span></td>
				<td><select name="zone_id" class="large-field">
					</select></td>
			</tr>
		</table>
	</div>
</div>

<div class="buttons">
	<div class="right">
		<input type="button" value="<?php echo $button_continue; ?>" id="button-shipping-address" class="button dark-bt" />
	</div>
</div>
<script type="text/javascript"><!--
$('#shipping-address select[name=\'zone_id\']').load('index.php?route=checkout/shipping_address/zone&country_id=<?php echo $country_id; ?>', function() {
	val = $('option:selected',this).text();
	$(this).parent().find('span.select').text(val);
});

$('#shipping-address select[name="country_id"]').change(function() {
	$('#shipping-address select[name=\'zone_id\']').load('index.php?route=checkout/shipping_address/zone&country_id=' + this.value, function() {
		val = $('option:selected',this).text();
		$(this).parent().find('span.select').text(val);
	});
});


$('#shipping-address input[name=\'shipping_address\']').live('change', function() {
	if (this.value == 'new') {
		$('#shipping-existing').hide();
		$('#shipping-new').show();
		$('.box-form').next().addClass('shipping-new');
		
		// SET UP SELECT MENU
		var i = 0;
		$('#shipping-new select').each(function(){
			
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
			
		});
		
	} else {
		$('#shipping-existing').show();
		$('#shipping-new').hide();
		$('.box-form').next().removeClass('shipping-new');
	}
});
//--></script> 