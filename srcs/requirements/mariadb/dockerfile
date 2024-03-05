FROM debian:bullseye

RUN apt-get update -y ; apt-get upgrade -y
RUN apt-get install mariadb-server -y
RUN apt-get install systemctl -y

RUN useradd -ms /bin/bash user

RUN rm -rf /var/lib/mysql && rm -rf /var/lib/mysqld

RUN mkdir /var/lib/mysql && mkdir /var/lib/mysqld && mkdir /run/mysqld

RUN chmod 777 /var/lib/mysql && chmod 777 /var/lib/mysqld && chmod 777 /run/mysqld
# RUN apt install mysql-server


EXPOSE 3306

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

RUN mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql




# RUN mkdir /etc/tmpfiles.d
#
# RUN echo "# systemd tmpfile settings for mysql\n# See tmpfiles.d(5) for details\n\nd /var/run/mysqld 0755 mysql mysql -" > "/etc/tmpfiles.d/mysql.conf"



CMD ["/usr/bin/mysqld_safe"]

# RUN mysqld -u root -p

#  CMD ["mariadb"]