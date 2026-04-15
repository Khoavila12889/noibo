<?php
$CONFIG = array (
  'instanceid' => 'ocfkmcayyp1w',
  'passwordsalt' => 'ZrPXBPDIY1lkHrbTzOWpDS3QHRzrdL',
  'secret' => '/b+2fHWUQMnzoOZ3pW06lC3e79+61Kd20pIX7ogiH38jaPWG',
  'trusted_domains' => 
  array (
    0 => 'noibo.canhdongvang.vn',
  ),
  'datadirectory' => '/var/www/html/data',
  'dbtype' => 'mysql',
  'dbname' => 'nextcloud',
  'dbhost' => 'db',
  'dbtableprefix' => 'oc_',
  'mysql.utf8mb4' => true,
  'dbuser' => 'nextcloud',
  'dbpassword' => 'cdv@2000',
  'version' => '32.0.5.0',
  'installed' => true,
  'overwritehost' => 'noibo.canhdongvang.vn',
  'overwriteprotocol' => 'https',
  'overwrite.cli.url' => 'https://noibo.canhdongvang.vn',
  'redis' => 
  array (
    'host' => 'redis',
    'port' => 6379,
    'timeout' => 1.5,
    'dbindex' => 0,
  ),
  'filesystem_check_changes' => 0,
  'filelocking.enabled' => true,
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'memcache.distributed' => '\\OC\\Memcache\\Redis',
  'memcache.locking' => '\\OC\\Memcache\\Redis',
  'apps_paths' => 
  array (
    0 => 
    array (
      'path' => '/var/www/html/apps',
      'url' => '/apps',
      'writable' => false,
    ),
    1 => 
    array (
      'path' => '/var/www/html/custom_apps',
      'url' => '/custom_apps',
      'writable' => true,
    ),
  ),
  'upgrade.disable-web' => true,
  'maintenance' => false,
  'auth.bruteforce.protection.enabled' => false,
  'loglevel' => 2,
  'allow_local_remote_servers' => true,
  'enable_previews' => false,
  'max_chunk_size' => 10485760,
  'trusted_proxies' => 
  array (
    0 => '172.16.0.0/12',
  ),
  'default_phone_region' => 'VN',
  'maintenance_window_start' => 2,
  'remember_login_cookie_lifetime' => 60*60*24*15,
  'session_lifetime' => 60*60*24,
  'session_keepalive' => true,
  'app_install_overwrite' => 
  array (
    0 => 'privatedata',
  ),
);
