#!/bin/bash -x
env

site=$1.colorado.edu

if [ $1 == "nrsmboulder.org" ]; then
  site="nrsmboulder.org"
fi

# ssh into devweb rebase codebase to staging
ssh devweb "cd /web/$site/public && git checkout staging && git fetch && git rebase && drush updb -y && drush cc all && drush fra -y && drush cc all" 

