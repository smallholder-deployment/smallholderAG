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


		<div class="site-info">
			<a href="<?php echo esc_url( __( '#', '144' ) ); ?>"><?php printf( esc_html__( '#', '144' ), '#' ); ?></a>
			<span class="sep"> | </span>
			<?php printf( esc_html__( '#', 'popper' ), '233', '<a href="#" rel="designer nofollow">////a>' ); ?>
		</div><!-- .site-info -->
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
