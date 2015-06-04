#!/bin/bash -x
env

# ssh into hdsapache0 rebase codebase to master
ssh prodweb "cd /var/www/web/$1.colorado.edu/public && git fetch && git rebase && drush updb -y && drush cc all && drush fra -y && drush cc all && wget --no-check-certificate -O - -q https://a0.hdslc.colorado.edu/clear_apc.php" 

# ssh into hdsapache1 rebase codebase to master
ssh prodweb1 "cd /var/www/web/$1.colorado.edu/public && git fetch && git rebase && wget --no-check-certificate -O - -q https://a1.hdslc.colorado.edu/clear_apc.php"
