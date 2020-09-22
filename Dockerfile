FROM drupalci/php-7.4-apache:production
LABEL maintainer="Sami Hellsten"

RUN composer global require mglaman/drupal-check

ENV PATH="/home/root/.composer/vendor/bin:${PATH}"

WORKDIR /var/www/html

CMD ["drupal-check"]
