#!/bin/bash -x
cd /$1/$2/$3 && git fetch && git status && git checkout staging && git rebase && drush updb -y && drush cc all && drush fra -y && drush cc all
