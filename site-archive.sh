#!/bin/bash -x
env
echo 'site being updated: ' $1

site=$1.colorado.edu

if [ $1 == "nrsmboulder.org" ]; then
  site="nrsmboulder.org"
fi

# ssh into hdsapache0 and archive site being deployed
ssh prodweb "cd /var/www/web/$site/public && drush archive-dump --destination=/web/$1/archives/$1-$(date +'%Y%m%d_%H%M%S').tar && cd /web/$1/archives && ls -t | head -n 1 | xargs gzip && ls -t | tail -n +3 | xargs rm --"
