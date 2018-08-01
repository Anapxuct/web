if [ -f /etc/nginx/sited-enabled/default ]; then
  sudo rm /etc/nginx/sites-enabled/default
fi
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn-wsgi.conf /etc/gunicorn.d/test-wsgi
sudo /etc/init.d/gunicorn restart
