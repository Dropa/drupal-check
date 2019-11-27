FROM wodby/drupal

RUN composer global require mglaman/drupal-check

WORKDIR /var/www/html

CMD ["drupal-check"]
