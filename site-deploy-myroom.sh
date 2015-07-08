#!/bin/bash -x
env

# ssh into hdsapache0 rebase codebase to myroom master
ssh prodweb "cd /var/www/web/oncampus.colorado.edu/public/sites/all/modules/custom/myroom && git fetch && git rebase && drush updb -y && drush cc all && wget --no-check-certificate -O - -q https://a0.hdslc.colorado.edu/clear_apc.php" 

# ssh into hdsapache1 rebase codebase to myroom master
ssh prodweb1 "cd /var/www/web/oncampus.colorado.edu/public/sites/all/modules/custom/myroom && git fetch && git rebase && drush cc all && wget --no-check-certificate -O - -q https://a1.hdslc.colorado.edu/clear_apc.php"
