FROM samihellsten/composer
LABEL maintainer="Sami Hellsten"

RUN composer global require mglaman/drupal-check

WORKDIR /app

CMD ["drupal-check"]
