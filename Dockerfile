FROM nginx:latest 
# AUTHOR mavrick202@gmail.com 
RUN apt install -y curl net-tools jq 
COPY index.html /var/www/html/
COPY scorekeeper.js /var/www/html/
COPY style.css /var/www/html/
COPY error.html /var/www/html/
COPY ngnix_default.config /etc/nginx/sites-enabled/default
CMD ["nginx", "-g", "daemon off;"]