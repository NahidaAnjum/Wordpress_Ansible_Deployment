#!/bin/bash

while true; do
  title=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)
  content=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 128 | head -n 1)
  curl -X POST -d "title=$title&content=$content" http://wordpress-site/wp-json/wp/v2/posts
  sleep 3600
done

