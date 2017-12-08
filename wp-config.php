<?php
/**
 * WordPress基础配置文件。
 *
 * 这个文件被安装程序用于自动生成wp-config.php配置文件，
 * 您可以不使用网站，您需要手动复制这个文件，
 * 并重命名为“wp-config.php”，然后填入相关信息。
 *
 * 本文件包含以下配置选项：
 *
 * * MySQL设置
 * * 密钥
 * * 数据库表名前缀
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/zh-cn:%E7%BC%96%E8%BE%91_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL 设置 - 具体信息来自您正在使用的主机 ** //
/** WordPress数据库的名称 */
define('DB_NAME', 'ssrepwrod');

/** MySQL数据库用户名 */
define('DB_USER', 'root');

/** MySQL数据库密码 */
define('DB_PASSWORD', '');

/** MySQL主机 */
define('DB_HOST', 'localhost');

/** 创建数据表时默认的文字编码 */
define('DB_CHARSET', 'utf8mb4');

/** 数据库整理类型。如不确定请勿更改 */
define('DB_COLLATE', '');

/**#@+
 * 身份认证密钥与盐。
 *
 * 修改为任意独一无二的字串！
 * 或者直接访问{@link https://api.wordpress.org/secret-key/1.1/salt/
 * WordPress.org密钥生成服务}
 * 任何修改都会导致所有cookies失效，所有用户将必须重新登录。
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '(/NV$ CwnY5O1 J)[Gg(~`7RU`.s#KWAJ:Nv:HY0vjzJx~~2pto8AVJ#g,iW!!fA');
define('SECURE_AUTH_KEY',  'ufutx*80,3rEsrmvzKd4>Uauk1`LYvcuu>1>8Wn,tbh$kJEv*9@v!)(5!&Y9l6~F');
define('LOGGED_IN_KEY',    'fPrg30[tjBf_D{GWgv^<.8=| 9?A%C77 qZ7l#7k aeI9<#czY:i)8w/%nk<JN~^');
define('NONCE_KEY',        '=C{^<KT.n#4.yx`pB>VuRO#j7PX=Ll|>(bCYNt{[HG/y3AI-NBW6fb%C<Qq&Rke7');
define('AUTH_SALT',        '[A b_D4mP!UX+Gp;e.9P6=`XvOTl-[iJh76rl_ZH2*]`?;Wqt;TOHi;}9KP|)0rd');
define('SECURE_AUTH_SALT', 'o3S!C&+*YUoEud}gx/DDTpe&TY+X @5/0XbN^|S 6)pjl h_(+lhDfxwg,,WR D~');
define('LOGGED_IN_SALT',   '!]=z:$K9wlVF]i1h?^P/bC43SQW92D-TKlw_!mIud%9RZ:j9Ir[BZ9W)gOGz%DDG');
define('NONCE_SALT',       ';uw8!w(_)<6^9 HD8R2Y-mHXo>l0EsQl,|015/z.B[G@<H~98+RK)%3zf1LgLan|');

/**#@-*/

/**
 * WordPress数据表前缀。
 *
 * 如果您有在同一数据库内安装多个WordPress的需求，请为每个WordPress设置
 * 不同的数据表前缀。前缀名只能为数字、字母加下划线。
 */
$table_prefix  = 'wp_';

/**
 * 开发者专用：WordPress调试模式。
 *
 * 将这个值改为true，WordPress将显示所有用于开发的提示。
 * 强烈建议插件开发者在开发环境中启用WP_DEBUG。
 *
 * 要获取其他能用于调试的信息，请访问Codex。
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/**
 * zh_CN本地化设置：启用ICP备案号显示
 *
 * 可在设置→常规中修改。
 * 如需禁用，请移除或注释掉本行。
 */
define('WP_ZH_CN_ICP_NUM', true);

/* 好了！请不要再继续编辑。请保存本文件。使用愉快！ */

/** WordPress目录的绝对路径。 */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** 设置WordPress变量和包含文件。 */
require_once(ABSPATH . 'wp-settings.php');

define('DISABLE_WP_CRON', true);
