<?php  
/* 
 *  Template Name: 留言板 
 */
 ?>	
<?php get_header(); ?>
	<div id="primary" class="site-content">
		<div id="content" role="main" class="border-page-2 border-page-1">
			<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
		<header class="entry-header">
			<h1 class="entry-title">
				 可以在这里给我留言.
			</h1>
			<div class="meta-top1">
				<div class="meta-top2">
			</div>
			</div>
		</header>
			<div class="post-thumbnail">
			<a href="<?php echo get_permalink(); ?>" title="<?php the_title(); ?>"><?php if (  ! post_password_required() && ! is_attachment() && !is_single() ) :
				the_post_thumbnail();
			endif; ?></a>
			</div>
	

	</article>
		</div>
	<?php if (comments_open()) comments_template( '', true ); ?>
	</div>
<?php get_sidebar(); ?>
<?php get_footer(); ?>