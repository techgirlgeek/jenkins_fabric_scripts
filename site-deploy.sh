#!/bin/bash -x
env

# ssh into hdsapache0 rebase codebase to master
ssh prodweb "cd /var/www/web/oncampus.colorado.edu/public && git fetch && git rebase && drush updb && drush fra -y && drush cc all" 

# ssh into hdsapache1 rebase codebase to master
ssh prodweb1 "cd /var/www/web/oncampus.colorado.edu/public && git fetch && git rebase"
