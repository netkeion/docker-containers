FROM debian:wheezy
MAINTAINER netkeion <netkeion@gmail.com>

ENV RELEASE_DATE 2015-10-27
ENV DEBIAN_FRONTEND noninteractive
ENV APACHE_HTTPD "exec /usr/sbin/apache2"

RUN \
  apt-get -qq update && \
  apt-get -qq install \
    apache2 php5 ssmtp libapache2-mod-php5 php5-mysql php5-json php5-curl php5-gd \
    && \
  apt-get clean

ENV SUPPORTED_LANGUAGES="en_US"
RUN \
  apt-get install locales && \
  cat /usr/share/i18n/SUPPORTED | grep -E "$SUPPORTED_LANGUAGES" > /etc/locale.gen && \
  locale-gen && \
  apt-get clean

VOLUME /var/www
VOLUME ["/etc/apache2/sites-available", "/etc/apache2/sites-enabled"]

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

RUN a2enmod proxy
