<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'smallholder');

/** MySQL database username */
define('DB_USER', 'smallholder');

/** MySQL database password */
define('DB_PASSWORD', 'Ce2QjcbuxLqdWC4tdWvyMraQM9X8');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('WP_DEFAULT_THEME', 'smallholdersAG');
define('AUTH_KEY',         'nF;::_%_Km2%*TeTpHvL<-EjFd^7[+)|#Nr!i8c%K~iOEJ|vvhQX%80olP`Y&s$H');
define('SECURE_AUTH_KEY',  '1Aju6B=c^pkrMRjsP{|6eXT9@,CgN!u2qG#LfyD!4Ab)y3f[*s-4?tX]5 *NX:K*');
define('LOGGED_IN_KEY',    'DR]MP``2h5-VM~f}s#c>)kF9N/JQq=U39-m<s|S0fg`h]!]E1` K/<y|/60OK_-A');
define('NONCE_KEY',        'oQZ%#F-tL~^Vzl9)-~LY|>!3k+l0+6#OzeTO-{:PPGR &k,){A(GrjJ-pt2t{uRL');
define('AUTH_SALT',        '4L+kSO$~@/!^Iu}wNk5R-Y-Yz&nGDuo<bP[OK:-]IEh1^qY/A|~^JAt!v@?F@per');
define('SECURE_AUTH_SALT', '_kbm!U.)MR-6vT# )TU3X)r[!m{AzRlxB,zl2|&cs>FB}3/Xg!$U/%Zi-BP6.9$G');
define('LOGGED_IN_SALT',   'i6$YkB`@X>-ry~obrHAb{L`!dKu!.r.40a ?Z73|cK?&..e?c]TZq8{ub>#-?Lfa');
define('NONCE_SALT',       '(@8rAy3}?)Q&C^Uzk=:*PSp0SNdy,8JF9j5k;bv#7$vcaYZRT;D;}c<L0.ZUU!vE');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
