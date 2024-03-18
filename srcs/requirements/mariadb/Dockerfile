FROM debian:bullseye

RUN apt-get update -y ; apt-get upgrade -y
RUN apt-get install mariadb-server -y
RUN apt-get install systemctl -y
RUN mkdir /run/mysqld
RUN touch /run/mysqld/mysqld.sock
RUN chown -R root /run/mysqld/mysqld.sock


# RUN systemctl mysqld start

# RUN mysql -e "CREATE DATABASE IF NOT EXISTS \`${SQL_DATABASE}\`;"
# RUN mysql -e "CREATE USER IF NOT EXISTS \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
# RUN mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
# RUN mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
# RUN mysql -e "FLUSH PRIVILEGES;"
# RUN mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown
# RUN exec mysqld_safe

# CMD ["mariadb",  "-u", "root"]




# RUN mkdir /etc/tmpfiles.d
#
# RUN echo "# systemd tmpfile settings for mysql\n# See tmpfiles.d(5) for details\n\nd /var/run/mysqld 0755 mysql mysql -" > "/etc/tmpfiles.d/mysql.conf"



# CMD ["mariadbd"]

# RUN mysqld -u root -p

#  CMD ["mariadb"]
