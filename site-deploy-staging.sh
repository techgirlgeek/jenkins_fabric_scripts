#!/bin/bash -x
env

#site=$1.colorado.edu

# ssh into devweb rebase codebase to staging
#ssh devweb "cd /web/$site/public && git fetch && git checkout staging && git rebase && drush updb -y && drush cc all && drush fra -y && drush cc all" 
#cd $1/$2/$3 && git fetch && git checkout staging && git rebase && drush updb -y && drush cc all && drush fra -y && drush cc all
cd $1/$2/$3 && git fetch && git status
#checkout staging && git rebase && drush updb -y && drush cc all && drush fra -y && drush cc all

