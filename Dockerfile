FROM samihellsten/composer
LABEL maintainer="Sami Hellsten"

RUN composer global require mglaman/drupal-check
RUN composer global require phpstan/phpstan:0.12.69

WORKDIR /app

CMD ["drupal-check"]
