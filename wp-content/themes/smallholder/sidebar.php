<aside>
<?php
	if (function_exists("dynamic_sidebar")
		|| !dynamic_sidebar("Primary Sidebar")) {
?>
		<!-- <div class="widget">
			<h3>Search</h3>
			<?php get_search_form(); ?>
		</div> -->
<?php
		dynamic_sidebar("Primary Sidebar");
	}
?>	
</aside>