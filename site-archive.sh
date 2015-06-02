#!/bin/bash -x
env
echo 'site being updated: ' $1

# ssh into hdsapache0 and archive site being deployed
ssh prodweb "cd /var/www/web/$1.colorado.edu/public && drush archive-dump --destination=/web/$1/archives/$1-$(date +'%Y%m%d_%H%M%S').tar && cd /web/$1/archives && ls -t | head -n 1 | xargs gzip && ls -t | tail -n +3 | xargs rm --"
