<?php
/*
Template Name: Publications Page
*/
	get_header(); 

	$id_cat = get_cat_ID("Publications"); //Category's ID
	$cat_args = array(
      "orderby" 	=> "id",
      "hide_empty"=> 0,
      "child_of" 	=> $id_cat //Child of Publications Category 
  );
  $categories = get_categories($cat_args);
?>

<section class="main">
	<div class="content">
		<div id="accordion" class="accordion">

	<?php
		foreach ($categories as $cat) {
	?>
			<h3><?php echo $cat->name; ?></h3>
			<div class="three-cols publications">
		<?php
			$post_args = array(
				"orderby"	=> "date",
				"category"	=> $cat->cat_ID
			);
			$posts = get_posts($post_args);

			foreach ($posts as $post) {
		?>
					<article>
						<hgroup>
							<div class="three-cols-title">
								<a href="<?php the_permalink();?>">
									<?php echo string_limit_letters($post->post_title, 50); ?>
								</a>
							</div>
					<?php
						if (has_post_thumbnail()) {
					?>
							<div class="center-content">
								<?php the_post_thumbnail("custom-thumbnail"); ?>
							</div>
					<?php
						}
					?>
							<p>
								<?php 
									$excerpt = string_limit_letters(wp_strip_all_tags($post->post_content),280);
									echo $excerpt;
								?>
							</p>
							<div class="read-more">
								<a href="<?php the_permalink();?>">
									read more >
								</a>	
							</div>
						</hgroup>
					</article>
		<?php
			}
		?>
			</div>
	<?php
		}
	?>
		</div>
	</div>
</section>

<?php get_footer(); ?>