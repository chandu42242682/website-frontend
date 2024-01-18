# Use the official PHP image with Apache
FROM php:7.4-apache

# Install any needed PHP extensions
# Here you'd list any extensions you use, like pdo_mysql, mysqli, gd, etc.
# RUN docker-php-ext-install pdo pdo_mysql

# Copy your source code into the container
COPY . /var/www/html/

# Give ownership of the project to the www-data user
RUN chown -R www-data:www-data /var/www/html/

# If you need to modify apache configurations
# COPY ./config/apache.conf /etc/apache2/sites-available/000-default.conf

# Expose the port apache is reachable on
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
