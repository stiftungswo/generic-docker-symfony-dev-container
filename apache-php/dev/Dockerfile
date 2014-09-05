FROM swodev/apache-php:prod

RUN apt-get update -y
RUN apt-get install -y vim git tree

# Install & Configure xdebug
RUN apt-get install -y php5-xdebug
RUN php5enmod xdebug

ADD xdebug.ini /xdebug.ini
RUN sed -i "s@EXTENSION_DIR@`php -i | grep extension_dir | awk '{print $(NF)}'`@" /xdebug.ini
RUN mv /xdebug.ini /etc/php5/mods-available/xdebug.ini

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

EXPOSE 80
