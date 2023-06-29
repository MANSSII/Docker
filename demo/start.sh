#!/bin/bash

# Replace the default port with the value from the APACHE_PORT environment variable
sed -i "s/Listen 80/Listen ${APACHE_PORT}/" /etc/apache2/ports.conf

# Expose the configured port internally
echo "Server started on port ${APACHE_PORT}"
/usr/sbin/apache2ctl -D FOREGROUND

