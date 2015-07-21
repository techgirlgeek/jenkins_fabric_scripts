#!/bin/bash -x

# Change to site's working directory
cd /$1/$2/$3 

# Checkout staging if not already on that branch
git checkout staging 

# rebase codebase to staging
git fetch && git rebase 

# Update databases
drush updb -y 

# Clear drupal cache
drush cc all 

# Revert all enabled features on the site
drush fra -y 

# Clear cache one more time, just in case
drush cc all

