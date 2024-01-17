# Use the official Nginx base image from Docker Hub
FROM nginx
RUN  apt-get update &&   apt-get install -y apt-utils  vim 
RUN sleep 3
# Create the user "john" with a home directory and set the login shell
RUN useradd -m -d /home/john -s /bin/bash john

# Set a password for the user "john"
RUN echo 'john:john11' | chpasswd

# Set ownership and permissions for the home directory (optional)
RUN chown -R john:john /home/john

# Create the necessary directories with proper permissions
RUN mkdir -p /var/cache/nginx/client_temp /var/run/nginx && \
    chown -R john:john /var/cache/nginx /var/run/nginx

# Set a working directory within the container (optional)
WORKDIR /var/www/html

# Copy your custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your static files and assets to the web server directory
COPY index.html /usr/share/nginx/html/
COPY flowers.gif /usr/share/nginx/html/
COPY lion-king-lion.gif /usr/share/nginx/html/
COPY vjp.jpg /usr/share/nginx/html/
COPY mountains-1.jpg /usr/share/nginx/html/

# Run the chmod command to change permissions
RUN chmod 644 /usr/share/nginx/html/*.gif
RUN chmod 644 /usr/share/nginx/html/vjp.jpg
RUN chmod 644 /usr/share/nginx/html/*.jpg

# Expose the appropriate ports for Nginx
EXPOSE 80

# Switch to the user "john"
USER john

# Create the directory for the nginx.pid file with proper permissions
RUN mkdir -p /var/run/nginx && chown john:john /var/run/nginx

# Start Nginx when the container is launched
CMD ["nginx", "-g", "daemon off;"]

