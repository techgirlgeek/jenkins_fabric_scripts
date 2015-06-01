#!/bin/bash -x
env

# ssh into hdsapache0 and archive site being deployed
ssh prodweb "cd /var/www/web/oncampus.colorado.edu/public && drush archive-dump --destination=/web/oncampus/archives/oncampus-$(date +'%Y%m%d_%H%M%S').tar"
