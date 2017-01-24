<?php

if ( ! function_exists("author_profile")) {

	function author_profile($author) {
?>
		<article class="margin-bottom width-100">
			<div class="author-profile">
				<div class="profile-avatar">
					<?php echo get_avatar($author->ID, 400); ?>
				</div>
				<div class="description">
					<div class="bio">
						<?php echo esc_html(the_author_meta("description", $author->ID)); ?>
					</div>
					<div class="email">
						<a class="orange" href="mailto:<?php echo $author->user_email; ?>">
							<?php echo $author->user_email; ?>
						</a>
					</div>
				</div>
			</div>
		</article>
<?php
	}

}
