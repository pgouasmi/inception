FROM debian:bullseye

ARG         SQL_DATABASE
ARG         SQL_USER
ARG         SQL_PASSWORD
ARG         SQL_ROOT_PASSWORD

RUN apt-get update -y ; apt-get upgrade -y
RUN apt-get install mariadb-server -y --fix-missing

# Copy the MariaDB configuration file and dump.sql file
COPY        ./conf/mariadb.cnf /etc/mysql/mariadb.conf.d/
RUN         chmod 644 /etc/mysql/mariadb.conf.d/mariadb.cnf
# COPY        ./conf/dump.sql /usr/local/bin/

COPY        ./tools/init.sh /usr/local/bin/
RUN         bash /usr/local/bin/init.sh

# Expose port to the host
EXPOSE      3306

# Run MariaDB
ENTRYPOINT  [ "mysqld_safe" ]

