<?php
/**
 * Template part for displaying Projects
 */

?>
<article id="post-<?php the_ID(); ?>" class="margin-bottom bg-color project-box">
	<hgroup>
		<div class="three-cols-title">
			<a href="<?php the_permalink();?>">
				<?php 
					echo string_limit_letters(get_the_title(), 50);
				?>
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
				$excerpt = string_limit_letters(wp_strip_all_tags(get_the_content()),280);
				echo $excerpt;
			?>
		</p>
	</hgroup>
	<div class="read-more project-web-site">
		<a href="<?php the_permalink();?>" class="padding-bottom-10">
			read more >
		</a>	
	</div>
<?php
	if ( function_exists('the_field') ) {
?>
	<div class="project-web-site">
		<a href="http://<?php the_field('project-web-site'); ?>" target="_blank" class="bold">
			<?php the_field("project-web-site"); ?>
		</a>
	</div>
<?php
	}
?>
</article>