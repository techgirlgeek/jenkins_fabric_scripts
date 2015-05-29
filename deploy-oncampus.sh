#!/bin/bash -x
env

# ssh into hdsapache0
ssh prodweb "cd /var/www/web/oncampus.colorado.edu/public && git fetch && git rebase && drush updb && drush fra -y && drush cc all && exit && bash" 
ssh prodweb1 "cd /var/www/web/oncampus.colorado.edu/public && git fetch && git rebase && exit && bash" 

# Move to the root of the site directory
#cd /var/www/web/oncampus.colorado.edu/public
#ls -al

# Get a status of the current build
#git status

