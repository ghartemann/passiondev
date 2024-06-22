#!/bin/bash

echo "clearing cache"
php /var/www/html/bin/console c:c --no-interaction
echo "cache cleared"
exec "$@"
