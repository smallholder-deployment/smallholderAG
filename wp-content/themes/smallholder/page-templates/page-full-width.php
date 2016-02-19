<?php
/*
Template Name: Full Width
*/
	get_header();
	the_post();
?>

<section class="main">
	<div class="content">
		<section class="width-100 div-100">
			<?php the_content(); ?>
		</section>
	</div>
</section>

<?php get_footer(); ?>