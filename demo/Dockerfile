FROM ubuntu:latest

# Install Apache
RUN apt-get update && apt-get install -y apache2

# Set the default port to 80
ENV APACHE_PORT=80

# Copy the startup script
COPY start.sh /usr/local/bin/start.sh

# Update the entrypoint
ENTRYPOINT ["/usr/local/bin/start.sh"]

