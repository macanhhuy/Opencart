<?php echo $header; ?>
<link rel="stylesheet" type="text/css" href="view/stylesheet/rgen-module.css" />
<div id="content" class="rgen-mod">
	<div class="breadcrumb">
		<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
		<?php } ?>
	</div>
	<?php if ($error_warning) { ?>
	<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
	<div class="box">
		<div class="heading">
			<h1><img src="view/image/module.png" alt="" /> <?php echo $heading_title; ?></h1>
			<div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a></div>
		</div>
		<div class="content">
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
				
				<div class="htabs" id="mainTabs">
					<a href="#CustomFt">Theme Settings</a>
					<a href="#ThemeSetting">Theme Colors</a>
					<a href="#CustomCSS">Custom CSS</a>
				</div>
				
				<!-- CUSTOM THEME SETTINGS -->
				<div id="CustomFt" class="htabs-content">
					<table cellpadding="0" cellspacing="0" width="100%" border="0">
						<tr>
							<td valign="top" >
								<div id="tabs1" class="vtabs">
									<a href="#tab_slideshow_mod">Home slideshow settings</a>
									<a href="#tab_social_links">Footer social links</a>
									<a href="#tab_contactinfo">Footer contact details</a>
									<a href="#tab_custom_footer">Custom footer</a>
								</div>
								<div id="tab_slideshow_mod" class="vtabs-content">
									<table class="form">
										<tr>
											<td class="left">Slideshow type</td>
											<td class="left">
												
												<select name="RGen_SlideShow_Type">
													<?php if ($RGen_SlideShow_Type == 'full') { ?>
													<option value="full" selected="selected">Full</option>
													<option value="medium">Medium</option>
													<option value="normal">Normal</option>
													<?php } elseif($RGen_SlideShow_Type == 'medium') { ?>
													<option value="full">Full</option>
													<option value="medium" selected="selected">Medium</option>
													<option value="normal">Normal</option>
													<?php } else { ?>
													<option value="full">Full</option>
													<option value="medium">Medium</option>
													<option value="normal" selected="selected">Normal</option>
													<?php } ?>
												</select><br /><br />
												<span class="normal-size" style="font-size:11px; color:#666;">
													Change banner image size after select slideshow type from Extensions > Modules > Slideshow <br />
													(<strong>Full</strong> - w:1080 x h:800, <strong>Medium</strong> - w:1080 x h:630, <strong>Normal</strong> - w:940 x h:500)
												</span>
											</td>
										</tr>
										<tr>
											<td class="left">Slideshow product scroller</td>
											<td class="left">
												<select name="RGen_SlideShow_Mod">
													<?php if ($RGen_SlideShow_Mod == 'featured') { ?>
													<option value="featured" selected="selected">Featured Products</option>
													<option value="best">Best Sellers</option>
													<option value="special">Special Offers</option>
													<option value="latest">Latest Products</option>
													<option value="">None</option>
													<?php } elseif($RGen_SlideShow_Mod == 'best') { ?>
													<option value="featured">Featured Products</option>
													<option value="best" selected="selected">Best Sellers</option>
													<option value="special">Special Offers</option>
													<option value="latest">Latest Products</option>
													<option value="">None</option>
													<?php } elseif($RGen_SlideShow_Mod == 'special') { ?>
													<option value="featured">Featured Products</option>
													<option value="best">Best Sellers</option>
													<option value="special" selected="selected">Special Offers</option>
													<option value="latest">Latest Products</option>
													<option value="">None</option>
													<?php } elseif($RGen_SlideShow_Mod == 'latest') { ?>
													<option value="featured">Featured Products</option>
													<option value="best">Best Sellers</option>
													<option value="special">Special Offers</option>
													<option value="latest" selected="selected">Latest Products</option>
													<option value="">None</option>
													<?php } else { ?>
													<option value="featured">Featured Products</option>
													<option value="best">Best Sellers</option>
													<option value="special">Special Offers</option>
													<option value="latest">Latest Products</option>
													<option value="" selected="selected">None</option>
													<?php } ?>
												</select>
											</td>
										</tr>
									</table>
								</div>
								<div id="tab_social_links" class="vtabs-content">
									<table class="form">
										<tr>
											<td class="left">Facebook</td>
											<td class="left">
												<input type="text" name="socialLink_fb" value="<?php echo $socialLink_fb; ?>">
												<select name="socialLink_fb_Status">
													<?php if ($socialLink_fb_Status) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
													<?php } ?>
												</select>
											</td>
										</tr>
										<tr>
											<td class="left">Twitter</td>
											<td class="left">
												<input type="text" name="socialLink_twitter" value="<?php echo $socialLink_twitter; ?>">
												<select name="socialLink_twitter_Status">
													<?php if ($socialLink_twitter_Status) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
													<?php } ?>
												</select>
											</td>
										</tr>
										<tr>
											<td class="left">Youtube</td>
											<td class="left">
												<input type="text" name="socialLink_youtube" value="<?php echo $socialLink_youtube; ?>">
												<select name="socialLink_youtube_Status">
													<?php if ($socialLink_youtube_Status) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
													<?php } ?>
												</select>
											</td>
										</tr>
										<tr>
											<td class="left">Google +</td>
											<td class="left">
												<input type="text" name="socialLink_google" value="<?php echo $socialLink_google; ?>">
												<select name="socialLink_google_Status">
													<?php if ($socialLink_google_Status) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
													<?php } ?>
												</select>
											</td>
										</tr>
										<tr>
											<td class="left">Mail to</td>
											<td class="left">
												<!--<input type="text" name="socialLink_mailTo" value="<?php echo $socialLink_mailTo; ?>"> -->
												<select name="socialLink_mailTo_Status">
													<?php if ($socialLink_mailTo_Status) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
													<?php } ?>
												</select>
											</td>
										</tr>
										<tr>
											<td class="left">Share this</td>
											<td class="left">
												<!--<input type="text" name="socialLink_addThis" value="<?php echo $socialLink_addThis; ?>"> -->
												<select name="socialLink_addThis_Status">
													<?php if ($socialLink_addThis_Status) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
													<?php } ?>
												</select>
											</td>
										</tr>
									
									</table>
								</div>
								<div id="tab_contactinfo" class="vtabs-content">
									<table class="form">
										<tr>
											<td class="left">Contact status</td>
											<td class="left">
												<select name="FT_Contact_status">
													<?php if ($FT_Contact_status) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
													<?php } ?>
												</select>
											</td>
										</tr>
										<tr>
											<td class="left">Phone No.</td>
											<td class="left">
												<select name="FT_Contact_phStatus">
													<?php if ($FT_Contact_phStatus) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
													<?php } ?>
												</select><br />
												<input type="text" name="FT_Contact_ph" value="<?php echo $FT_Contact_ph; ?>">
												<input type="text" name="FT_Contact_ph1" value="<?php echo $FT_Contact_ph1; ?>">
											</td>
										</tr>
										<tr>
											<td class="left">Fax No.</td>
											<td class="left">
												<select name="FT_Contact_faxStatus">
													<?php if ($FT_Contact_faxStatus) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
													<?php } ?>
												</select><br />
												<input type="text" name="FT_Contact_fax" value="<?php echo $FT_Contact_fax; ?>">
												<input type="text" name="FT_Contact_fax1" value="<?php echo $FT_Contact_fax1; ?>">
											</td>
										</tr>
										<tr>
											<td class="left">Email</td>
											<td class="left">
												<select name="FT_Contact_emailStatus">
													<?php if ($FT_Contact_emailStatus) { ?>
													<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
													<option value="0"><?php echo $text_disabled; ?></option>
													<?php } else { ?>
													<option value="1"><?php echo $text_enabled; ?></option>
													<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
													<?php } ?>
												</select><br />
												<input type="text" name="FT_Contact_email" value="<?php echo $FT_Contact_email; ?>">
											</td>
										</tr>
									</table>
								</div>
								<div id="tab_custom_footer" class="vtabs-content">
									<div class="ft-control">
									<strong style="margin-right:20px;">R.Gen Custom Footer status</strong>
									<select name="RGen_FT_Status">
										<?php if ($RGen_FT_Status) { ?>
										<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
										<option value="0"><?php echo $text_disabled; ?></option>
										<?php } else { ?>
										<option value="1"><?php echo $text_enabled; ?></option>
										<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
										<?php } ?>
									</select>
									
									<select name="RGen_FT_Status_home">
										<?php if ($RGen_FT_Status_home == 'common/home') { ?>
										<option value="common/home" selected="selected">Display only on home page</option>
										<option value="all">Display on all pages</option>
										<?php } else { ?>
										<option value="common/home">Display only on home page</option>
										<option value="all" selected="selected">Display on all pages</option>
										<?php } ?>
									</select>
								</div>
					
									<div id="tabs" class="htabs">
										<a href="#tab_about">About Us</a>
										<a href="#tab_twitter">Twitter</a>
										<a href="#tab_facebook">Facebook</a>
									</div>
									<div id="tab_about">
										<table class="form">
											<tr>
												<td>About Us Status</td>
												<td>
													<select name="RGen_FT_about_Status" id="RGen_FT_about_Status">
														<?php if ($RGen_FT_about_Status == 1) { ?>
														<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
														<option value="0"><?php echo $text_disabled; ?></option>
														<?php } else { ?>
														<option value="1"><?php echo $text_enabled; ?></option>
														<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
														<?php } ?>
													</select>
												</td>
											</tr>
											<tr>
												<td>Header Text:</td>
												<td><input type="text" name="FT_about_Title" value="<?php echo $FT_about_Title; ?>"></td>
											</tr>
											<tr>
												<td>About Description:</td>
												<td>
													<textarea name="FT_about_Text"><?php echo $FT_about_Text; ?></textarea>
												</td>
											</tr>
										</table>
									</div>
									
									<div id="tab_twitter">
										<table class="form">
											<tr>
												<td>Twitter Status</td>
												<td>
													<select name="RGen_FT_twitter_Status" id="RGen_FT_twitter_Status">
														<?php if ($RGen_FT_twitter_Status == 1) { ?>
														<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
														<option value="0"><?php echo $text_disabled; ?></option>
														<?php } else { ?>
														<option value="1"><?php echo $text_enabled; ?></option>
														<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
														<?php } ?>
													</select>
												</td>
											</tr>
											<tr>
												<td>Header Text:</td>
												<td><input type="text" name="FT_twitter_Title" value="<?php echo $FT_twitter_Title; ?>"></td>
											</tr>
											<tr>
												<td>Number of Tweets:</td>
												<td>
													<select name="FT_twitter_Tweets">
														<option value="1"<?php if($FT_twitter_Tweets == '1') echo ' selected="selected"';?>>1</option>
														<option value="2"<?php if($FT_twitter_Tweets == '2') echo ' selected="selected"';?>>2</option>
														<option value="3"<?php if($FT_twitter_Tweets == '3') echo ' selected="selected"';?>>3</option>
													</select>
												</td>
											</tr>
											<tr>
												<td>Twitter Username:</td>
												<td><input type="text" name="FT_twitter_User" value="<?php echo $FT_twitter_User; ?>" /></td>
											</tr>
										</table>
									</div>
									
									<div id="tab_facebook">
										<table class="form">
											<tr>
												<td>Facebook Status</td>
												<td>
													<select name="RGen_FT_fb_Status" id="RGen_FT_fb_Status">
														<?php if ($RGen_FT_fb_Status == 1) { ?>
														<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
														<option value="0"><?php echo $text_disabled; ?></option>
														<?php } else { ?>
														<option value="1"><?php echo $text_enabled; ?></option>
														<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
														<?php } ?>
													</select>
												</td>
											</tr>
											<tr>
												<td>Header Text:</td>
												<td><input type="text" name="FT_fb_Title" value="<?php echo $FT_fb_Title; ?>"></td>
											</tr>
											<tr>
												<td>Facebook page ID:</td>
												<td><input type="text" name="FT_fb_ID" value="<?php echo $FT_fb_ID; ?>"></td>
											</tr>
										</table>
									</div>
								</div>
							</td>
							
						</tr>
					</table>
				</div>
				<div id="ThemeSetting" class="htabs-content">
					<table class="column">
						<tr>
							<td>
								<div class="style-box">
									<h3 class="header-1" style="cursor:inherit; padding-bottom:20px; margin-bottom:20px; border-bottom:1px solid #dfdfdf">
										R.Gen ready to use themes
										<select name="RGen_theme_optionStatus">
											<?php if ($RGen_theme_optionStatus) { ?>
											<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
											<option value="0"><?php echo $text_disabled; ?></option>
											<?php } else { ?>
											<option value="1"><?php echo $text_enabled; ?></option>
											<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
											<?php } ?>
										</select>
										
										<a class="resetBt" onclick="$('.themeOptions input:radio').attr('checked', false);">Reset</a>
									</h3>
									
									<table class="themeOptions">
										<tr>
											<td>
												<span class="radio">
													<input id="RGen_Theme1" name="RGen_theme_option" type="radio" <?php if ($RGen_theme_option == 1) { ?>checked="checked"<?php }?> value="1" />
													<label class="rgen-button" for="RGen_Theme1">
														<span></span>Theme 1
													</label>
												</span>
											</td>
											<td>
												<span class="radio">
													<input id="RGen_Theme2" name="RGen_theme_option" type="radio" <?php if ($RGen_theme_option == 2) { ?>checked="checked"<?php }?> value="2" />
													<label class="rgen-button" for="RGen_Theme2">
														<span></span>Theme 2
													</label>
												</span>
											</td>
										</tr>
									</table>
								</div>
								<div class="style-box">
									<h3 class="header-1" style="cursor:inherit;">
										R.Gen custom theme 
										<select name="RGen_theme">
											<?php if ($RGen_theme) { ?>
											<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
											<option value="0"><?php echo $text_disabled; ?></option>
											<?php } else { ?>
											<option value="1"><?php echo $text_enabled; ?></option>
											<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
											<?php } ?>
										</select>
										
										<a class="resetBt" onclick="$('.hex, .rgb').attr('value', '');$('.hex, .rgb').attr('style', '');$('#RGen_bodyBgImg_preview').attr('src', '<?php echo $no_image; ?>'); $('#RGen_bodyBgImg').attr('value', '');$('#RGen_headerBgImg_preview').attr('src', '<?php echo $no_image; ?>'); $('#RGen_headerBgImg').attr('value', '');">Reset theme</a>
									</h3>
								</div>
								<!--STYLE GROUP -->
								<div class="style-box">
									<h3 class="header-1">
										General theme colors  
										<span class="r">
											<a class="bt" onclick="imgPopup('#helpImg1');" id="helpImg1" rel="view/image/rgen_theme/theme_help1.jpg">Overview</a>
											<a class="bt" onclick="$('.global .hex, .global .rgb').attr('value', '');$('.global .hex, .global .rgb').attr('style', '');$('#RGen_bodyBgImg_preview').attr('src', '<?php echo $no_image; ?>'); $('#RGen_bodyBgImg').attr('value', '');">Reset</a>
											<a class="toggleBt">show</a>
										</span>
									</h3>
									<div class="style-box-content global">
										<table class="form1">
											<tr>
												<td class="label"><strong class="number">1</strong> <strong>Body background</strong></td>
												<td class="field">
													<input type="text" class="hex" name="RGen_bodyBg" id="RGen_bodyBg" value="<?php echo $RGen_bodyBg; ?>">
													
												</td>
											</tr>
											<tr>
												<td class="label"><strong class="number">2</strong> <strong>Body background image</strong></td>
												<td class="field">
													<table class="sub-from">
														<tr>
															<td width="90" align="center">
																<input type="hidden" name="RGen_bodyBgImg" value="<?php echo $RGen_bodyBgImg; ?>" id="RGen_bodyBgImg" />
																<img src="<?php echo $RGen_bodyBgImg_preview; ?>" alt="" id="RGen_bodyBgImg_preview" class="PreviewImage" />
																
															</td>
															<td valign="top">
																<br />
																<div>
																	<a onclick="image_upload('RGen_bodyBgImg', 'RGen_bodyBgImg_preview');" class="bt">Upload image</a>
																	<a onclick="$('#RGen_bodyBgImg_preview').attr('src', '<?php echo $no_image; ?>'); $('#RGen_bodyBgImg').attr('value', '');" class="bt">Remove image</a>
																</div>
																<br />
																
																<select name="RGen_bodyBgImgRepeat" style="width:150px">
																	<?php if ($RGen_bodyBgImgRepeat == 'no-repeat') { ?>
																	<option value="no-repeat" selected="selected">no-repeat</option>
																	<option value="repeat-x">repeat-x </option>
																	<option value="repeat-y">repeat-y</option>
																	<option value="repeat">repeat</option>
																	<?php } elseif ($RGen_bodyBgImgRepeat == 'repeat-x') { ?>
																	<option value="no-repeat">no-repeat</option>
																	<option value="repeat-x" selected="selected">repeat-x</option>
																	<option value="repeat-y">repeat-y</option>
																	<option value="repeat">repeat</option>
																	<?php } elseif ($RGen_bodyBgImgRepeat == 'repeat-y') { ?>
																	<option value="no-repeat">no-repeat</option>
																	<option value="repeat-x">repeat-x </option>
																	<option value="repeat-y" selected="selected">repeat-y</option>
																	<option value="repeat">repeat</option>
																	<?php } else { ?>
																	<option value="no-repeat">no-repeat</option>
																	<option value="repeat-x">repeat-x </option>
																	<option value="repeat-y">repeat-y</option>
																	<option value="repeat" selected="selected">repeat</option>
																	<?php } ?>
																</select><br />
																
																<select name="RGen_bodyBgImgPosition" style="width:150px">
																	<?php if ($RGen_bodyBgImgPosition == 'left top') { ?>
																	<option value="left top" selected="selected">left top</option>
																	<option value="right top">right top</option>
																	<option value="center top">center top</option>
																	<option value="center center">center center</option>
																	<?php } elseif ($RGen_bodyBgImgPosition == 'right top') { ?>
																	<option value="left top">left top</option>
																	<option value="right top" selected="selected">right top</option>
																	<option value="center top">center top</option>
																	<option value="center center">center center</option>
																	<?php } elseif ($RGen_bodyBgImgPosition == 'center top') { ?>
																	<option value="left top">left top</option>
																	<option value="right top">right top</option>
																	<option value="center top" selected="selected">center top</option>
																	<option value="center center">center center</option>
																	<?php } else { ?>
																	<option value="left top">left top</option>
																	<option value="right top">right top</option>
																	<option value="center top">center top</option>
																	<option value="center center" selected="selected">center center</option>
																	<?php } ?>
																</select>
																
																
															</td>
														</tr>
													</table>
													
													
												</td>
											</tr>
											<tr>
												<td class="label"><strong class="number">3</strong> <strong>Global color</strong></td>
												<td class="field"><input type="text" class="hex" name="RGen_globalColour" id="RGen_globalColour" value="<?php echo $RGen_globalColour; ?>"></td>
											</tr>
											<tr>
												<td class="label"><strong class="number">4</strong> <strong>Slide show dot color</strong></td>
												<td class="field"><input type="text" class="rgb" name="RGen_globalColourRing" id="RGen_globalColourRing" value="<?php echo $RGen_globalColourRing; ?>"></td>
											</tr>
											
											
											<tr>
												<td class="label"><strong class="number">5</strong> <strong>Page background</strong></td>
												<td class="field"><input type="text" class="hex" name="RGen_pageBg" id="RGen_pageBg" value="<?php echo $RGen_pageBg; ?>"></td>
											</tr>
											<tr>
												<td class="label"><strong class="number">6</strong> <strong>Page shadow</strong></td>
												<td class="field">
													<input type="text" class="rgb" name="RGen_pageShadow" id="RGen_pageShadow" value="<?php echo $RGen_pageShadow; ?>"> 
													<!--<a onclick="$('#RGen_pageShadow').attr('value', '');" class="bt">Remove shadow</a> -->
												</td>
											</tr>
											<tr>
												<td class="label"><strong class="number">7</strong> <strong>General image box</strong></td>
												<td class="field"><input type="text" class="hex" name="RGen_ImageBox" id="RGen_ImageBox" value="<?php echo $RGen_ImageBox; ?>"></td>
											</tr>
											<tr>
												<td class="label"><strong class="number">8</strong> <strong>General content font color</strong></td>
												<td class="field"><input type="text" class="hex" name="RGen_fontColor" id="RGen_fontColor" value="<?php echo $RGen_fontColor; ?>"></td>
											</tr>
											<tr>
												<td class="label"><strong class="number">9</strong> <strong>Button1 color</strong></td>
												<td class="field">
													<table class="sub-from">
														<tr>
															<td>Normal<br /><input type="text" class="hex" name="RGen_btColor" id="RGen_btColor" value="<?php echo $RGen_btColor; ?>"></td>
															<td>Normal text<br /><input type="text" class="hex" name="RGen_btFontColor" id="RGen_btFontColor" value="<?php echo $RGen_btFontColor; ?>"></td>
															<td>Hover<br /><input type="text" class="hex" name="RGen_btColor_hover" id="RGen_btColor_hover" value="<?php echo $RGen_btColor_hover; ?>"></td>
															<td>Hover text<br /><input type="text" class="hex" name="RGen_btFontColor_hover" id="RGen_btFontColor_hover" value="<?php echo $RGen_btFontColor_hover; ?>"></td>
														</tr>
													</table>
												</td>
											</tr>
											<tr>
												<td class="label"><strong class="number">10</strong> <strong>Button2 color</strong></td>
												<td class="field">
													<table class="sub-from">
														<tr>
															<td>Normal<br /><input type="text" class="hex" name="RGen_btColor1" id="RGen_btColor1" value="<?php echo $RGen_btColor1; ?>"></td>
															<td>Normal text<br /><input type="text" class="hex" name="RGen_btFontColor1" id="RGen_btFontColor1" value="<?php echo $RGen_btFontColor1; ?>"></td>
															<td>Hover<br /><input type="text" class="hex" name="RGen_btColor1_hover" id="RGen_btColor1_hover" value="<?php echo $RGen_btColor1_hover; ?>"></td>
															<td>Hover text<br /><input type="text" class="hex" name="RGen_btFontColor1_hover" id="RGen_btFontColor1_hover" value="<?php echo $RGen_btFontColor1_hover; ?>"></td>
														</tr>
													</table>
												</td>
											</tr>
											
											<tr>
												<td class="label"><strong class="number">11</strong> <strong>General link button color</strong></td>
												<td class="field">
													<table class="sub-from">
														<tr>
															<td>Normal<br /><input type="text" class="hex" name="RGen_LinkBtColor" id="RGen_LinkBtColor" value="<?php echo $RGen_LinkBtColor; ?>"></td>
															<td>Normal Text<br /><input type="text" class="hex" name="RGen_LinkBtFontColor" id="RGen_LinkBtFontColor" value="<?php echo $RGen_LinkBtFontColor; ?>"></td>
															<td>Hover<br /><input type="text" class="hex" name="RGen_LinkBtColor_hover" id="RGen_LinkBtColor_hover" value="<?php echo $RGen_LinkBtColor_hover; ?>"></td>
															<td>Hover text<br /><input type="text" class="hex" name="RGen_LinkBtFontColor_hover" id="RGen_LinkBtFontColor_hover" value="<?php echo $RGen_LinkBtFontColor_hover; ?>"></td>
														</tr>
													</table>
												</td>
											</tr>
																						
											<tr>
												<td class="label"><strong class="number">12</strong> <strong>General link color</strong></td>
												<td class="field">
													<table class="sub-from">
														<tr>
															<td>Normal<br /><input type="text" class="hex" name="RGen_LinkColor" id="RGen_LinkColor" value="<?php echo $RGen_LinkColor; ?>"></td>
															<td>Hover<br /><input type="text" class="hex" name="RGen_LinkColor_hover" id="RGen_LinkColor_hover" value="<?php echo $RGen_LinkColor_hover; ?>"></td>
														</tr>
													</table>
												</td>
											</tr>
											
											
											
											<tr>
												<td class="label"><strong class="number">13</strong> <strong>Scroller arrows</strong></td>
												<td class="field">
													<table class="sub-from">
														<tr>
															<td>Normal<br /><input type="text" class="hex" name="RGen_arrowBg" id="RGen_arrowBg" value="<?php echo $RGen_arrowBg; ?>"></td>
															<td>Hover<br /><input type="text" class="hex" name="RGen_arrowBg_hover" id="RGen_arrowBg_hover" value="<?php echo $RGen_arrowBg_hover; ?>"></td>
															<td>Ring<br /><input type="text" class="rgb" name="RGen_arrowBgRing" id="RGen_arrowBgRing" value="<?php echo $RGen_arrowBgRing; ?>"></td>
															<td>Ring hover<br /><input type="text" class="rgb" name="RGen_arrowBgRing_hover" id="RGen_arrowBgRing_hover" value="<?php echo $RGen_arrowBgRing_hover; ?>"></td>
														</tr>
													</table>
												</td>
											</tr>
											
											<tr>
												<td class="label"><strong class="number">14</strong> <strong>General headers</strong></td>
												<td class="field"><input type="text" class="hex" name="RGen_Header" id="RGen_Header" value="<?php echo $RGen_Header; ?>"></td>
											</tr>
											<tr>
												<td class="label"><strong class="number">15</strong> <strong>General table list</strong></td>
												<td class="field">
													<table class="sub-from">
														<tr>
															<td>Header<br /><input type="text" class="hex" name="RGen_tableListHeader" id="RGen_tableListHeader" value="<?php echo $RGen_tableListHeader; ?>"></td>
															<td>Header text<br /><input type="text" class="hex" name="RGen_tableListHeaderFont" id="RGen_tableListHeaderFont" value="<?php echo $RGen_tableListHeaderFont; ?>"></td>
															<td>Content text<br /><input type="text" class="hex" name="RGen_tableListFont" id="RGen_tableListFont" value="<?php echo $RGen_tableListFont; ?>"></td>
															<td>Border right<br /><input type="text" class="hex" name="RGen_tableListBorder_right" id="RGen_tableListBorder_right" value="<?php echo $RGen_tableListBorder_right; ?>"></td>
															<td>Border bottom<br /><input type="text" class="hex" name="RGen_tableListBorder_bottom" id="RGen_tableListBorder_bottom" value="<?php echo $RGen_tableListBorder_bottom; ?>"></td>
														</tr>
													</table>
												</td>
											</tr>
										</table>
									</div>
									
								</div>
								<!--STYLE GROUP -->
								<div class="style-box">
									<h3 class="header-1">
										Page top header section 
										<span class="r">
											<a class="bt" onclick="imgPopup('#helpImg2');" id="helpImg2" rel="view/image/rgen_theme/theme_help2.jpg">Overview</a>
											<a class="bt" onclick="$('.header-section .hex, .header-section .rgb').attr('value', '');$('.header-section .hex, .header-section .rgb').attr('style', '');$('#RGen_headerBgImg_preview').attr('src', '<?php echo $no_image; ?>'); $('#RGen_headerBgImg').attr('value', '');">Reset</a>
											<a class="toggleBt">show</a>
										</span>
									</h3>
									<div class="style-box-content header-section">
										<table class="form1">
										<tr>
											<td class="label"><strong class="number">1</strong> <strong>Header background</strong></td>
											<td class="field"><input type="text" class="hex" name="RGen_headerBg" id="RGen_headerBg" value="<?php echo $RGen_headerBg; ?>"></td>
										</tr>
										<tr>
											<td class="label"><strong class="number">2</strong> <strong>Header background image</strong></td>
											<td class="field">
												<table class="sub-from">
													<tr>
														<td width="90" align="center">
															<input type="hidden" name="RGen_headerBgImg" value="<?php echo $RGen_headerBgImg; ?>" id="RGen_headerBgImg" />
															<img src="<?php echo $RGen_headerBgImg_preview; ?>" alt="" id="RGen_headerBgImg_preview" class="PreviewImage" />
															
														</td>
														<td valign="top">
															<br />
															<div>
																<a onclick="image_upload('RGen_headerBgImg', 'RGen_headerBgImg_preview');" class="bt">Upload image</a> 
																<a onclick="$('#RGen_headerBgImg_preview').attr('src', '<?php echo $no_image; ?>'); $('#RGen_headerBgImg').attr('value', '');" class="bt">Remove image</a>
															</div>
															<br />
															<select name="RGen_headerBgImgRepeat" style="width:150px">
																<?php if ($RGen_headerBgImgRepeat == 'no-repeat') { ?>
																<option value="no-repeat" selected="selected">no-repeat</option>
																<option value="repeat-x">repeat-x </option>
																<option value="repeat-y">repeat-y</option>
																<option value="repeat">repeat</option>
																<?php } elseif ($RGen_headerBgImgRepeat == 'repeat-x') { ?>
																<option value="no-repeat">no-repeat</option>
																<option value="repeat-x" selected="selected">repeat-x</option>
																<option value="repeat-y">repeat-y</option>
																<option value="repeat">repeat</option>
																<?php } elseif ($RGen_headerBgImgRepeat == 'repeat-y') { ?>
																<option value="no-repeat">no-repeat</option>
																<option value="repeat-x">repeat-x </option>
																<option value="repeat-y" selected="selected">repeat-y</option>
																<option value="repeat">repeat</option>
																<?php } else { ?>
																<option value="no-repeat">no-repeat</option>
																<option value="repeat-x">repeat-x </option>
																<option value="repeat-y">repeat-y</option>
																<option value="repeat" selected="selected">repeat</option>
																<?php } ?>
															</select><br />
															
															<select name="RGen_headerBgImgPosition" style="width:150px">
																<?php if ($RGen_headerBgImgPosition == 'left top') { ?>
																<option value="left top" selected="selected">left top</option>
																<option value="right top">right top</option>
																<option value="center top">center top</option>
																<option value="center center">center center</option>
																<?php } elseif ($RGen_headerBgImgPosition == 'right top') { ?>
																<option value="left top">left top</option>
																<option value="right top" selected="selected">right top</option>
																<option value="center top">center top</option>
																<option value="center center">center center</option>
																<?php } elseif ($RGen_headerBgImgPosition == 'center top') { ?>
																<option value="left top">left top</option>
																<option value="right top">right top</option>
																<option value="center top" selected="selected">center top</option>
																<option value="center center">center center</option>
																<?php } else { ?>
																<option value="left top">left top</option>
																<option value="right top">right top</option>
																<option value="center top">center top</option>
																<option value="center center" selected="selected">center center</option>
																<?php } ?>
															</select>
														</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td class="label"><strong class="number">3</strong> <strong>Breadcrumb arrow</strong></td>
											<td class="field"><input type="text" class="hex" name="RGen_Breadcrumb_Arrow" id="RGen_Breadcrumb_Arrow" value="<?php echo $RGen_Breadcrumb_Arrow; ?>"></td>
										</tr>
										<tr>
											<td class="label"><strong class="number">4</strong> <strong>Logo background</strong></td>
											<td class="field"><input type="text" class="hex" name="RGen_Logo" id="RGen_Logo" value="<?php echo $RGen_Logo; ?>"></td>
										</tr>
										<tr>
											<td class="label"><strong class="number">5</strong> <strong>Header text &amp; links</strong></td>
											<td class="field">
												<table class="sub-from">
													<tr>
														<td>Text<br /><input type="text" class="hex" name="RGen_Header_text" id="RGen_Header_text" value="<?php echo $RGen_Header_text; ?>"></td>
														<td>Links Normal<br /><input type="text" class="hex" name="RGen_Header_Link" id="RGen_Header_Link" value="<?php echo $RGen_Header_Link; ?>"></td>
														<td>Links Hover<br /><input type="text" class="hex" name="RGen_Header_Link_hover" id="RGen_Header_Link_hover" value="<?php echo $RGen_Header_Link_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td class="label"><strong class="number">6</strong> <strong>Navigation links</strong></td>
											<td class="field">
												<table class="sub-from" cellpadding="0" cellspacing="0">
													<tr>
														<td>Normal<br /><input type="text" class="hex" name="RGen_Nav" id="RGen_Nav" value="<?php echo $RGen_Nav; ?>"></td>
														<td>Normal text<br /><input type="text" class="hex" name="RGen_NavFont" id="RGen_NavFont" value="<?php echo $RGen_NavFont; ?>"></td>
														<td>Hover<br /><input type="text" class="hex" name="RGen_Nav_hover" id="RGen_Nav_hover" value="<?php echo $RGen_Nav_hover; ?>"></td>
														<td>Hover text<br /><input type="text" class="hex" name="RGen_NavFont_hover" id="RGen_NavFont_hover" value="<?php echo $RGen_NavFont_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td class="label"><strong class="number">7</strong> <strong>Navigation dropdown</strong></td>
											<td class="field">
												<table class="sub-from" cellpadding="0" cellspacing="0">
													<tr>
														<td>Normal<br /><input type="text" class="hex" name="RGen_NavSub" id="RGen_NavSub" value="<?php echo $RGen_NavSub; ?>"></td>
														<td>Normal text<br /><input type="text" class="hex" name="RGen_NavSubFont" id="RGen_NavSubFont" value="<?php echo $RGen_NavSubFont; ?>"></td>
														<td>Hover<br /><input type="text" class="hex" name="RGen_NavSub_hover" id="RGen_NavSub_hover" value="<?php echo $RGen_NavSub_hover; ?>"></td>
														<td>Hover text<br /><input type="text" class="hex" name="RGen_NavSubFont_hover" id="RGen_NavSubFont_hover" value="<?php echo $RGen_NavSubFont_hover; ?>"></td>
														<td>Border<br /><input type="text" class="hex" name="RGen_NavSubBorder" id="RGen_NavSubBorder" value="<?php echo $RGen_NavSubBorder; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td class="label"><strong class="number">8</strong> <strong>Navigation home button</strong></td>
											<td class="field">
												<table class="sub-from" cellpadding="0" cellspacing="0">
													<tr>
														<td>Normal<br /><input type="text" class="hex" name="RGen_homeBt" id="RGen_homeBt" value="<?php echo $RGen_homeBt; ?>"></td>
														<td>Hover<br /><input type="text" class="hex" name="RGen_homeBt_hover" id="RGen_homeBt_hover" value="<?php echo $RGen_homeBt_hover; ?>"></td>
														<td>Button ring<br /><input type="text" class="rgb" name="RGen_homeBtRing" id="RGen_homeBtRing" value="<?php echo $RGen_homeBtRing; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										
										<tr>
											<td class="label"><strong class="number">9</strong> <strong>Search button</strong></td>
											<td class="field">
												<table class="sub-from" cellpadding="0" cellspacing="0">
													<tr>
														<td>Normal<br /><input type="text" class="hex" name="RGen_searchBt" id="RGen_searchBt" value="<?php echo $RGen_searchBt; ?>"></td>
														<td>Normal ring<br /><input type="text" class="rgb" name="RGen_searchBtRing" id="RGen_searchBtRing" value="<?php echo $RGen_searchBtRing; ?>"></td>
														
														<td>Hover<br /><input type="text" class="hex" name="RGen_searchBt_hover" id="RGen_searchBt_hover" value="<?php echo $RGen_searchBt_hover; ?>"></td>
														<td>Hover ring<br /><input type="text" class="rgb" name="RGen_searchBtRing_hover" id="RGen_searchBtRing_hover" value="<?php echo $RGen_searchBtRing_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
									</div>
								</div>
								<!--STYLE GROUP -->
								<div class="style-box">
									<h3 class="header-1">
										Product box colors 
										<span class="r">
											<a class="bt" onclick="imgPopup('#helpImg3');" id="helpImg3" rel="view/image/rgen_theme/theme_help3.jpg">Overview</a>
											<a class="bt" onclick="$('.product-box .hex, .product-box .rgb').attr('value', '');$('.product-box .hex, .product-box .rgb').attr('style', '');">Reset</a>
											<a class="toggleBt">show</a>
										</span>
									</h3>
									<div class="style-box-content product-box">
										<table class="form1">
										<tr>
											<td class="label"><strong class="number">1</strong> <strong>Refine category header</strong></td>
											<td class="field">
												<table class="sub-from">
													<tr>
														<td>Background<br /><input type="text" class="hex" name="RGen_RefinCateHdBg" id="RGen_RefinCateHdBg" value="<?php echo $RGen_RefinCateHdBg; ?>"></td>
														<td>Text color<br /><input type="text" class="hex" name="RGen_RefinCateHdFontColor" id="RGen_RefinCateHdFontColor" value="<?php echo $RGen_RefinCateHdFontColor; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td class="label"><strong class="number">2</strong> <strong>Refine category box</strong></td>
											<td class="field">
												<table class="sub-from">
													<tr>
														<td>Background<br /><input type="text" class="hex" name="RGen_RefinCateBg" id="RGen_RefinCateBg" value="<?php echo $RGen_RefinCateBg; ?>"></td>
														<td>Text color<br /><input type="text" class="hex" name="RGen_RefinCateFontColour" id="RGen_RefinCateFontColour" value="<?php echo $RGen_RefinCateFontColour; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										
										<tr>
											<td class="label"><strong class="number">3</strong> <strong>Product box</strong></td>
											<td class="field">
												<table class="sub-from">
													<tr>
														<td>Background<br /><input type="text" class="hex" name="RGen_prdBack" id="RGen_prdBack" value="<?php echo $RGen_prdBack; ?>"></td>
														<td>Name<br /><input type="text" class="hex" name="RGen_prdName" id="RGen_prdName" value="<?php echo $RGen_prdName; ?>"></td>
														<td>Links<br /><input type="text" class="hex" name="RGen_prdLinks" id="RGen_prdLinks" value="<?php echo $RGen_prdLinks; ?>"></td>
														<td>Link hover<br /><input type="text" class="hex" name="RGen_prdLinks_hover" id="RGen_prdLinks_hover" value="<?php echo $RGen_prdLinks_hover; ?>"></td>
														<td>Hover BG<br /><input type="text" class="hex" name="RGen_prdHover_Bg" id="RGen_prdHover_Bg" value="<?php echo $RGen_prdHover_Bg; ?>"></td>
														<td>Text<br /><input type="text" class="hex" name="RGen_prdText" id="RGen_prdText" value="<?php echo $RGen_prdText; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td class="label"><strong class="number">4</strong> <strong>Price tag</strong></td>
											<td class="field">
												<table class="sub-from">
													<tr>
														<td>Price tag<br /><input type="text" class="hex" name="RGen_PriceBg" id="RGen_PriceBg" value="<?php echo $RGen_PriceBg; ?>"></td>
														<td>Old Price<br /><input type="text" class="hex" name="RGen_OldPrice" id="RGen_OldPrice" value="<?php echo $RGen_OldPrice; ?>"></td>
														<td>Price txt<br /><input type="text" class="hex" name="RGen_Price" id="RGen_Price" value="<?php echo $RGen_Price; ?>"></td>
														<td>Price tag ring<br /><input type="text" class="rgb" name="RGen_PriceRing" id="RGen_PriceRing" value="<?php echo $RGen_PriceRing; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										
										<tr>
											<td class="label"><strong class="number">5</strong> <strong>Cart button</strong></td>
											<td class="field">
												<table class="sub-from">
													<tr>
														<td>Normal<br /><input type="text" class="hex" name="RGen_cartBt" id="RGen_cartBt" value="<?php echo $RGen_cartBt; ?>"></td>
														<td>Hover<br /><input type="text" class="hex" name="RGen_cartBt_hover" id="RGen_cartBt_hover" value="<?php echo $RGen_cartBt_hover; ?>"></td>
														<td>Ring<br /><input type="text" class="rgb" name="RGen_cartBtRing" id="RGen_cartBtRing" value="<?php echo $RGen_cartBtRing; ?>"></td>
														<td>Ring hover<br /><input type="text" class="rgb" name="RGen_cartBtRing_hover" id="RGen_cartBt_hover" value="<?php echo $RGen_cartBt_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										
									</table>
									</div>
									
								</div>
								<!--STYLE GROUP -->
								<div class="style-box">
									<h3 class="header-1">
										Home page slideshow product scroller 
										<span class="r">
											<a class="bt" onclick="imgPopup('#helpImg4');" id="helpImg4" rel="view/image/rgen_theme/theme_help4.jpg">Overview</a>
											<a class="bt" onclick="$('.scroller .hex, .scroller .rgb').attr('value', '');$('.scroller .hex, .scroller .rgb').attr('style', '');">Reset</a>
											<a class="toggleBt">show</a>
										</span>
									</h3>
									<div class="style-box-content scroller">
										<table class="form1">
										<tr>
											<td class="label"><strong class="number">1</strong> <strong>Header</strong></td>
											<td class="field">
												<table class="sub-from">
													<tr>
														<td>Background<br /><input type="text" class="hex" name="RGen_featuredTitleBg" id="RGen_featuredTitleBg" value="<?php echo $RGen_featuredTitleBg; ?>"></td>
														<td>Text color<br /><input type="text" class="hex" name="RGen_featuredTitleFont" id="RGen_featuredTitleFont" value="<?php echo $RGen_featuredTitleFont; ?>"></td>
														<td>Arrow<br /><input type="text" class="hex" name="RGen_featuredArrow" id="RGen_featuredArrow" value="<?php echo $RGen_featuredArrow; ?>"></td>
														<td>Arrow hover<br /><input type="text" class="hex" name="RGen_featuredArrow_hover" id="RGen_featuredArrow_hover" value="<?php echo $RGen_featuredArrow_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td class="label"><strong class="number">2</strong> <strong>Product box</strong></td>
											<td class="field">
												<table class="sub-from">
													<tr>
														<td>Background<br /><input type="text" class="hex" name="RGen_featuredBg" id="RGen_featuredBg" value="<?php echo $RGen_featuredBg; ?>"></td>
														<td>Hover Backgroud<br /><input type="text" class="hex" name="RGen_featuredHover_Bg" id="RGen_featuredHover_Bg" value="<?php echo $RGen_featuredHover_Bg; ?>"></td>
														<td>Link<br /><input type="text" class="hex" name="RGen_featuredPrdText" id="RGen_featuredPrdText" value="<?php echo $RGen_featuredPrdText; ?>"></td>
														<td>Price tag<br /><input type="text" class="hex" name="RGen_featuredPriceBg" id="RGen_featuredPriceBg" value="<?php echo $RGen_featuredPriceBg; ?>"></td>
														<td>Price txt<br /><input type="text" class="hex" name="RGen_featuredPrice" id="RGen_featuredPrice" value="<?php echo $RGen_featuredPrice; ?>"></td>
														<td>Old Price<br /><input type="text" class="hex" name="RGen_featuredPriceOld" id="RGen_featuredPriceOld" value="<?php echo $RGen_featuredPriceOld; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td class="label"><strong class="number">3</strong> <strong>Cart button</strong></td>
											<td class="field">
												<table class="sub-from">
													<tr>
														<td>Normal<br /><input type="text" class="hex" name="RGen_featuredCrtBt" id="RGen_featuredCrtBt" value="<?php echo $RGen_featuredCrtBt; ?>"></td>
														<td>Hover<br /><input type="text" class="hex" name="RGen_featuredCrtBt_hover" id="RGen_featuredCrtBt_hover" value="<?php echo $RGen_featuredCrtBt_hover; ?>"></td>
														<td>Ring<br /><input type="text" class="rgb" name="RGen_featuredCrtBtRing" id="RGen_featuredCrtBtRing" value="<?php echo $RGen_featuredCrtBtRing; ?>"></td>
														<td>Ring hover<br /><input type="text" class="rgb" name="RGen_featuredCrtBtRing_hover" id="RGen_featuredCrtBtRing_hover" value="<?php echo $RGen_featuredCrtBtRing_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
									</div>
									
								</div>
								<!--STYLE GROUP -->
								<div class="style-box">
									<h3 class="header-1">
										Footer 
										<span class="r">
											<a class="bt" onclick="imgPopup('#helpImg5');" id="helpImg5" rel="view/image/rgen_theme/theme_help5.jpg">Overview</a>
											<a class="bt" onclick="$('.footer-section .hex, .footer-section .rgb').attr('value', '');$('.footer-section .hex, .footer-section .rgb').attr('style', '');">Reset</a>
											<a class="toggleBt">show</a>
										</span>
									</h3>
									<div class="style-box-content footer-section">
										<table class="form1">
										<tr>
											<td class="label"><strong class="number">1</strong> <strong>Background</strong></td>
											<td class="field"><input type="text" class="hex" name="RGen_FooterBg" id="RGen_FooterBg" value="<?php echo $RGen_FooterBg; ?>"></td>
										</tr>
										<tr>
											<td class="label"><strong class="number">2</strong> <strong>Contact icons</strong></td>
											<td class="field"><input type="text" class="hex" name="RGen_contactIcons" id="RGen_contactIcons" value="<?php echo $RGen_contactIcons; ?>"></td>
										</tr>
										<tr>
											<td class="label"><strong class="number">4</strong> <strong>Social buttons</strong></td>
											<td class="field">
												<table class="sub-from">
													<tr>
														<td>Normal<br /><input type="text" class="hex" name="RGen_FooterSocial" id="RGen_FooterSocial" value="<?php echo $RGen_FooterSocial; ?>"></td>
														<td>Hover<br /><input type="text" class="hex" name="RGen_FooterSocial_hover" id="RGen_FooterSocial_hover" value="<?php echo $RGen_FooterSocial_hover; ?>"></td>
														<td>Ring<br /><input type="text" class="rgb" name="RGen_FooterSocialRing" id="RGen_FooterSocialRing" value="<?php echo $RGen_FooterSocialRing; ?>"></td>
														<td>Hover ring<br /><input type="text" class="rgb" name="RGen_FooterSocialRing_hover" id="RGen_FooterSocialRing_hover" value="<?php echo $RGen_FooterSocialRing_hover; ?>"></td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
									</div>
									
								</div>
							</td>
						</tr>
					</table>
					
				</div>
				<div id="CustomCSS" class="htabs-content">
					<table class="form">
						<tr>
							<td class="left">Add Custom CSS file</td>
							<td class="left">
								<select name="RGen_customFile_Status" id="RGen_customFile_Status">
									<?php if ($RGen_customFile_Status == 1) { ?>
									<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
									<option value="0"><?php echo $text_disabled; ?></option>
									<?php } else { ?>
									<option value="1"><?php echo $text_enabled; ?></option>
									<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
									<?php } ?>
								</select>
								<input type="text" class="file-path" style="width:200px; margin-left:10px;" name="RGen_CustomCSS_file" id="RGen_CustomCSS_file" value="<?php echo $RGen_CustomCSS_file; ?>">
								<br /><br />
								<span class="help">
									- Save your CSS file into this folder ==> <strong>catalog/view/theme/rgen-opencart/stylesheet/</strong><br />
									- Just enter file name in above input (Example: "custom.css")
								</span>
							</td>
						</tr>
						<tr>
							<td class="left">Add Custom CSS code</td>
							<td class="left">
								<select name="RGen_CustomCSS_Status" id="RGen_CustomCSS_Status">
									<?php if ($RGen_CustomCSS_Status == 1 || $RGen_CustomCSS_Status == '') { ?>
									<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
									<option value="0"><?php echo $text_disabled; ?></option>
									<?php } else { ?>
									<option value="1"><?php echo $text_enabled; ?></option>
									<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
									<?php } ?>
								</select><br /><br />
								<textarea cols="100" rows="10" name="RGen_CustomCSS" id="RGen_CustomCSS"><?php echo $RGen_CustomCSS; ?></textarea>
							</td>
						</tr>
					</table>
				</div>
				
			</form>
		</div>
	</div>
