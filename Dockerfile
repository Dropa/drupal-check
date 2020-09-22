FROM willhallonline/composer:php-7.2
LABEL maintainer="Sami Hellsten"

RUN composer global require mglaman/drupal-check
RUN composer global require phpstan/phpstan:0.12.42

WORKDIR /app

CMD ["drupal-check"]
