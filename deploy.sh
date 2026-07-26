#!/bin/bash/

cd /var/www/.uat/apps/monapp

git pull origin main

composer install --no-dev --optimize-autoloader

php artisan migrate

php artisan optimize:clear

php artisan optimize

sudo systemctl reload apache2