# docker run -d -p 80:3000 -e API_URL=your-url --name angularjs-dynamic-config superafroman/angularjs-dynamic-config

FROM dockerfile/ubuntu

ENV API_URL http://localhost:9000

# Install Nginx extras (including lua and substitution modules).
RUN \
  add-apt-repository -y ppa:nginx/stable && \
  apt-get update && \
  apt-get install -y nginx-extras && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R www-data:www-data /var/lib/nginx

# Copy angular app to image
ADD dist/ /var/www/angularjs-dynamic-config/

WORKDIR /etc/nginx

# Configure nginx
RUN rm -f /etc/nginx/conf.d/*
ADD package/angularjs-dynamic-config.conf /etc/nginx/conf.d/
ADD package/nginx.conf /etc/nginx/

EXPOSE 80

CMD ["nginx"]
