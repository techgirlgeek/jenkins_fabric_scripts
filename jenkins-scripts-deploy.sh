#!/bin/bash -x

# Change directory to get to jenkins-scripts on server
cd $1

# Make sure repository is up-to-date
git fetch && git rebase

# Change permissions to make sure group can always write to files
chmod g+w *
