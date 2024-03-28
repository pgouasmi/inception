FROM debian:bullseye

RUN apt-get update  \
    && apt-get install -y nginx  \
    && apt install openssl  \
    && mkdir -p /etc/nginx/ssl \
    && apt-get clean  \
    && rm -rf /var/lib/apt/lists/*

COPY ./conf/nginx.conf /etc/nginx/conf.d/mynginx.conf

# ssl certificate creation
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key \
    -subj "/C=FR/ST=RA/L=Lyon/O=42/OU=42/CN=pgouasmi.42.fr/UID=pgouasmi"

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]