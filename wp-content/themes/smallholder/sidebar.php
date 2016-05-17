<aside>
<?php
	if (function_exists("dynamic_sidebar")
		|| !dynamic_sidebar("Primary Sidebar")) {

		dynamic_sidebar("Primary Sidebar");
	}
?>	
</aside>