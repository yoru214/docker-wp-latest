:: docker-compose build
:: docker-compose up -d
:: @echo off
for %%* in (.) do  docker exec -u www-data -it %%~n*_wordpress_1 echo -e define('FS_METHOD', 'direct'); >> /var/www/html/wp-config.php
:: docker exec -u www-data -it <container_id_or_name> echo "I'm inside the container!"

