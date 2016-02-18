<?php
	define("TEMPLATE_PATH", get_bloginfo("stylesheet_directory"));
	define("IMAGES", TEMPLATE_PATH."/images");
	define("JAVASCRIPT", TEMPLATE_PATH."/js");
	define("CSS", TEMPLATE_PATH."/css");

	//Defining all nav options
	function nav_menu_items() {
		$options = [
			"about",
			"projects",
			"publications",
			"media",
			"tools",
			"blog"
		];

		return $options;
	}

	//Returns the nav options that do not have a defined icon
	function without_icon() {
		$options = [
			"about",
			"media",
			"tools"
		];

		return $options;
	}

	//Returns the pages that do not have a side bar
	function without_sidebar() {
		$options = [
			"projects",
			"publications"			
		];

		return $options;
	}

	add_theme_support("nav-menus");
	if (function_exists("register_nav_menus")){
		register_nav_menus(
			array(
				"main"=>"Main Navigation Menu"
			)
		);
	}

	// Registering new widget area
	function primary_widgets_init() {
	    register_sidebar( array(
	        "name" 			=> __("Primary Sidebar", "primary-sidebar"),
	        "id" 			=> "primary-widget-area",
	        "description"	=> __("The primary widget area", "dir"),
	        "before_widget" => "<div class='custom-widget'>",
	        "after_widget" 	=> "</div>",
	        "before_title" 	=> "<h2 class='widget-title'>",
	        "after_title" 	=> "</h2>",
	    ) );
	}

	// Registering twitter widget area
	function twitter_widget_init() {
	    register_sidebar( array(
	        "name" 			=> __("Twitter Area", "twitter-area"),
	        "id" 			=> "twitter-widget-area",
	        "description"	=> __("The twitter widget area", "dir"),
	        "before_widget" => "<div class='twitter-widget'>",
	        "after_widget" 	=> "</div>",
	        "before_title" 	=> "<h2 class='twitter-title no-display'>",
	        "after_title" 	=> "</h2>",
	    ) );
	}

	// Initializing functions
	if (function_exists("register_sidebar")){
		add_action( 'widgets_init', 'primary_widgets_init' );
		add_action( 'widgets_init', 'twitter_widget_init' );
	}

	
	$defaults = array(
		'default-image'=> ''
	);
	add_theme_support("custom-header", $defaults);


	add_theme_support("post-thumbnails");


	function string_limit_words($string, $word_limit) {
		$words = explode(' ', $string, ($word_limit + 1));
		if(count($words) > $word_limit)
			array_pop($words);
		
		return implode(' ', $words);
	} 

	function string_limit_letters($string, $word_limit) {
		$output = substr($string, 0, $word_limit);
		if (strlen($string) > strlen($output))
			$output .= "...";

		return $output;
	}

	function pretty_url($string) {
		return preg_replace('#^https?://#', '', $string);
	}

	add_image_size( "custom-thumbnail", 0, 110, true );
?>