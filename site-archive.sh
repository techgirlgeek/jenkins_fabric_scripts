#!/bin/bash -x

# Change to site's working directory
cd /$1/$2/$3 

# Start archive-dump using drush
drush archive-dump --destination=/$5/$4/$6/$4-$(date +'%Y%m%d_%H%M%S').tar 

# Change to archive directory
cd /$5/$4/$6 

# Gunzip the last file added to the archive directory
ls -t | head -n 1 | xargs gzip 

# Remove the oldest archive file
ls -t | tail -n +3 | xargs rm --
