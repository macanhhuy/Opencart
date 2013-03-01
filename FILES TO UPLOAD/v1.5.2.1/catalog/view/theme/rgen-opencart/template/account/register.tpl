<?php echo $header; ?>
<div id="content">
	
	<!--CONTENT LEFT -->
	<?php echo $column_left; ?>
	
	<!--CONTENT RIGHT -->
	<?php echo $column_right; ?>
	
	<!--PAGE CONTENT WRAPPER -->
	<div class="content-body register">
		
		<div class="breadcrumb">
			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
			<span><?php echo $breadcrumb['separator']; ?></span><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
			<?php } ?>
		</div>
		
		<h1 class="page-heading"><strong><?php echo $heading_title; ?></strong></h1>
		<?php if ($error_warning) { ?>
			<div class="warning"><?php echo $error_warning; ?></div>
		<?php } ?>
	
		<?php echo $content_top; ?>
		
		<p><?php echo $text_account_already; ?></p>
		<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
		
		<div class="box-form">
			<h2 class="header-3"><?php echo $text_your_details; ?></h2>
			<div class="content">
				<table class="form">
					<tr>
						<td><?php echo $entry_firstname; ?> <span class="required">*</span></td>
						<td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
							<?php if ($error_firstname) { ?>
							<span class="error"><?php echo $error_firstname; ?></span>
							<?php } ?></td>
					</tr>
					<tr>
						<td><?php echo $entry_lastname; ?> <span class="required">*</span></td>
						<td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
							<?php if ($error_lastname) { ?>
							<span class="error"><?php echo $error_lastname; ?></span>
							<?php } ?></td>
					</tr>
					<tr>
						<td><?php echo $entry_email; ?> <span class="required">*</span></td>
						<td><input type="text" name="email" value="<?php echo $email; ?>" />
							<?php if ($error_email) { ?>
							<span class="error"><?php echo $error_email; ?></span>
							<?php } ?></td>
					</tr>
					<tr>
						<td><?php echo $entry_telephone; ?> <span class="required">*</span></td>
						<td><input type="text" name="telephone" value="<?php echo $telephone; ?>" />
							<?php if ($error_telephone) { ?>
							<span class="error"><?php echo $error_telephone; ?></span>
							<?php } ?></td>
					</tr>
					<tr>
						<td><?php echo $entry_fax; ?></td>
						<td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
					</tr>
				</table>
			</div>		
		</div>
		
		<div class="box-form">
			<h2 class="header-3"><?php echo $text_your_address; ?> </h2>
			<div class="content">
				<table class="form">
					<tr>
						<td><?php echo $entry_company; ?></td>
						<td><input type="text" name="company" value="<?php echo $company; ?>" /></td>
					</tr>
					<tr>
						<td><?php echo $entry_address_1; ?> <span class="required">*</span></td>
						<td><input type="text" name="address_1" value="<?php echo $address_1; ?>" />
							<?php if ($error_address_1) { ?>
							<span class="error"><?php echo $error_address_1; ?></span>
							<?php } ?></td>
					</tr>
					<tr>
						<td><?php echo $entry_address_2; ?></td>
						<td><input type="text" name="address_2" value="<?php echo $address_2; ?>" /></td>
					</tr>
					<tr>
						<td><?php echo $entry_city; ?> <span class="required">*</span></td>
						<td><input type="text" name="city" value="<?php echo $city; ?>" />
							<?php if ($error_city) { ?>
							<span class="error"><?php echo $error_city; ?></span>
							<?php } ?></td>
					</tr>
					<tr>
						<td><?php echo $entry_postcode; ?> <span class="required">*</span></td>
						<td><input type="text" name="postcode" value="<?php echo $postcode; ?>" />
							<?php if ($error_postcode) { ?>
							<span class="error"><?php echo $error_postcode; ?></span>
							<?php } ?></td>
					</tr>
					<tr>
						<td><?php echo $entry_country; ?> <span class="required">*</span></td>
						<td><select name="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=account/register/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>');">
								<option value=""><?php echo $text_select; ?></option>
								<?php foreach ($countries as $country) { ?>
								<?php if ($country['country_id'] == $country_id) { ?>
								<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
								<?php } else { ?>
								<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
								<?php } ?>
								<?php } ?>
							</select>
							<?php if ($error_country) { ?>
							<span class="error"><?php echo $error_country; ?></span>
							<?php } ?></td>
					</tr>
					<tr>
						<td><?php echo $entry_zone; ?> <span class="required">*</span></td>
						<td><select name="zone_id">
							</select>
							<?php if ($error_zone) { ?>
							<span class="error"><?php echo $error_zone; ?></span>
							<?php } ?></td>
					</tr>
				</table>
			</div>		
		</div>
		
		
		<div class="box-form">
			<h2 class="header-3"><?php echo $text_your_password; ?></h2>
			<div class="content">
				<table class="form">
					<tr>
						<td><?php echo $entry_password; ?> <span class="required">*</span></td>
						<td><input type="password" name="password" value="<?php echo $password; ?>" />
							<?php if ($error_password) { ?>
							<span class="error"><?php echo $error_password; ?></span>
							<?php } ?></td>
					</tr>
					<tr>
						<td><?php echo $entry_confirm; ?> <span class="required">*</span></td>
						<td><input type="password" name="confirm" value="<?php echo $confirm; ?>" />
							<?php if ($error_confirm) { ?>
							<span class="error"><?php echo $error_confirm; ?></span>
							<?php } ?></td>
					</tr>
				</table>
			</div>	
		</div>
		
		<div class="box-form">
			<h2 class="header-3"><?php echo $text_newsletter; ?></h2>
			<div class="content">
				<table class="form">
					<tr>
						<td><?php echo $entry_newsletter; ?></td>
						<td><?php if ($newsletter == 1) { ?>
							<input type="radio" name="newsletter" value="1" checked="checked" />
							<?php echo $text_yes; ?>
							<input type="radio" name="newsletter" value="0" />
							<?php echo $text_no; ?>
							<?php } else { ?>
							<input type="radio" name="newsletter" value="1" />
							<?php echo $text_yes; ?>
							<input type="radio" name="newsletter" value="0" checked="checked" />
							<?php echo $text_no; ?>
							<?php } ?></td>
					</tr>
				</table>
			</div>
		</div>
		
		
		<?php if ($text_agree) { ?>
		<div class="buttons">
			<table class="form">
				<tr>
					<td></td>
					<td>
						<?php if ($agree) { ?>
						<input type="checkbox" name="agree" value="1" checked="checked" />
						<?php } else { ?>
						<input type="checkbox" name="agree" value="1" />
						<?php } ?>
						<?php echo $text_agree; ?>
					</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="<?php echo $button_continue; ?>" class="button dark-bt" /></td>
				</tr>
			</table>
		</div>
		<?php } else { ?>
		<div class="buttons">
			<div class="right">
				<input type="submit" value="<?php echo $button_continue; ?>" class="button dark-bt" />
			</div>
		</div>
		<?php } ?>
		
	</form>
		
	</div>
	<?php echo $content_bottom; ?>

</div>

<script type="text/javascript"><!--

//--></script> 
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 560,
	height: 560,
	onComplete:function(){
		$('#cboxLoadedContent').wrapInner('<div class="popup-box"></div>');
		$('#cboxLoadedContent').find('h1').addClass('page-heading').wrapInner('<strong></strong>');
	}
});
$('select[name=\'zone_id\']').load('index.php?route=account/register/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
//--></script> 
<?php echo $footer; ?>