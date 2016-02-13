<?php 
	get_header(); 

	$post = get_posts();
?>	
	<section class="main">
		<section>
<?php
	// foreach ($post as $post) {
	if (have_posts()) : while (have_posts()) : the_post();
?>
			<article>
				<hgroup>
					<h1>
						<a href="<?php the_permalink();?>"><?php the_title();?></a>
					</h1>
					<p class="date">
						<?php the_time("F dS Y"); ?>
					</p>
					<div>
						<?php the_content("Continue Reading >>>"); ?>
					</div>
				</hgroup>
			</article>
<?php
	// }
		endwhile;
	endif;
		// dynamic_sidebar("primary-widget-area");
?>	
		</section>
<?php get_sidebar(); ?>
	</section>
<?php get_footer(); ?>