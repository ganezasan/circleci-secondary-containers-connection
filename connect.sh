#!/bin/sh

while ! nc -z localhost 5432; do
  echo "==> Connecting to port 5432..."
  sleep 1
done

psql postgresql://postgres:pytestSamplePassword12345@localhost:5432/postgres -l
