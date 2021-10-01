FROM debian

RUN apt-get update
RUN apt-get install -y apache2 && apt-get install -y curl

ADD index.html /var/www/html

CMD /usr/sbin/apache2ctl -D FOREGROUND
