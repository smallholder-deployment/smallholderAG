<?php
/*
Template Name: Sidebar right
*/
	get_header(); 
	the_post();
?>

<section class="main">
	<div class="content content-post">
		<section>
			<?php the_content(); ?>
		</section>
	<?php get_sidebar(); ?>
	</div>
</section>
<?php get_footer(); ?>
