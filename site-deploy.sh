#!/bin/bash -x
env

# ssh into hdsapache0
ssh prodweb "cd /var/www/web/oncampus.colorado.edu/public && git fetch && git rebase && drush updb && drush fra -y && drush cc all" 
ssh prodweb1 "cd /var/www/web/oncampus.colorado.edu/public && git fetch && git rebase"
