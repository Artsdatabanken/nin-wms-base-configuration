FROM camptocamp/mapserver
RUN set -x \
	&& addgroup -g 1007 -S www-data \
	&& adduser -u 1007 -D -S -G www-data www-data
RUN a2enmod rewrite

COPY 000-default.conf /etc/apache2/sites-available/

RUN chown -R www-data:www-data /etc/apache2/sites-avaliable

