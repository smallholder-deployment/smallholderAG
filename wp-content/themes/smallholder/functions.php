<?php
	define("TEMPLATE_PATH", get_bloginfo("stylesheet_directory"));
	define("IMAGES", TEMPLATE_PATH."/images");

	add_theme_support("nav-menus");
	if (function_exists("register_nav_menus")){
		register_nav_menus(
			array(
				"main"=>"Main Navigation Menu"
			)
		);
	}

	if (function_exists("register_sidebar")){
		register_sidebar(
			array(
				"name"=>__("Primary Sidebar", "primary-sidebar"),
				"id"=>"primary-widget-area",
				"description"=>__("The primary widget area", "dir"),
				"before-widget"=>"<div class='widget'>",
				"after-widget"=>"</div>",
				"before_title"=>"<h3 class='widget-title'>",
				"after_title"=>"</h3>"
			)
		);
	}

	$defaults = array(
		'default-image'=> ''
	);
	add_theme_support("custom-header", $defaults);
?>