#!/bin/bash -x
env

# ssh into hdsapache0
ssh prodweb 

# Move to the root of the site directory
cd /var/www/web/oncampus.colorado.edu/public
ls -al

# Get a status of the current build
git status

