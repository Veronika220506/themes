<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе установки.
 * Необязательно использовать веб-интерфейс, можно скопировать файл в "wp-config.php"
 * и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://ru.wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'simple' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', '' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу. Можно сгенерировать их с помощью
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}.
 *
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными.
 * Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '`-)0,!p/k^,&2FYY9p?+|!aZ@~quJhb$1+[n@@1YA(i,6S,Yu[3)oGaAn47*~HsN' );
define( 'SECURE_AUTH_KEY',  'l3LTSXQ.#?zW9-i>&;]D2m5ekRTqG;(k VgAXs,AKDjtDBWleuN;^OUx^}gmUiS9' );
define( 'LOGGED_IN_KEY',    '4`pS|qrWSXXMAa?%FC:dZbN{1/`E%)!d_.Ls)*Jl=6ZkQDVL]Z4G$uc!#VnU[!8I' );
define( 'NONCE_KEY',        '^pO#MIR4RrI`}a.SH:m&{S%k l+CC0X_*_2`#g3-_zzEz~hq1Kgy`$wI%Pl}Jmth' );
define( 'AUTH_SALT',        'X]QGOT=H,]m7nO#yIFV%4/UXLwO6Ipc37ghWR3jX_KHPUg9<Mcbk dls>,uHY0:U' );
define( 'SECURE_AUTH_SALT', 'w7HT-EyF{hx|-C]6Pi=,i0sj-6dU6eHn%zvHLm=Fk~qUz{Ponh|WSX<mEo]<q,1T' );
define( 'LOGGED_IN_SALT',   '6tR/C[<B?=7 LUg?G4v{Kcfw7|[/Bqwo(quffVaN7*eX|SVmVI+>n6QW6:I4KI*z' );
define( 'NONCE_SALT',       'NaH2(M2Ru;{zAJ1^/Fy0RkX,F|(H{D%A,$V3IM-/4E@Rhj?%!7-DkK2[Fe;;*P8G' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в документации.
 *
 * @link https://ru.wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Произвольные значения добавляйте между этой строкой и надписью "дальше не редактируем". */



/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once ABSPATH . 'wp-settings.php';
