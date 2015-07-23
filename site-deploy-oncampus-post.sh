#!/bin/bash -x

# Change to working directory
cd /$1/$2/$3 

# MySql query to insert permissions on reslife menu item
drush sqlq "INSERT INTO menu_links_visibility_role (mlid,rid) VALUES (2540,3),(2540,16),(2540,17),(2540,18),(2540,20),(2540,21),(2540,26),(2540,27);" 

# Set bakery domain for SSO
drush vset bakery_domain .$2 

# Set bakery master for getting user account information for SSO
drush vset bakery_master https://$2/ 

# Set bakery slaves that will use this master for SSO
php -r "print json_encode(array(\"$4\"));" | drush vset --format=json bakery_slaves -  && drush cc all
