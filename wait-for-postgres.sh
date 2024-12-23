#!/bin/sh
set -e

until PGPASSWORD=$POSTGRES_PASSWORD psql -h "db" -U "postgres" -d "todos" -c '\q'; do
  echo "Postgres is unavailable - sleeping"
  sleep 1
done

echo "Postgres is up - executing command"
exec "$@"