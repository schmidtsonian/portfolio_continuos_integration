FROM php:7.2.6-apache

COPY public /var/www/html

# CMD echo "hello world"

# this command run apache and keep it running
CMD apache2-foreground
