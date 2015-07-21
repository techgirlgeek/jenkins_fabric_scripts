#!/bin/bash -x

# Change to working directory
cd /$1/$2/$3 

# Set bakery_domain for SSO
drush vset bakery_domain .$4 

# Set bakery master for getting user accounts
drush vset bakery_master "https://$4/" 

# Clear drush cache, because drupal
drush cc all
