RUN yum -y install httpd \
    zip\
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rfv markups-kindle/* .
RUN rm -rf markups-kindle kindle.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
