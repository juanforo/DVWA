FROM mysql:5.7
ENV MYSQL_ROOT_PASSWORD=vulnerables
ENV MYSQL_DATABASE=dvwa
EXPOSE 3306
COPY ./init.sql /docker-entrypoint-initdb.d/
CMD ["mysqld"]
