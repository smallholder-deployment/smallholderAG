<?php
/*
Template Name: Sidebar left
*/
	get_header();
	the_post();
?>

<section class="main">
	<div class="content content-post">
		<?php get_sidebar(); ?>
		<section>
			<?php the_content(); ?>
		</section>
	</div>
</section>
<?php get_footer(); ?>
