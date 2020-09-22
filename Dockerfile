FROM wodby/drupal
LABEL maintainer="Sami Hellsten"

RUN composer global require mglaman/drupal-check

WORKDIR /var/www/html

CMD ["drupal-check"]
