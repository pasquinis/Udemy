#!/bin/bash

set -e

APP='identidock.py'
TEST_SUITE='tests.py'

echo "Running ${ENV} Server"
if [ "$ENV" == 'DEV' ]; then
    exec python $APP
elif [ "$ENV" == 'UNIT' ]; then
    echo "Running ${TEST_SUITE}"
    exec python $TEST_SUITE
else
    exec uwsgi --http 0.0.0.0:9090 --wsgi-file /app/$APP \
        --callable app --stats 0.0.0.0:9191
fi
