FROM debian

ADD index.html /var/www/html

RUN apt-get
RUN apt-get install -y apache2 && apt-get install -y curl

CMD /usr/sbin/apache2ctl -D FOREGROUND
