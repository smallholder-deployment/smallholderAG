<?php
/*
Template Name: Publications Page
*/
	get_header(); 

	$parent_cat = "";

	if (function_exists("get_field")) {
		$parent_cat = get_field("parent-category");

		$id_cat = get_cat_ID($parent_cat); //Category's ID
		$cat_args = array(
			"orderby" 	=> "id",
	      "hide_empty"=> 0,
	      "child_of" 	=> $id_cat //Child of Publications Category 
	  	);
	  	$categories = get_categories($cat_args);
	}
?>

<section class="main">
<?php
	if ($parent_cat != "") {
?>
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
					<article class="bg-color publications-box">
						<hgroup>
							<div class="publications-title">
								<a href="<?php the_permalink();?>">
									<?php echo string_limit_letters($post->post_title, 50); ?>
								</a>
							</div>
							<div class="publications-content">
					<?php
						if (has_post_thumbnail()) {
					?>
								<div>
									<a href="<?php the_permalink();?>">
										<?php the_post_thumbnail("custom-thumbnail"); ?>
									</a>
								</div>
					<?php
						}
					?>
							<p>
								<a href="<?php the_permalink();?>">
									<?php 
										$excerpt = string_limit_letters(wp_strip_all_tags($post->post_content),100);
										echo $excerpt;
									?>
								</a>
							</p>
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
<?php
	}
?>
</section>

<?php get_footer(); ?>