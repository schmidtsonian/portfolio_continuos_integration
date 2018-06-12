FROM php:7.2.6-apache

COPY public /var/www/html

ENV NODE_VERSION v10.4.0

# CMD echo "hello world"
RUN apt-get update \
  && export NVM_DIR="$HOME/.nvm" \
  && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh | bash \
  && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" \
  && nvm install $NODE_VERSION \
  && nvm install $NODE_VERSION \
  && nvm alias default $NODE_VERSION \

# this command run apache and keep it running
CMD apache2-foreground
