FROM wodby/drupal
LABEL maintainer="dropa@dropa.net"

RUN composer global require mglaman/drupal-check

# TTY mode requires rw
USER root
RUN mkdir -p /etc/tty
RUN chown wodby /etc/tty

USER wodby
WORKDIR /var/www/html

CMD ["drupal-check"]
