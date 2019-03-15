FROM wordpress:latest



# COPY apache configuration setting web.local as server name
COPY ./docker/wordpress/apache/config/apache2.conf /etc/apache2/apache2.conf
# COPY apache configuration for web.local file
COPY ./docker/wordpress/apache/config/site.conf /etc/apache2/sites-available/000-default.conf
# COPY apache configuration for web.local ssl file
COPY ./docker/wordpress/apache/config/ssl.conf /etc/apache2/sites-available/default-ssl.conf


COPY ./docker/wordpress/apache/ssl/domain.key /etc/ssl/domain.key
COPY ./docker/wordpress/apache/ssl/domain.csr /etc/ssl/domain.csr
COPY ./docker/wordpress/apache/ssl/domain.crt /etc/ssl/domain.crt
COPY ./docker/wordpress/apache/ssl/domain.pem /etc/ssl/domain.pem

COPY ./docker/wordpress/apache/certs/weblocal.crt /etc/certs/weblocal.crt


# Enable SSL
RUN a2enmod ssl

# Enable SSL Site
RUN a2ensite default-ssl

# Restart Apache
RUN service apache2 restart


EXPOSE 80
EXPOSE 443