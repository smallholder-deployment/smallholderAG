	<footer>
		<div class="content footer-container">
			<img src="<?php echo IMAGES.'/sponsors.svg'; ?>" alt="sponsors">
		</div>
		
		<!--Bottom Green Line-->
		<hr class="green-line">
		<div class="theme-by">
			<a href="http://www.bkdf.nyc" target="_blank">Theme by www.bkdf.nyc</a>
		</div>
	</footer>
	
	<script type="text/javascript" src="<?php echo JAVASCRIPT.'/jquery.min.js'; ?>"></script>
	<script type="text/javascript" src="<?php echo JAVASCRIPT.'/jquery-ui.min.js'; ?>"></script>

	<script type="text/javascript">
		function initEvents() {
			// Accordion on publications' page
			$( "#accordion" ).accordion({
				"collapsible": true,
				"active": 0,
				"heightStyle": "content"
			});

			var browser = window.navigator.userAgent;
			if (browser.indexOf("Edge/") > 0) {
				$(".textwidget").each(function() {
					$(this).addClass("margin-edge");
				});
			}
			else if (!(browser.indexOf("WebKit/") > 0)) {
				$(".textwidget").each(function() {
					$(this).addClass("margin-browsers");
				});
			}
		}

		$(function() {
			initEvents();
		});
	</script>

	<?php wp_footer(); ?>
</body>
</html>