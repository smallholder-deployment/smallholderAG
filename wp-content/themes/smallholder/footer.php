<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package popper
 */

?>

	</div><!-- #content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		<?php
		if ( is_active_sidebar( 'sidebar-1' ) ) { ?>
			<div id="tertiary" class="widget-area clear" role="complementary">
				<?php dynamic_sidebar( 'sidebar-2' ); ?>
			</div><!-- #secondary -->
		<?php }
		?>	

        <?php if ( has_nav_menu( 'secondary' ) ) : ?>
			<nav id="footer-navigation" class="footer-navigation clear" role="navigation">

				<div class="the-footer-menu centered">
					<?php
                    wp_nav_menu(
                        array(
                            'theme_location' => 'secondary',
                            'menu_id' => 'secondary-menu',
                            'depth' => 1
                        )
                    );
                    ?>
				</div>

			</nav><!-- #site-navigation -->
		<?php endif; ?>

		<div class="site-info">
			<a href="<?php echo esc_url( __( 'https://wordpress.org/', 'popper' ) ); ?>"><?php printf( esc_html__( 'Proudly powered by %s', 'popper' ), 'WordPress' ); ?></a>
			<span class="sep"> | </span>
			<?php printf( esc_html__( 'Theme: %1$s by %2$s.', 'popper' ), 'popper', '<a href="http://mor10.com" rel="designer nofollow">Morten Rand-Hendriksen</a>' ); ?>
		</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
