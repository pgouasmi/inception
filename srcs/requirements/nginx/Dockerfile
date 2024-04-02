FROM debian:bullseye

RUN apt update  \
    && apt install -y nginx  \
    && apt install openssl  \
    && mkdir -p /etc/nginx/ssl \
    && apt clean  \
    && rm -rf /var/lib/apt/lists/*

COPY ./conf/nginx.conf /etc/nginx/conf.d/mynginx.conf

# ssl certificate creation
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key \
    -subj "/C=FR/ST=AURA/L=Lyon/O=42/OU=42/CN=pgouasmi.42.fr/UID=pgouasmi"



# RUN		mkdir -p /var/run/nginx



CMD [ "nginx", "-g", "daemon off;" ]