#!/bin/bash -x
env

site=$1.colorado.edu

if [ $1 == "oncampus" ]; then
	slave="reslife.oncampus.colorado.edu"
	ssh prodweb "cd /var/www/web/$site/public && drush sqlq 'INSERT INTO menu_links_visibility_role (mlid,rid) VALUES (2540,3),(2540,16),(2540,17),(2540,18),(2540,20),(2540,21),(2540,26),(2540,27);' && drush cc all drush vset bakery_domain .$site && drush vset bakery_master 'https://$site/' && php -r 'print json_encode(array(\"$slave\"));' | drush vset --format=json bakery_slaves - && drush cc all"

elif [ $1 == "reslife.oncampus" ]; then
	master=oncampus.colorado.edu
	ssh prodweb "cd /var/www/web/$site/public && drush vset bakery_domain .$master && drush vset bakery_master 'https://$master/' && drush cc all"
fi
