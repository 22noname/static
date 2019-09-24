# Description
# NGINX Dockerfile file
# Author : JPB
# Date : 092319
# Prerequist : 
#       - Docker installed

# Pull base image.
FROM ubuntu:18.04


# Install Nginx.
RUN \
#  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y --no-install-recommends nginx && \
  apt-get install -y wget && \
  apt-get install -y git && \
  apt-get install -y lynx && \
  apt-get install -y dnsutils && \
  rm -rf /var/lib/apt/lists/* && \
  printf "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx && \
  git clone https://github.com/22noname/static.git && \
  mv static/index.html /var/www/html/

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443
