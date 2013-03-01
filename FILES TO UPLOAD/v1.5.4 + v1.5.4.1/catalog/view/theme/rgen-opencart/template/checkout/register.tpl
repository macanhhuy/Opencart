<div class="box-form1-wrapper checkout-regiter">
	<div class="left">
		<div class="box-form">
			<h2 class="header-3"><?php echo $text_your_details; ?></h2>
			
			<label for="firstname"><?php echo $entry_firstname; ?> <span class="required">*</span></label>
			<input type="text" name="firstname" value="" class="large-field" />
			
			<label for="lastname"><?php echo $entry_lastname; ?> <span class="required">*</span></label>
			<input type="text" name="lastname" value="" class="large-field" />

			<label for="email"><?php echo $entry_email; ?> <span class="required">*</span></label>
			<input type="text" name="email" value="" class="large-field" />
			
			<label for="telephone"><?php echo $entry_telephone; ?> <span class="required">*</span></label>
			<input type="text" name="telephone" value="" class="large-field" />
			
			<label for="fax"><?php echo $entry_fax; ?></label>
			<input type="text" name="fax" value="" class="large-field" />

			<h2 class="header-3"><?php echo $text_your_password; ?></h2>
			
			<label for="password"><?php echo $entry_password; ?> <span class="required">*</span></label>
			<input type="password" name="password" value="" class="large-field" />
			
			<label for="confirm"><?php echo $entry_confirm; ?> <span class="required">*</span></label>
			<input type="password" name="confirm" value="" class="large-field" />

		</div>
		
	</div>
	<div class="right">
		<div class="box-form">
			<h2 class="header-3"><?php echo $text_your_address; ?></h2>
			
			<label for="company"><?php echo $entry_company; ?></label>
			<input type="text" name="company" value="" class="large-field" />
			
			
			
			<div style="display: <?php echo (count($customer_groups) > 1 ? 'table-row' : 'none'); ?>;">
				<label for="customer_group_id"><?php echo $entry_customer_group; ?></label>
				<?php foreach ($customer_groups as $customer_group) { ?>
			  	<?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
				  <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
				  <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
				  <br />
				  <?php } else { ?>
				  <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" />
				  <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
				 <?php } ?>
  				<?php } ?>
			</div>
			
			  
			
			
			<div id="company-id-display">
				<label for="company_id"><?php echo $entry_company_id; ?> <span id="company-id-required" class="required">*</span></label>
				<input type="text" name="company_id" value="" class="large-field" />
			</div>
			<div id="tax-id-display">
				<label for="tax_id"><?php echo $entry_tax_id; ?> <span id="tax-id-required" class="required">*</span></label>
				<input type="text" name="tax_id" value="" class="large-field" />
			</div>
			
			
			<label for="address_1"><?php echo $entry_address_1; ?> <span class="required">*</span></label>
			<input type="text" name="address_1" value="" class="large-field" />
			
			<label for="address_2"><?php echo $entry_address_2; ?></label>
			<input type="text" name="address_2" value="" class="large-field" />
			
			<label for="city"><?php echo $entry_city; ?> <span class="required">*</span></label>
			<input type="text" name="city" value="" class="large-field" />
			
			<label for="postcode"><?php echo $entry_postcode; ?> <span class="required" id="payment-postcode-required">*</span></label>
			<input type="text" name="postcode" value="" class="large-field" />
			
			<label for="country_id"><?php echo $entry_country; ?> <span class="required">*</span></label>
			<select name="country_id" class="large-field">
				<option value=""><?php echo $text_select; ?></option>
				<?php foreach ($countries as $country) { ?>
				<?php if ($country['country_id'] == $country_id) { ?>
				<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
				<?php } ?>
				<?php } ?>
			</select>
			
				
			<label for="zone_id"><?php echo $entry_zone; ?> <span class="required">*</span></label>
			<select name="zone_id" class="large-field">
			</select>
			
			<table>
				<tr>
					<td valign="top"><input type="checkbox" name="newsletter" value="1" id="newsletter" /></td>
					<td valign="top"><label for="newsletter" style="display:inline-block;"><?php echo $entry_newsletter; ?></label></td>
				</tr>
				<?php if ($shipping_required) { ?>
				<tr>
					<td valign="top"><input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" /></td>
					<td valign="top"><label for="shipping" style="display:inline-block;"><?php echo $entry_shipping; ?></label></td>
				</tr>
				<?php } ?>
			</table>
		
		</div>
	</div>
	<div class="clearfix"></div>
</div>



<?php if ($text_agree) { ?>
<div class="buttons">
	<div class="right"><?php echo $text_agree; ?>
		<input type="checkbox" name="agree" value="1" />
		<input type="button" value="<?php echo $button_continue; ?>" id="button-register" class="button dark-bt" />
	</div>
</div>
<?php } else { ?>
<div class="buttons">
	<div class="right">
		<input type="button" value="<?php echo $button_continue; ?>" id="button-register" class="button dark-bt" />
	</div>
</div>
<?php } ?>
<script type="text/javascript"><!--


// SET UP SELECT MENU
$('#payment-address select').each(function(){
	if($(this).parent().hasClass('select') == false){
		$(this).wrap("<span class='select'></span>");
		$(this).addClass('select-menu');
	}
});


//--></script>






<script type="text/javascript"><!--
$('#payment-address input[name=\'customer_group_id\']:checked').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('#payment-address input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('#payment-address select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#payment-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#payment-postcode-required').show();
			} else {
				$('#payment-postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {

				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('#payment-address select[name=\'zone_id\']').html(html);
			
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#payment-address select[name=\'country_id\']').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 640,
	height: 480,
	onComplete:function(){
		$('#cboxLoadedContent').wrapInner('<div class="popup-box"></div>');
		$('#cboxLoadedContent').find('h1').addClass('page-heading').wrapInner('<strong></strong>');
	}
});

//--></script> 
