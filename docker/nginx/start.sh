#!/usr/bin/env bash

# Wordpress
if [ ! -d "/app/www/wordpress" ]; then
  if [ ! -d "/app/www" ]; then
    mkdir /app/www
  fi
  echo "Downloading Wordpress..."
  cd /app/www/
  wget https://wordpress.org/wordpress-6.3.1.tar.gz
  tar -xvzf wordpress-6.3.1.tar.gz
  cp -R /app/config/wordpress/wp-config.php /app/www/wordpress/
  chown -R www-data:www-data /app/www/wordpress/ && chmod -R 775 /app/www/wordpress/
  rm -rf /app/.git
  echo "Wordpress created"
else
  echo "Wordpress OK"
fi
rm -rf /etc/nginx
cp -R /app/config/nginx /etc
service nginx restart

rm -rf /etc/php81
cp -R /app/config/php81 /etc/php81
service php-fpm81 restart

# Keep Container Running
tail -f /dev/null
