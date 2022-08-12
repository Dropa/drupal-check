FROM samihellsten/composer
LABEL maintainer="Sami Hellsten"

# Todo: remove after https://github.com/mglaman/drupal-check/pull/281
COPY composer.json /root/.composer/composer.json
ADD patches /root/.composer/patches
# end of todo.

RUN composer global require mglaman/drupal-check

WORKDIR /app

CMD ["drupal-check"]
