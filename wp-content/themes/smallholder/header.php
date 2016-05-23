<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title><?php bloginfo("name");?> <?php wp_title();?></title>
	<link rel="stylesheet" type="text/css" href="<?php echo CSS.'/normalize.css'; ?>">
	<link rel="stylesheet" type="text/css" href="<?php bloginfo('stylesheet_url'); ?>">
	<link rel="pingback" href="<?php bloginfo('pingback_url');?>">
	<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
	<header>
		<!--Top Green Line-->
		<hr class="green-line">
		
<?php
	if (is_front_page() && get_header_image() != null) {
?>
		<div class="content">
			<div class="logo" style="background-image: url(<?php header_image(); ?>); background-repeat: no-repeat; background-size: cover; background-position: center center;">
				<!-- <img src="<?php //header_image(); ?>"> -->
				<a href="<?php bloginfo("url");?>" class="large-control-480">
					<?php bloginfo("name");?>
				</a>
			</div>
			<div class="logo-title small-control-480">
				<a href="<?php bloginfo("url");?>">
					<?php bloginfo("name");?>
				</a>
			</div>
		</div>
<?php
	}

	//It's used in the description line by line splits by "-"
	$description = explode("-", get_bloginfo("description"));
	$cont = 0;

	if (!is_front_page() || get_header_image() == null) {
?>

		<div class="container no-border bg-color">
			<div class="content map">
				<div class="info info-i">
				<?php
					//Writes every line in the array and adds "-"
					foreach ($description as $value) {
				?>
						<p class="description-control">
							<?php 
								if ($cont > 0) {
									echo "-";
								}
								echo $value; 
								$cont++;
							?>
						</p>
				<?php
					}
				?>
						<div class="title-page">
							<a href="<?php bloginfo("url");?>">
								<?php bloginfo("name");?>
							</a>
						</div>
				</div>
			</div>
		</div>
<?php
	}
?>
		<div class="container <?php echo (!is_front_page() ||
													 get_header_image() == null) ? 'bg-color' : '' ;?>">
			<div class="content">
				<nav>
					<?php 
						$clases = "menu-nav";

						if (!is_front_page() || get_header_image() == null) {
							$clases .= " internal-nav";

							$tw_img = "fb";
							$fb_img = "twt";
							$ig_img = "ig";
						} else {
							$tw_img = "twitter";
							$fb_img = "facebook";
							$ig_img = "instagram";
						}

						wp_nav_menu(array(
							"menu"				=> "Main",
							"menu_class"		=> $clases,
							"container_class"	=> "menu-nav"
						));
					?>
					<div class="social">
						<a href="#" target="_blank">
							<img src="<?php echo IMAGES.'/'.$tw_img.'.svg'; ?>" alt="twitter">
						</a>
						<a href="#" target="_blank">
							<img src="<?php echo IMAGES.'/'.$fb_img.'.svg'; ?>" alt="facebook">
						</a>
						<a href="#" target="_blank">
							<img src="<?php echo IMAGES.'/'.$ig_img.'.svg'; ?>" alt="instagram">
						</a>
					</div>
				</nav>
			</div>
		</div>

<?php
	if (is_front_page() && get_header_image() != null) {
?>

		<div class="container bg-color">
			<div class="content map">
				<div class="info text-center">
			<?php
				//Writes every line in the array and adds "-"
				foreach ($description as $value) {
			?>
					<p>
						<?php 
							if ($cont > 0) {
								echo "-";
							}
							echo $value; 
							$cont++;
						?>
					</p>
			<?php
				}
			?>
				</div>
		<?php

			//Custom button in home page
			if (function_exists("get_custom")) {

				$btn_label = get_custom("home_button_label");
				$btn_link  = get_custom("home_button_link");

				if ($btn_label && $btn_link) {
		?>
					<div class="custom-btn">
						<a href="<?php echo $btn_link;?>"><?php echo $btn_label;?></a>
					</div>
		<?php	
				}
			}
		?>
			</div>
		</div>
<?php
	}
?>

		<div class="container container-mark">
			<div class="content">
				<div class="container-title">
			<?php
				if (is_front_page()) {
			?>
					<img src="<?php echo IMAGES.'/latest_news.svg'; ?>" alt="Latest News">
					<p>LATEST NEWS</p>
			<?php
				} else {
					
					if ( function_exists('get_field') ) {
						$title = get_field("page-title");
						$image = get_field("page-icon");	
					} else {
						$title = '';
						$image = '';
					}

					//Get author name as title
					if ($title == "") {
						$image = IMAGES."/contributors.svg";
						$author = get_userdata(get_query_var("author"));
						if ($author != null) {
							$title = $author->first_name ." ". $author->last_name;
						}
					}

					//Get category name as title
					if ($title == "") {
						$category = get_category_by_slug(get_query_var("category_name"));
						if ($category != null) {
							$title = $category->cat_name;
						}
					}

					//Get tag as title
					if ($title == "") {
						$title = get_query_var("tag");
					}

					//Get date as title
					if ($title == "") {
						
						$date = get_query_var("year");

						if ($date != "") {
							//Concatenating month if exists
							if (get_query_var("monthnum") != "") {
								$date .= "-" . get_query_var("monthnum");
								
								$title = date("F Y", strtotime($date));
							} else {
								$title = date("Y", strtotime($date));
							}
						}
					}

					//Default Blog as title
					if ($title == "") {
						$title = "Blog";
					}

					if ($image != "") {
			?>
					<img src="<?php echo $image; ?>" alt="icon">
			<?php
					}
			?>
					<p><?php echo $title; ?></p>
			<?php
				}
			?>
				</div>
			</div>
		</div>

	</header>