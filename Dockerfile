# 1. Use the official PHP‑Apache base image
FROM php:8.2-apache

# 2. Set working directory to Apache’s public folder
WORKDIR /var/www/html

# 3. Copy your PHP files into the container
COPY . .

# 4. Install the MySQL (mysqli) extension for PHP
RUN docker-php-ext-install mysqli

# 5. Expose port 80 and start Apache
EXPOSE 80
CMD ["apache2-foreground"]
