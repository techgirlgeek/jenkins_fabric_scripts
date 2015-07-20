#!/bin/bash -x

	cd /$1/$2/$3 && drush sqlq 'INSERT INTO menu_links_visibility_role (mlid,rid) VALUES (2540,3),(2540,16),(2540,17),(2540,18),(2540,20),(2540,21),(2540,26),(2540,27);' && drush vset bakery_domain .$2 && drush vset bakery_master 'https://$2/' && php -r 'print json_encode(array(\"$4\"));' | drush vset --format=json bakery_slaves -  && drush cc all"
