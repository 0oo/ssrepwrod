<?phpif (is_home() || is_category()) {    $description = '这里填写你的博客首页的描述，最多220字符';    $keywords = '这里填写你的博客首页的关键词，用英文逗号分开';} else if (is_single()) {    if ($post->post_excerpt) {        $description = $post->post_excerpt;    } else {        $description = mb_strimwidth(        strip_tags(apply_filters('the_content',$post->post_content))       ,0,180);    }    $keywords = '';    $tags = wp_get_post_tags($post->ID);    foreach ($tags as $tag ) {        $keywords = $keywords . $tag->name . ',';    }} else if (is_page()) {	$keywords = get_post($id)->post_title;}?><!DOCTYPE html><html <?php language_attributes(); ?>><head><meta charset="<?php bloginfo( 'charset' ); ?>" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"><title><?php wp_title( '-', true, 'right' ); ?></title><link rel="profile" href="http://gmpg.org/xfn/11" /><link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" /><link rel="stylesheet" id="fontawesome-style-css" href="<?php bloginfo('template_directory'); ?>/font-awesome/css/font-awesome.min.css?ver=4.0.1" type='text/css' media='all' /><!--[if lt IE 9]><script src="<?php echo get_template_directory_uri(); ?>/js/html5.js" type="text/javascript"></script><![endif]--><?php wp_head(); ?><script src="<?php echo get_template_directory_uri(); ?>/js/jquery.min.js?ver=1.11.0" type="text/javascript"></script><script src="<?php echo get_template_directory_uri(); ?>/js/jquery.lazyload.min.js" type="text/javascript"></script><?php if(is_single()){?><link href="http://cdn.bootcss.com/highlight.js/9.12.0/styles/ocean.min.css" rel="stylesheet">  <script src="http://cdn.bootcss.com/highlight.js/9.12.0/highlight.min.js"></script><script >hljs.initHighlightingOnLoad();</script> <?php }?><script type="text/javascript">    $(function() {        $("#secondary img").lazyload({            effect:"fadeIn"          });        });    $(function() {        $("img").lazyload({            effect:"fadeIn"          });        });</script><meta name="keywords" content="<?php echo $keywords; ?>" /><meta name="description" content="<?php echo $description; ?>" /></head><body <?php body_class(); ?>>	<header id="masthead" class="site-header" role="banner">	<nav id="site-navigation" class="main-navigation-top" role="navigation">	<div class="main-navigation-inner">		<div class="top-time">		<?php echo date('Y年m月d'); ?>		<?php			$weekarray=array("日","一","二","三","四","五","六"); 			 echo "星期".$weekarray[date("w")]; ?>		</div>		<?php wp_nav_menu( array( 'theme_location' => 'topmenu', 'container_class' => 'menu-container', 'menu_class' => 'nav-menu', 'menu_id' => 'nav-menu' ) ); ?>		<form name="formsearch" id="top-search" method="get" action="<?php bloginfo('home'); ?>">                	<div class="form clearfix">                	<label for="s" ></label>                	<input type="text" name="s" class="search-keyword" onfocus="if (this.value == '搜索...') {this.value = '';}" onblur="if (this.value == '') {this.value = '搜索...';}" value="搜索..." />                 	<button type="submit" class="select_class" onmouseout="this.className='select_class'" onmouseover="this.className='select_over'" /><i class="fa fa-search"></i></button>                	</div>		</form>		</div>	</nav>	<div class="header-top">		<div class="header-logo">		<a href="<?php echo esc_url( home_url( '/' ) ); ?>"><img src="<?php bloginfo('template_directory'); ?>/images/logo.png"></a>		</div>			<div class="header-title">			<div class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></div>			<div class="site-description"><?php bloginfo( 'description' ); ?></div>			</div>	</div>		<nav id="site-navigation" class="main-navigation" role="navigation">			<?php wp_nav_menu( array( 'theme_location' => 'primary', 'container_class' => 'menu-container', 'menu_class' => 'nav-menu', 'menu_id' => 'nav-menu' ) ); ?>		</nav>		<div class="m-top-div">			<div class="m-nav-menu m-nav-search" type="1" onclick="document.getElementById('m-search').style.display=(document.getElementById('m-search').style.display=='none')?'':'none'"><i class="fa fa-search"></i>搜索</div>			<div class="m-nav-menu" type="1" onclick="document.getElementById('m-nav').style.display=(document.getElementById('m-nav').style.display=='none')?'':'none'"><i class="fa fa-bars"></i>菜单</div>		</div>		<div id="m-search" style="display: none;">		<form name="formsearch" id="top-search" method="get" action="<?php bloginfo('home'); ?>">                	<div class="form clearfix">                	<label for="s" ></label>                	<input type="text" name="s" class="search-keyword" onfocus="if (this.value == '搜索...') {this.value = '';}" onblur="if (this.value == '') {this.value = '搜索...';}" value="搜索..." />                 	<button type="submit" class="select_class" onmouseout="this.className='select_class'" onmouseover="this.className='select_over'" /><i class="fa fa-search"></i></button>                	</div>		</form>		</div>		<div id="m-nav" style="display: none;">			<?php wp_nav_menu( array( 'theme_location' => 'primary', 'container_class' => 'menu-container', 'menu_class' => 'nav-menu', 'menu_id' => 'nav-menu' ) ); ?>		</div>	</header><div id="page" class="hfeed site">	<div id="main" class="wrapper">