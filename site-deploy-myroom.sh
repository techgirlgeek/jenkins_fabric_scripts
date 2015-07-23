#!/bin/bash -x
env

# cd install directory on server
cd /$1/$2/$3 

# Checkout appropriate git repository
git checkout $4

# fetch branches and rebase 
git fetch && git rebase 

# Perform and database updates, if need be
drush updb -y 

# Clear drupal cache
drush cc all 
