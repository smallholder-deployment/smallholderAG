<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title><?php bloginfo("name");?> <?php wp_title();?></title>
	<link rel="stylesheet" type="text/css" href="<?php bloginfo('template_url'); ?>/css/normalize.css">
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

		<div class="container map">
			<div class="content">
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
						<h1>
							<a href="<?php bloginfo("url");?>">
								<?php bloginfo("name");?>
							</a>
						</h1>
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
						<img src="<?php echo IMAGES.'/twitter.png'?>" alt="twitter">
						<img src="<?php echo IMAGES.'/facebook.png'?>" alt="twitter">
						<img src="<?php echo IMAGES.'/instagram.png'?>" alt="instagram">
					</div>
				</nav>
			</div>
		</div>

<?php
	if (is_front_page() && get_header_image() != null) {
?>

		<div class="container map">
			<div class="content">
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

		<div class="container container-current-page">
			<div class="content">
				<div class="current-page">
					<h2>Blog</h2>
				</div>
			</div>
		</div>

	</header>