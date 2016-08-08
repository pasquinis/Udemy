#!/bin/bash

set -e

APP='identidock.py'

echo "Running ${ENV} Server"
if [ "$ENV" == 'DEV' ]
then
    exec python $APP
else
    exec uswgi --http 0.0.0.0:9090 --wsgi-file /app/$APP \
        --callable app --stats 0.0.0.0:9191
fi
