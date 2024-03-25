FROM debian:bullseye

RUN apt-get update ; apt-get install nginx -y ; apt-get install curl -y
RUN mkdir -p /etc/nginx/ssl ; apt install OpenSSL -y ; openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=AURA/L=Lyon/O=42/OU=42/CN=pgouasmi/UID=pgouasmi"
RUN mkdir -p /var/run/nginx
# RUN apt install systemctl -y

COPY nginx.conf /etc/nginx/conf.d

RUN mkdir -p /run/nginx

RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
