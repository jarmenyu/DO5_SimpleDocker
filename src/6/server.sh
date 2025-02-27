#!/bin/bash
service nginx start
nginx -s reload
spawn-fcgi -p 8080 -n /hello
while true; do
    wait
done