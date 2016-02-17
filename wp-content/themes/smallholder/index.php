<?php 
	get_header(); 

	//$post = get_posts();

	$current_page = strtolower(get_the_title());

	if (in_array($current_page, without_sidebar())) {
		$side_bar = false;
	} else {
		$side_bar = true;
	}
?>	
	<section class="main">
		<div class="content <?php echo (!is_front_page()) ? 'content-post' : '' ?>">
			<section class="<?php echo (is_front_page() || !$side_bar) ? 'latest-news' : '' ?>">
<?php
	if (have_posts() && !is_front_page()) {

		while (have_posts()) { 
			the_post();

			if ( !in_array(strtolower( get_the_title()), nav_menu_items()) ) {
?>
				<article class="width-100">
					<hgroup class="width-100">
						<h1>
							<a href="<?php the_permalink();?>"><?php the_title();?></a>
						</h1>
						<div class="date">
							<p class="author">
								<?php the_author(); ?>
							</p>
							<p>
								<?php the_time("F dS Y"); ?>
							</p>
						</div>
						<div class="width-100">
							<?php the_content(); ?>
						</div>
					</hgroup>
				</article>
<?php
			} else {
				the_content();
			}
		}
?>
			</section>
<?php 
		if ($side_bar) {
			get_sidebar();
		}
?>
		</div>
<?php

	/**
	*
	* Main page's logic
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
					<div>
					
						<img src="<?php the_post_thumbnail_url(); ?>" alt="thumbnail" class="post-thumbnail">
					</div>
			<?php
				}
			?>
					<hgroup class="<?php echo (!has_post_thumbnail()) ? 'width-100' : ''; ?>">
						<h1 class="no-margin-top">
							<a href="<?php the_permalink();?>"><?php the_title();?></a>
						</h1>
						<p class="date">
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
		<div class="container container-mark margin-top">
			<div class="content">
				<div class="container-title">
					<div>
						<img src="<?php echo IMAGES.'/more_news.svg'; ?>" alt="More News">
						<p>MORE NEWS</p>	
					</div>
					<div>
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
							<!-- <img src="<?php the_post_thumbnail_url('thumbnail'); ?>" alt="thumbnail" class="post-thumbnail"> -->
							<?php the_post_thumbnail('thumbnail'); ?>
						</div>
				<?php
					}
				?>

						<hgroup class="<?php echo (!has_post_thumbnail()) ? 'width-100' : ''; ?>">
							<h1>
								<a href="<?php the_permalink();?>"><?php the_title();?></a>
							</h1>
							<p class="date">
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
			<div class="twitter">
				<?php dynamic_sidebar("Twitter Area"); ?>
			</div>
		</div> <!--End of Header Info Bar-->

		<!--Contributors-->
		<div class="container container-mark margin-top">
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
				'role'         => 'contributor',
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
				//echo $user->first_name." ".$user->last_name;
					echo get_avatar($user->ID);
		?>		
					<hgroup>
						<p class="orange bold">
							<?php echo $user->first_name." ".$user->last_name; ?>
						</p>
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
	}
?>	
	</section> <!--End of Main section-->
<?php get_footer(); ?>