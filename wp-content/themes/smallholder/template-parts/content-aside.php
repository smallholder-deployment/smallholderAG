<?php
/**
 * Template part for displaying Aside posts on index pages
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

    <div class="entry-content">
        <?php the_content(); ?>
    </div>

    <footer class="entry-footer">
        <div class="index-entry-meta">
            <?php popper_index_posted_on(); ?>
        </div>
    </footer><!-- .entry-footer -->

</article><!-- #post-## -->
