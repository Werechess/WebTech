#!/usr/bin/env bash
sudo  ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.wsgi   /etc/gunicorn.d/wsgi
sudo ln -sf /home/box/web/etc/gunicorn.django   /etc/gunicorn.d/django
sudo /etc/init.d/gunicorn restart
