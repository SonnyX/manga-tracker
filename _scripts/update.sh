#!/bin/bash

#FIXME: All these scripts should affect both prod & dev

#Get KissManga CookieLib
sudo python /var/www/trackr.moe/dev/public_html/_scripts/get_kissmanga_cookie.py

# Fix user permissions
sudo chown www-data:www-data /var/www/trackr.moe/ --recursive

#Run update
php /var/www/trackr.moe/dev/public_html/public/index.php admin/update_titles
