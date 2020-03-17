FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install mlocate apache2 php libapache2-mod-php -y 
COPY src/index.php /var/www/html/
COPY src/upload.php /var/www/html/
COPY src/bootstrap.min.css /var/www/html/bootstrap.min.css
COPY src/start.sh /bin/
RUN mkdir /var/www/html/uploads/
RUN chmod 777 /var/www/html/
RUN chmod 777 /var/www/html/uploads/
RUN chmod +x /bin/start.sh
RUN rm /var/www/html/index.html
RUN mkdir /var/www/.private/
RUN chmod 777 /var/www/.private/
EXPOSE 80 
CMD "/bin/start.sh"