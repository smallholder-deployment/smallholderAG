<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php bloginfo("name");?> <?php wp_title();?></title>
	<link rel="stylesheet" type="text/css" href="<?php echo CSS.'/normalize.css'; ?>">
	<link rel="stylesheet" type="text/css" href="<?php bloginfo('stylesheet_url'); ?>">
	<link rel="pingback" href="<?php bloginfo('pingback_url');?>">
	<?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
	<header>
		<?php
			if (is_front_page() && get_header_image() != null) {
		?>
		<div class="content">
			<div class="logo">
				<img src="<?php header_image(); ?>">
				<a href="<?php bloginfo("url");?>">
					<?php bloginfo("name");?>
				</a>
			</div>
		</div>
		<?php
			} else {
		?>
		
		<!--Top Green Line-->
		<hr class="green-line">

		<?php				
			}
		?>
	
<?php
	//It's used in the description line by line splits by "-"
	$description = explode("-", get_bloginfo("description"));
	$cont = 0;

	if (!is_front_page() || get_header_image() == null) {
?>

		<div class="container">
			<div class="content map">
				<div class="info">
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
						<div>
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
		<div class="container">
			<div class="content">
				<nav>
					<?php 
						wp_nav_menu(array(
							"menu"=>"Main",
							"menu_class"=>"menu-nav",
							"container_class"=>"menu-nav"
						));
					?>
					<div class="social">
						<a href="#" target="_blank">
							<img src="<?php echo IMAGES.'/twitter.svg'; ?>" alt="twitter">
						</a>
						<a href="#" target="_blank">
							<img src="<?php echo IMAGES.'/facebook.svg'; ?>" alt="facebook">
						</a>
						<a href="#" target="_blank">
							<img src="<?php echo IMAGES.'/instagram.svg'; ?>" alt="instagram">
						</a>
					</div>
				</nav>
			</div>
		</div>

<?php
	if (is_front_page() && get_header_image() != null) {
?>

		<div class="container">
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

					$title = get_the_title();
					$image = "";

					if (!in_array(strtolower($title), without_icon())) {

						switch ( strtolower($title) ) {
							case "projects":
								$image 	= IMAGES."/projects.svg";
								$alt 		= "Projects";
								break;
							case "publications";
								$image 	= IMAGES."/publications.svg";
								$alt		= "Publications";
								break;
							default:
								$image 	= IMAGES."/contributors.svg";
								$alt		= "Blog";
								$title 	= "Blog";
								break;
						}
					}
					
					//Validation of categories
					$category = get_the_category();
					if (count($category) > 0) {
						if ($category[0]->cat_name == "Projects") {
							$image 	= IMAGES."/publications.svg";
							$alt		= "Publications";
							$title 	= "Projects";
						}
					}
			
					if ($image != "") {
			?>
					<img src="<?php echo $image; ?>" alt="<?php echo $alt; ?>">
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