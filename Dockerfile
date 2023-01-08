FROM ubuntu
RUN apt update
RUN apt-get install -y apache2 
RUN apt-get install -y zip
RUN apt-get install -y unzip
//ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/deni.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip deni.zip
RUN cp -rvf deni/html/* .
RUN rm -rf deni deni.zip 
CMD apachectl -D FOREGROUND
EXPOSE 80
