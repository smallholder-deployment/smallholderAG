<?php 
	get_header(); 
?>	
	<section class="main">
		<div class="content <?php echo (!is_front_page()) ? 'content-post' : '' ?>">
			<section class="<?php echo (is_front_page()) ? 'latest-news' : '' ?>">
<?php
	if (have_posts() && !is_front_page()) {

		while (have_posts()) { 
			the_post();
?>
				<article class="width-100 margin-bottom">
					<hgroup class="width-100">
						<h1 class="title-label">
							<a href="<?php the_permalink();?>"><?php the_title();?></a>
						</h1>
						<div class="date-box">
							<p class="author-name">
								<?php the_author(); ?>
							</p>
							<p>
								<?php the_time("F dS Y"); ?>
							</p>
						</div>
				<?php
					if ( has_post_thumbnail() ) {
				?>
						<div class="archive-thumbnail center-content">
							<img src="<?php the_post_thumbnail_url(); ?>" alt="thumbnail">
						</div>
				<?php
					}
				?>
						<div class="width-100">
							<?php the_content(); ?>
						</div>
					</hgroup>
				</article>
<?php
		}
?>
			</section>
			<?php get_sidebar(); ?>
		</div>
<?php

	/**
	*
	* Home page's logic
	*
	*/
	} else if (have_posts()) {

		$post_count = 0;
		
		$args = array(
			'posts_per_page' => 4,
			'category_name'  => 'News',
			'orderby'        => 'date',
			'order'          => 'DESC',
			'post_type'      => 'post',
			'post_status'    => 'publish'
		);
		$posts = get_posts($args);

		foreach ($posts as $post) {
			if ($post_count == 0) {
				the_post();
?>	
				<article class="first-post">
			<?php
				if (has_post_thumbnail()) {
			?>
					<div class="margin-thumbnail center-image">
						<h1 class="no-margin-top small-control">
							<a href="<?php the_permalink();?>"><?php the_title();?></a>
						</h1>
						<p class="date-box small-control">
							<?php the_time("F dS Y"); ?>
						</p>
						<img src="<?php the_post_thumbnail_url(); ?>" alt="thumbnail" class="post-thumbnail">
					</div>
			<?php
				}
			?>
					<hgroup class="<?php echo (!has_post_thumbnail()) ? 'width-100' : ''; ?>">
						<h1 class="no-margin-top <?php echo (has_post_thumbnail()) ? 'large-control' : ''; ?>">
							<a href="<?php the_permalink();?>"><?php the_title();?></a>
						</h1>
						<p class="date-box <?php echo (has_post_thumbnail()) ? 'large-control' : ''; ?>">
							<?php the_time("F dS Y"); ?>
						</p>
						<?php 
							$excerpt = string_limit_words(wp_strip_all_tags(get_the_content()),100);
						?>
						<p>
							<?php echo $excerpt; ?>
							<a href="<?php the_permalink();?>" class="continue-reading">
								[...]
							</a>
						</p>
					</hgroup>
				</article>
<?php
				$post_count++;
			}
		}
?>
			</section>
		</div>
		
		<!--Header Info Bar-->
		<div class="container container-mark margins">
			<div class="content">
				<div class="container-title">
					<div>
						<img src="<?php echo IMAGES.'/more_news.svg'; ?>" alt="More News">
						<p>MORE NEWS</p>	
					</div>
					<div class="large-control">
						<img src="<?php echo IMAGES.'/twitter_feed.svg'; ?>" alt="Twitter Feed">
						<p>TWITTER</p>
					</div>
				</div>
			</div>
		</div>

		<div class="content flex-row">
			<div class="more-news">
				<section class="width-100">
	<?php

		$post_count = 0;
		
		foreach ($posts as $post) {
			if ($post_count > 0) {
				the_post();
	?>
				
					<article class="first-post second-post">
				<?php
					if (has_post_thumbnail()) {
				?>
						<div>
							<div class="width-100 small-control-480">
								<?php the_post_thumbnail(); ?>
							</div>
							<div class="width-100 large-control-480">
								<?php the_post_thumbnail("thumbnail"); ?>
							</div>
						</div>
				<?php
					}
				?>

						<hgroup class="<?php echo (!has_post_thumbnail()) ? 'width-100' : ''; ?>">
							<h1>
								<a href="<?php the_permalink();?>"><?php the_title();?></a>
							</h1>
							<p class="date-box">
								<?php the_time("F dS Y"); ?>
							</p>
							<?php 
								$excerpt = string_limit_words(get_the_excerpt(),20);
							?>
							<p>
								<?php echo $excerpt; ?>
								<a href="<?php the_permalink();?>" class="continue-reading">
									[...]
								</a>
							</p>
						</hgroup>
					</article>
	<?php
			}

			$post_count++;
		}
	?>
				</section>
			</div>
			<div class="twitter large-control">
				<?php dynamic_sidebar("Twitter Area"); ?>
			</div>
		</div> <!--End of Header Info Bar-->

		<!--Twitter section in mobile devices-->
		<div class="container container-mark margins small-control">
			<div class="content">
				<div class="container-title">
					<div class="large-small">
						<img src="<?php echo IMAGES.'/twitter_feed.svg'; ?>" alt="Twitter Feed">
						<p>TWITTER</p>
					</div>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="twitter small-control">
				<?php dynamic_sidebar("Twitter Area"); ?>
			</div>
		</div> <!--End of twitter in mobile devices-->


		<!--Contributors-->
		<div class="container container-mark margins">
			<div class="content">
				<div class="container-title">
					<img src="<?php echo IMAGES.'/contributors.svg'; ?>" alt="Contributors">
					<p>CONTRIBUTORS</p>
				</div>
			</div>
		</div>

		<div class="content">
			<div class="contributors-container">
		<?php
			 $args = array(
				'role'         => 'editor',
				'orderby'      => 'login',
				'order'        => 'ASC',
				'number'       => ''
				); 
			$users = get_users($args);	

			foreach ($users as $user) {
				$user_data = get_userdata($user->ID);
		?>
				<div class="contributor-box">
		<?php
					echo get_avatar($user->ID);
		?>		
					<hgroup>
						<a href="<?php echo get_author_posts_url($user->ID); ?>" class="orange bold">
							<?php echo $user->first_name." ".$user->last_name; ?>
						</a>
						<p>
							<a href="<?php echo $user_data->user_url; ?>" target="_blank">
								<?php echo pretty_url($user_data->user_url); ?>
							</a>
						</p>
						<p>
							<a href="mailto:<?php echo $user_data->user_email; ?>">
								<?php echo $user_data->user_email; ?>
							</a>
						</p>
					</hgroup>
				</div>
		<?php
			}
		?>
			</div>
		</div> <!--End of contributos-->
		
<?php
	} else { //No data found
?>
			</section>
		</div>	
<?php
	}
?>	
	</section> <!--End of Main section-->
<?php get_footer(); ?>