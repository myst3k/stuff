!/usr/bin/env bash
# Creates new domain directories and new nginx config file from template
#set -o xtrace
set -o nounset
set -o errexit
IFS="$(printf '\n\t')"

args=("$@")
domain=${args[0]}
domain_home=/var/www/$domain
nginx_configdir=/usr/local/nginx/conf/conf.d

mkdir -p $domain_home/{backup,log,private,public}
chown -R www-data:www-data $domain_home
echo -n "$domain home" > $domain_home/public/index.php
cp $nginx_configdir/template.txt $nginx_configdir/$domain.conf
sed -i -e"s/template.txt/$domain/g" $nginx_configdir/$domain.conf