</div>


<script type="text/javascript"><!--
function image_upload(field, previewImg) {
	
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: '<?php echo $text_image_manager; ?>',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(data) {
						$('#' + previewImg).replaceWith('<img src="' + data + '" alt="" class="PreviewImage" id="' + previewImg + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 700,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script> 


<input id="helpImage" />
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
// SET FCK EDITOR FOR ABOUT US CONTENT
CKEDITOR.replace('FT_about_Text', {
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

$('#tabs a').tabs();
$('#tabs1 a').tabs();
$('#language_tab a').tabs();
$('#mainTabs a').tabs();


function imgPopup (helpImg){
	$('#ThemeOverview').remove();
	$('#content').prepend('<div id="ThemeOverview" style="padding: 15px;"><img src="" /></div>');
	$('#ThemeOverview').dialog({
		dialogClass: "ThemeOverview-popup",
		open: function(event, ui) {
			$(this).find('img').attr('src',$(helpImg).attr('rel'));
			},
		title: 'Theme overview',
		bgiframe: false,
		width: 950,
		height: 600,
		resizable: false,
		modal: false,
		closeOnEscape: true
	});
}



$('.header-1 .toggleBt').click(function(){
	
	if($(this).parent().parent().parent().hasClass('open') == true){
		$(this).parent().parent().parent().removeClass('open');
		$(this).text('show')
	}else{
		$(this).parent().parent().parent().addClass('open');
		$(this).text('hide')
	}
});

$('.hex').each(function(index, element) {
	$(this).colorpicker({
		hsv:false,
		altField:$(this),
		showNoneButton:true,
		altProperties: 'background-color'
	});	
	$(this).click(function(){
		$('.ui-colorpicker').css({top:$(this).offset().top + 25});
	});
	
	if($(this).val() == ''){
		$(this).css({backgroundColor:"#fff"});
	}else{
		$(this).css({backgroundColor:"#"+$(this).val()});
	}
});
$('.rgb').each(function(index, element) {

	$(this).colorpicker({
		hsv:false,
		alpha:true,
		colorFormat: ['RGBA'],
		showNoneButton:true,
		select: function(event, color) {
					$(this).val(color.formatted);
				}
	});
	
	$(this).click(function(){
		$('.ui-colorpicker').css({top:$(this).offset().top + 25});
	});
});

$('select .normal').bind('select', function(){
	$('.normal-size').css({display:'block'});
});

//--></script> 


<?php echo $footer; ?>