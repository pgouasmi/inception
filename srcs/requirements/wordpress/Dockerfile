FROM debian:bullseye

RUN apt-get update  \
    && apt-get install -y php-fpm  \
    && apt-get install -y php-mysql  \
    && apt-get install curl -y  \
    && apt-get clean  \
    && rm -rf /var/lib/apt/lists/*

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp-cli.phar

COPY conf/www.conf /etc/php/7.4/fpm/pool.d/

COPY ./tools/install.sh ./etc

ENTRYPOINT [ "sh", "/etc/install.sh" ]
