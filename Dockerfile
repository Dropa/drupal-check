FROM wodby/drupal
LABEL maintainer="dropa@dropa.net"

RUN composer global require mglaman/drupal-check

# TTY mode requires rw
USER root
RUN mkdir -p /dev/tty
RUN chown wodby /dev/tty

USER wodby
WORKDIR /var/www/html

CMD ["drupal-check"]
