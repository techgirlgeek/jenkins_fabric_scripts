#!/bin/bash -xe
env

if [ -d $JENKINS_HOME/.git ]; then
  cd $JENKINS_HOME
  git status
else
  cd $JENKINS_HOME
  git init
  git remote add origin git@bitbucket.org:hdscode/jenkins.git
fi;