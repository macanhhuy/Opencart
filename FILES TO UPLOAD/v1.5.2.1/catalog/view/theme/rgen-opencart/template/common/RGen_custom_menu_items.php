<?php if ($this->config->get('RGen_menu_item_status') == 1 && $this->config->get('RGen_menu_item1') != '') { ?>
	<li>
		<a <?php if($this->config->get('RGen_menu_item1_url') != '') { ?>href="<?php echo $this->config->get('RGen_menu_item1_url'); ?>"<?php } ?> title="<?php echo $this->config->get('RGen_menu_item1'); ?>" class="top-lvl"><?php echo $this->config->get('RGen_menu_item1'); ?></a>
	</li>
	
	<?php if ($this->config->get('RGen_menu_item2') != '') { ?>
	<li>
		<a <?php if($this->config->get('RGen_menu_item2_url') != '') { ?>href="<?php echo $this->config->get('RGen_menu_item2_url'); ?>"<?php } ?> title="<?php echo $this->config->get('RGen_menu_item2'); ?>" class="top-lvl"><?php echo $this->config->get('RGen_menu_item2'); ?></a>
	</li>
	
	<?php }if ($this->config->get('RGen_menu_item3') != '') { ?>
	<li>
		<a <?php if($this->config->get('RGen_menu_item3_url') != '') { ?>href="<?php echo $this->config->get('RGen_menu_item3_url'); ?>"<?php } ?> title="<?php echo $this->config->get('RGen_menu_item3'); ?>" class="top-lvl"><?php echo $this->config->get('RGen_menu_item3'); ?></a>
	</li>
	
	<?php }if ($this->config->get('RGen_menu_item4') != '') { ?>
	<li>
		<a <?php if($this->config->get('RGen_menu_item4_url') != '') { ?>href="<?php echo $this->config->get('RGen_menu_item4_url'); ?>"<?php } ?> title="<?php echo $this->config->get('RGen_menu_item4'); ?>" class="top-lvl"><?php echo $this->config->get('RGen_menu_item4'); ?></a>
	</li>
	
	<?php }if ($this->config->get('RGen_menu_item5') != '') { ?>
	<li>
		<a <?php if($this->config->get('RGen_menu_item5_url') != '') { ?>href="<?php echo $this->config->get('RGen_menu_item5_url'); ?>"<?php } ?> title="<?php echo $this->config->get('RGen_menu_item5'); ?>" class="top-lvl"><?php echo $this->config->get('RGen_menu_item5'); ?></a>
	</li>
	<?php } ?>
<?php } ?>