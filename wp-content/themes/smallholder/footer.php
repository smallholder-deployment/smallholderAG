	<footer>
		<div class="content">
			<img src="<?php echo IMAGES.'/sponsors.svg'; ?>" alt="sponsors">
		</div>
		
		<!--Bottom Green Line-->
		<hr class="green-line">
	</footer>
	
	<script type="text/javascript" src="<?php echo JAVASCRIPT.'/jquery.min.js'; ?>"></script>
	<script type="text/javascript" src="<?php echo JAVASCRIPT.'/jquery-ui.min.js'; ?>"></script>
	
	<!-- Accordion on publications' page -->
	<script type="text/javascript">
		$(function() {
			$( "#accordion" ).accordion({
				"collapsible": true,
				"active": false,
				heightStyle: "content"
			});
		});
	</script>

	<?php wp_footer(); ?>
</body>
</hmtl>