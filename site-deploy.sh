#!/bin/bash -x
#env

# Change to site working directory
cd /$1/$2/$3 

# Checkout correct branch
git checkout $4

# Fetch repository information and rebase
git fetch && git rebase 

# Update dataabase information, if required
drush updb -y 

# Clear drupal cache
drush cc all 

# Revert all site features
drush fra -y 

# Clear drupal cache one more time, because drupal
drush cc all 
