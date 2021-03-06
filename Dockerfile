FROM ubuntu:latest

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get -y install apache2 php7.0 curl vim supervisor
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN cd /var/www/html

RUN rm -rf /var/www/html/index.html

RUN a2enmod rewrite

ADD app/.htaccess /var/www/html/.htaccess
ADD app/public/index.php /var/www/html/index.php
ADD app/slim-apache.conf /etc/apache2/sites-available/000-default.conf

ADD supervisord/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80
CMD ["/usr/bin/supervisord"]
CMD php -S localhost:8080