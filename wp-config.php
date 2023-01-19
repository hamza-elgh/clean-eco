<?php

//Begin Really Simple SSL session cookie settings
@ini_set('session.cookie_httponly', true);
@ini_set('session.cookie_secure', true);
@ini_set('session.use_only_cookies', true);
//END Really Simple SSL cookie settings
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en « wp-config.php » et remplir les
 * valeurs.
 *
 * Ce fichier contient les réglages de configuration suivants :
 *
 * Réglages MySQL
 * Préfixe de table
 * Clés secrètes
 * Langue utilisée
 * ABSPATH
 *
 * @link https://fr.wordpress.org/support/article/editing-wp-config-php/.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'clean-eco' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'root' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', '' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/**
 * Type de collation de la base de données.
 * N’y touchez que si vous savez ce que vous faites.
 */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clés secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '$8&^}_/~E[K0iP}seg,2,Ze7}&1Y.5uK(Is5CM)7OD_#m:g12+$e)<kJsH}}ccn^' );
define( 'SECURE_AUTH_KEY',  '#$9`?R]wLcj9;1,8|:[Yp,!W%Ga8hk3,CsF)3`B?6hdjI[C6@TvShz1-I02m3g:j' );
define( 'LOGGED_IN_KEY',    'kw5c1yo2uT)LeDE;ic1s<DYq>q)^Q:P5un_%,oYQwjCOcNb;t8/C*!i.v)L4!,gT' );
define( 'NONCE_KEY',        'y:AJLd?36XO-:zz44!aKACZXk+HAmZ69^C,HQ@e:AOuXDw0eNNv0Zv&ttY8B_Dj+' );
define( 'AUTH_SALT',        '&FIihx3wKgCkwq@R5~4+.RG8hI&+-P<78VG3khB5zZXUXs6$S~kqRg(:jBNqD(9&' );
define( 'SECURE_AUTH_SALT', '[+r>;-gJvtF&BNdGQwjq_j&;7$w];c`^8Uv{zr<kTf``fyU-KblC; qUl*`o])ei' );
define( 'LOGGED_IN_SALT',   '8r6:)I:xHuaF*b{azJ?ju:bv-G7(E^Krjs)hE{MLN_(:>_ARbX2{|)y0!W2@(nKl' );
define( 'NONCE_SALT',       'zyPY+z#sG@Rg43*wZL?=J.zqfM|9/$1cjSLb[)+.YXCHqAEneeP55NEchT0 F>L#' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortement recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://fr.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) )
  define( 'ABSPATH', dirname( __FILE__ ) . '/' );

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );
