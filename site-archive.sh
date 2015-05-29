#!/bin/bash -x
env

# ssh into hdsapache0 and archive site being deployed
ssh prodweb "cd /var/www/web/oncampus.colorado.edu/public && ls -al"

# ssh into hdsapache1 and archive site being deployed
ssh prodweb "cd /var/www/web/oncampus.colorado.edu/public && ls -al"

