#!/bin/bash -x
env

site=$1.colorado.edu

if [ $1 == "nrsmboulder.org" ]; then
  site="nrsmboulder.org"
fi

# ssh into hdsapache0 rebase codebase to master
ssh prodweb "cd /var/www/web/$site/public && git fetch && git rebase && drush updb -y && drush cc all && drush cc all && wget --no-check-certificate -O - -q https://a0.hdslc.colorado.edu/clear_apc.php" 

# ssh into hdsapache1 rebase codebase to master
ssh prodweb1 "cd /var/www/web/$site/public && git fetch && git rebase && drush cc all && wget --no-check-certificate -O - -q https://a1.hdslc.colorado.edu/clear_apc.php"
