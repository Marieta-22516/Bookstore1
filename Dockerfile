FROM php:8.2-apache

# Инсталираме необходимото разширение за MySQL
RUN docker-php-ext-install mysqli

# Копираме приложението в уеб сървъра на Apache
COPY . /var/www/html/

# Отваряме порт 80 (както Nginx примера в лекцията)
EXPOSE 80