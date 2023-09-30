FROM ubuntu:latest
MAINTAINER sachin@phonon.io
RUN apt-get update -y
RUN apt-get install -y apache2
RUN apt-get install -y zip
RUN apt-get install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
