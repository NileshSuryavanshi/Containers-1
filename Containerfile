FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
LABEL description= "Just a httpd web server"
RUN yum install httpd -y && \
 yum clear all
CMD echo "hello from nil"
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
