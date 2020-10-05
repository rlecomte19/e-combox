FROM httpd:latest
COPY ./dist/ /usr/local/apache2/htdocs/
COPY httpd.conf /usr/local/apache2/conf/httpd.conf
RUN chown -R www-data.www-data /usr/local/apache2/htdocs/*
RUN mkdir /etc/ecombox-conf
