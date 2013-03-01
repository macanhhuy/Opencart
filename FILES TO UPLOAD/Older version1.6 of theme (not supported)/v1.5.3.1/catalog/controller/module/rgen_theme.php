<?php  
class ControllerModuleRgenTheme extends Controller {
	protected function index() {
		
		$this->language->load('module/rgen_theme');
		
		$this->data ['RGen_FT_Status'] = $this->config->get ( 'RGen_FT_Status' );
		
		// ABOUT US
		$this->data ['RGen_FT_about_Status'] = $this->config->get ( 'RGen_FT_about_Status' );	
		$this->data ['FT_about_Title'] = $this->config->get ( 'FT_about_Title' );
		$this->data ['FT_about_Text'] = $this->config->get ( 'FT_about_Text' );
		
		// FACEBOOK
		$this->data ['FT_fb_Title'] = $this->config->get ( 'FT_fb_Title' );
		$this->data ['RGen_FT_fb_Status'] = $this->config->get ( 'RGen_FT_fb_Status' );		
		$this->data ['FT_fb_ID'] = $this->config->get ( 'FT_fb_ID' );
		
		// TWITTER
		$this->data ['RGen_FT_twitter_Status'] = $this->config->get ( 'RGen_FT_twitter_Status' );
		$this->data ['FT_twitter_Title'] = $this->config->get ( 'FT_twitter_Title' );
		$this->data ['FT_twitter_Tweets'] = $this->config->get ( 'FT_twitter_Tweets' );
		$this->data ['FT_twitter_User'] = $this->config->get ( 'FT_twitter_User' );
		
		// number of active columns
		$this->data ['Active_modules'] = $this->data ['RGen_FT_about_Status'] + $this->data ['RGen_FT_fb_Status'] + $this->data ['RGen_FT_twitter_Status'];
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/rgen_theme.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/rgen_theme.tpl';
		} else {
			$this->template = 'default/template/module/rgen_theme.tpl';
		}
		
		$this->render();
	}
}


?>