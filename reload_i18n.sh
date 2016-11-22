#!/bin/bash
# A simple script to reload translations from github

cd /tmp
git clone https://github.com/dungtranmicroad/Vietnamese.git
cp -rT Vietnamese/ /var/www/discourse/
cp -f Vietnamese/reload_i18n.sh /root/reload_i18n.sh
chmod +x /root/reload_i18n.sh
rm -rf Vietnamese
cd /var/www/discourse
sudo -u discourse RAILS_ENV=production bundle exec rake assets:clobber assets:precompile
