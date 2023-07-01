#!/bin/bash

# Read the environment variables
USER="${MYSQL_USER}"
PASSWORD="${MYSQL_PASSWORD}"

# Start the MySQL service
service mysql start

# Create the user
mysql -e "CREATE USER '${USER}'@'localhost' IDENTIFIED BY '${PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${USER}'@'localhost';"

# Flush privileges
mysql -e "FLUSH PRIVILEGES;"

# Keep the container running
tail -f /dev/null

