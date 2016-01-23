<?php
//
// Recommended way to include parent theme styles.
//  (Please see http://codex.wordpress.org/Child_Themes#How_to_Create_a_Child_Theme)
//  
add_action( 'wp_enqueue_scripts', 'theme_enqueue_styles' );
function theme_enqueue_styles() {
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );
    wp_enqueue_style( 'child-style',
        get_stylesheet_directory_uri() . '/style.css',
        array('parent-style')
    );
}
//
// Your code goes below
//<?php

function popper_child_setup() {
    // Prepare theme for translation
    load_child_theme_textdomain( 'popper-child', get_stylesheet_directory() . '/languages' );

    // This theme uses wp_nav_menu() in one location.
	register_nav_menus( array(
		'secondary' => esc_html__( 'Footer Menu', 'popper-child' ),
	) );

    /**
     * Register widget area.
     *
     * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
     */
    function popper_child_widgets_init() {
    	register_sidebar( array(
    		'name'          => esc_html__( 'Footer Widgets', 'popper-child' ),
    		'id'            => 'sidebar-2',
    		'description'   => '',
    		'before_widget' => '<aside id="%1$s" class="widget %2$s">',
    		'after_widget'  => '</aside>',
    		'before_title'  => '<h2 class="widget-title">',
    		'after_title'   => '</h2>',
    	) );
    }
    add_action( 'widgets_init', 'popper_child_widgets_init' );
}
add_action( 'after_setup_theme', 'popper_child_setup');

function popper_child_scripts() {
    wp_enqueue_style( 'popper-child-fonts', 'https://fonts.googleapis.com/css?family=Anonymous+Pro:400,400italic,700,700italic|Alegreya+Sans+SC:500italic,800,800italic,500' );
    wp_dequeue_style( 'popper-fira-sans' );
    wp_dequeue_style( 'popper-merriweather' );
}
add_action( 'wp_enqueue_scripts', 'popper_child_scripts', 11);

/**
 * Prints HTML with meta information for the current post-date/time and author.
 */
function popper_posted_on() {

	$author_id = get_the_author_meta( 'ID' );

	$time_string = '<time class="entry-date published updated" datetime="%1$s">%2$s</time>';
	if ( get_the_time( 'U' ) !== get_the_modified_time( 'U' ) ) {
		$time_string = '<time class="entry-date published" datetime="%1$s">%2$s</time><time class="updated" datetime="%3$s">%4$s</time>';
	}

	$time_string = sprintf( $time_string,
		esc_attr( get_the_date( 'c' ) ),
		esc_html( get_the_date() ),
		esc_attr( get_the_modified_date( 'c' ) ),
		esc_html( get_the_modified_date() )
	);

	$posted_on = sprintf(
		esc_html_x( ' on %s', 'post date', 'popper-child' ),
		'<a href="' . esc_url( get_permalink() ) . '" rel="bookmark">' . $time_string . '</a>'
	);

	$byline = sprintf(
		esc_html_x( 'by %s', 'post author', 'popper-child' ),
		'<span class="author vcard"><a class="url fn n" href="' . esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ) . '">' . esc_html( get_the_author() ) . '</a></span>'
	);

	// Display author avatar if author has a Gravatar
	if ( validate_gravatar( $author_id ) ) {
		echo '<div class="meta-content has-avatar">';
		echo '<div class="author-avatar">' . get_avatar( $author_id ) . '</div>';
	} else {
		echo '<div class="meta-content">';
	}

	echo '<span class="byline">' . $byline . ' </span><span class="posted-on">' . $posted_on . ' </span>'; // WPCS: XSS OK.
    $categories_list = get_the_category_list( esc_html__( ', ', 'popper-child' ) );
    if ( $categories_list && popper_categorized_blog() ) {
        printf( '<span class="cat-links">' . esc_html__( 'Posted in %1$s', 'popper-child' ) . '</span>', $categories_list ); // WPCS: XSS OK.
    }
	if ( ! post_password_required() && ( comments_open() || get_comments_number() ) ) {
		echo '<span class="comments-link">';
		comments_popup_link( esc_html__( 'Leave a comment', 'popper-child' ), esc_html__( '1 Comment', 'popper-child' ), esc_html__( '% Comments', 'popper-child' ) );
		echo '</span>';
	}
	echo '</div><!-- .meta-content -->';

}


/**
 * Prints HTML with meta information for post-date/time and author on index pages.
 */
function popper_index_posted_on() {

	$author_id = get_the_author_meta( 'ID' );

	$time_string = '<time class="entry-date published updated" datetime="%1$s">%2$s</time>';
	if ( get_the_time( 'U' ) !== get_the_modified_time( 'U' ) ) {
		$time_string = '<time class="entry-date published" datetime="%1$s">%2$s</time><time class="updated" datetime="%3$s">%4$s</time>';
	}

	$time_string = sprintf( $time_string,
		esc_attr( get_the_date( 'c' ) ),
		esc_html( get_the_date() ),
		esc_attr( get_the_modified_date( 'c' ) ),
		esc_html( get_the_modified_date() )
	);

	$posted_on = sprintf(
		esc_html_x( 'Published %s', 'post date', 'popper' ),
		'<a href="' . esc_url( get_permalink() ) . '" rel="bookmark">' . $time_string . '</a>'
	);

	$byline = sprintf(
		esc_html_x( 'by %s', 'post author', 'popper' ),
		'<span class="author vcard"><a class="url fn n" href="' . esc_url( get_author_posts_url( get_the_author_meta( 'ID' ) ) ) . '">' . esc_html( get_the_author() ) . '</a></span>'
	);

	echo '<div class="meta-content">';
	echo '<span class="byline">' . $byline . ' </span><span class="posted-on">' . $posted_on . ' </span>'; // WPCS: XSS OK.
    $categories_list = get_the_category_list( esc_html__( ', ', 'popper-child' ) );
    if ( $categories_list && popper_categorized_blog() ) {
        printf( '<span class="cat-links">' . esc_html__( 'Posted in %1$s', 'popper-child' ) . '</span>', $categories_list ); // WPCS: XSS OK.
    }
	if ( ! post_password_required() && ( comments_open() || get_comments_number() ) ) {
		echo '<span class="comments-link">';
		comments_popup_link( esc_html__( 'Leave a comment', 'popper' ), esc_html__( '1 Comment', 'popper' ), esc_html__( '% Comments', 'popper' ) );
		echo '</span>';
	}
	echo '</div><!-- .meta-content -->';

}
