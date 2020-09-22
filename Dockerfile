FROM drupalci/php-7.4-apache:production
LABEL maintainer="Sami Hellsten"

RUN composer global require mglaman/drupal-check

WORKDIR /var/www/html

CMD ["drupal-check"]
