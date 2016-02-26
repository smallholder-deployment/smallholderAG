	<footer>
		<div class="content footer-container">
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
				"heightStyle": "content"
			});
		});
	</script>

	<script type="text/javascript">
		$(function() {
			var browser = window.navigator.userAgent;
			if (browser.indexOf("Edge/") > 0) {
				$(".textwidget").each(function() {
					$(this).addClass("margin-edge");
				});
			} else if (!(browser.indexOf("WebKit/") > 0)) {
				$(".textwidget").each(function() {
					$(this).addClass("margin-browsers");
				});
			}
		});
	</script>

	<?php wp_footer(); ?>
</body>
</html>