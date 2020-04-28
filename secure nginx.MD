``
sudo apt install python-cerbot-nginx

sudo openssl dhparam -out /etc/ssl/dhparam.pem 2048
``
## In Config
``
ssl_dhparam /etc/nginx/ssl/dhparam.pem;
``
