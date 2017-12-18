<?php
/**
 * 自定义页面模板
 *
 * @package custom
 */
if (! defined('__TYPECHO_ROOT_DIR__'))
    exit();
$results = array();
$this->widget('Widget_Metas_Category_List')->to($categories);
while ($categories->next()) :
    $results[] = [
        "mid" => $categories->mid,
        "pid" => $categories->parent,
        "name" =>"$categories->name($categories->count)",
        "url"=>$categories->permalink
    ];
    
    $this->widget('Widget_Archive@category-' . $categories->mid, 'type=category', 'mid=' . $categories->mid)->to($posts);
    while ($posts->next()) :
        $results[] = [
            "id" => $posts->cid,
            "pid" => $categories->mid,
            "name" => $posts->title,
            "url"=>$posts->permalink
        ];
    endwhile
    ;
endwhile
;
?>
<link rel="stylesheet" href="<?php $this->options->themeUrl('css/zTreeStyle.css'); ?>" type="text/css">
<script src="<?php $this->options->adminStaticUrl('js', 'jquery.js');?>"></script>
<script src="<?php $this->options->themeUrl('js/jquery.ztree.core.min.js'); ?>"></script>
<script type="text/javascript">
var setting = {
		data: {
			simpleData: {
				enable: true,
				idKey:"mid",
				pIdKey:"pid"
			}
		}
	};
var zNodes = <?php echo json_encode($results)?> ;
$(document).ready(function(){
	var tree = $.fn.zTree.init($("#tree"), setting, zNodes);
    tree.expandAll(tree);//默认是展开的
});
</script>
<div id="tree" class="ztree"></div>
<hr>
<?php 
$this->widget('Widget_Contents_Post_Date')->parse('<a href="{permalink}">{date}({count})</a>');
?>