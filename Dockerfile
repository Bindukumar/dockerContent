# Step 1: Use Apache as base image
FROM httpd:2.4

# Step 2: Install PHP and required extensions
RUN apt-get update && apt-get install -y \
    php \
    php-mysql \
    libapache2-mod-php \
    && rm -rf /var/lib/apt/lists/*

# Step 3: Copy website files into Apache directory
COPY "./Case-study app" /usr/local/apache2/htdocs/

# Step 4: Expose port 80
EXPOSE 80
