<?php
/**
 * Template part for displaying Aside posts on index pages
 */

?>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?> >
	<hgroup>
		<div class="projects-title">
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
		<div class="read-more">
			<a href="<?php the_permalink();?>">
				read more >
			</a>	
		</div>
	</hgroup>
</article>