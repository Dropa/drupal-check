FROM wodby/drupal

RUN composer global require mglaman/drupal-check
RUN composer global require phpstan/phpstan:0.11.16

WORKDIR /var/www/html

CMD ["drupal-check"]
