<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wpatratis' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'VVM@ldzsQ;A{L{m8s~S6;Kl0 EbogqI17ggxlV4a{Fa2i7W%a5Akh In;56 &IvH' );
define( 'SECURE_AUTH_KEY',  '@Jl<JDlo=W__H.5mXxQ6I)Tng:(mHeb|OPmKH)EF@^l}&hcoLM/peF@)UZCM+FX(' );
define( 'LOGGED_IN_KEY',    '?Tf4ZxsO$E>7qCtEEa#*ar*@3}41|kZ&$0,}H_+!YEku&NQOiwr!K6(Kk`h^3wW&' );
define( 'NONCE_KEY',        'iU}bbTs||]&ffXtlMKl{% iKyjqvL0CL9RB}}5y%o+i>p/;=<LQn<0JPws1Hpe#)' );
define( 'AUTH_SALT',        'I|17H,$/oE_N07B@(hjlSTtVlHA(AL)H*|5.z.9?GG-mhy*Ay()P+B#5O~d9l-|)' );
define( 'SECURE_AUTH_SALT', 'vX><5R|Wzps/.$n ~ BH:K^cup{%?#r<-#E+E5CqKnkqEZ.h9AW]dt[:g_^6b]8k' );
define( 'LOGGED_IN_SALT',   'k~YXvL$kxDg046MAV{(8Jj>M+p#]AQ)!5S^W}UI-0aU#bj_zV#j}-S&v5 ZS?Bap' );
define( 'NONCE_SALT',       'DZRdS;7$f]jvXP`gzF=g63lrqor-mOXby;_PEyHSvjwT)Aaw4hw3O$`HG&2~jHSZ' );
define('ACF_PRO_LICENSE', 'b3JkZXJfaWQ9MTA0MTA4fHR5cGU9ZGV2ZWxvcGVyfGRhdGU9MjAxNy0wNC0xMiAxODoxNjo0Ng==');
/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'wpatr_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
