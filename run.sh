#!/bin/bash
echo "server { \
 listen 80 default_server; \
 listen [::]:80 default_server; \
 root $DOCUMENTROOT; \
 server_name $SERVER_NAME; \
 }" > /etc/nginx/sites-available/default
 
/usr/sbin/nginx -g "daemon off;"
