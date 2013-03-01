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
			
			<label for="address_1"><?php echo $entry_address_1; ?> <span class="required">*</span></label>
			<input type="text" name="address_1" value="" class="large-field" />
			
			<label for="address_2"><?php echo $entry_address_2; ?></label>
			<input type="text" name="address_2" value="" class="large-field" />
			
			<label for="city"><?php echo $entry_city; ?> <span class="required">*</span></label>
			<input type="text" name="city" value="" class="large-field" />
			
			<label for="postcode"><?php echo $entry_postcode; ?> <span class="required">*</span></label>
			<input type="text" name="postcode" value="" class="large-field" />
			
			<label for="country_id"><?php echo $entry_country; ?> <span class="required">*</span></label>
			<select name="country_id" class="large-field" onchange="$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/register/zone&country_id=' + this.value);">
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
var i = 0;
$('.checkout-regiter .right select').each(function(){
	
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

$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/register/zone&country_id=<?php echo $country_id; ?>', function() {
	val = $('option:selected',this).text();
	$(this).parent().find('span.select').text(val);
});

$('select[name="country_id"]').change(function() {
	$('#payment-address select[name=\'zone_id\']').load('index.php?route=checkout/register/zone&country_id=' + this.value, function() {
		val = $('option:selected',this).text();
		$(this).parent().find('span.select').text(val);	
	});
});
$('.colorbox').colorbox({
	width: 560,
	height: 560,
	onComplete:function(){
		$('#cboxLoadedContent').wrapInner('<div class="popup-box"></div>');
		$('#cboxLoadedContent').find('h1').addClass('page-heading').wrapInner('<strong></strong>');
	}
});

//--></script> 
