FROM composer

# Install Drupal Coding Standards
RUN composer global require mglaman/drupal-check

WORKDIR /build

CMD ["drupal-check"]
