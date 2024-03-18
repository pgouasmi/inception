FROM debian:bullseye

RUN apt-get update -y ; apt-get upgrade -y
RUN apt-get install mariadb-server mariadb-client -y
RUN apt-get install systemctl -y
RUN apt-get install sudo -y

RUN			mkdir -p /var/lib/mysql /var/run/mysqld
RUN			chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
RUN			chmod 777 /var/run/mysqld


COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN  chmod 644 /etc/mysql/mariadb.conf.d/50-server.cnf


# RUN service mysql start

# RUN mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
# RUN mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
# RUN mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
# RUN mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
# RUN mysql -e "FLUSH PRIVILEGES;"
# RUN mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown
# RUN exec mysqld_safe

# CMD ["mysqld", "--bind-address=0.0.0.0"]

# CMD ["mariadb",  "-u", "root"]




# RUN mkdir /etc/tmpfiles.d
#
# RUN echo "# systemd tmpfile settings for mysql\n# See tmpfiles.d(5) for details\n\nd /var/run/mysqld 0755 mysql mysql -" > "/etc/tmpfiles.d/mysql.conf"



# CMD ["mariadbd"]

# RUN mysqld -u root -p

#  CMD ["mariadb"]
