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

	// Initializing function named as "sample_widgets_init"
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
?>