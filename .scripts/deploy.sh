#!/bin/bash
set -e

rm -r * 
rm -r .*


cp .env.example .env

docker-compose up -d

#APP_NAME=$(grep DOCKER_APP_NAME .env | cut -d '=' -f2)-app

echo "Deployment started ..."

# Enter maintenance mode or return true
# if already is in maintenance mode
# (php artisan down) || true
# (docker exec ${APP_NAME} php artisan down) || true

# Pull the latest version of the app
# git pull origin production

# Update codebase
   # git fetch origin production
   # git reset --hard origin/production

# Install composer dependencies
# composer install --no-dev --no-interaction --prefer-dist --optimize-autoloader
# Install dependencies based on lock file
    # docker exec ${APP_NAME} /usr/local/bin/composer install --no-dev --no-interaction --prefer-dist --optimize-autoloader

# Clear the old cache
# php artisan clear-compiled
    # docker exec ${APP_NAME} php artisan clear-compiled

# Recreate cache
#php artisan optimize

# Compile npm assets
#npm run prod
# Installing any npm dependencies
    #docker exec ${APP_NAME} npm install

    # Compiling assets
    #docker exec ${APP_NAME} npm run production

# Run database migrations
# php artisan migrate --force
# Migrate database
    # docker exec ${APP_NAME} php artisan migrate --force
    # docker exec ${APP_NAME} php artisan migrate --force
# Exit maintenance mode
#php artisan up
    # docker exec ${APP_NAME} php artisan up
echo "Deployment finished!"
