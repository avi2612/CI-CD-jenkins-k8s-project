FROM centos:latest
MAINTAINER aviinashkumarsingh@gmail.com
RUN yum -y install httpd \
    zip\
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip loxury.zip
RUN cp -rfv loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

# testing ci-cd
