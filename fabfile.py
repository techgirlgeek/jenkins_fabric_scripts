#!/user/bin/env python
from fabric.api import env, run

def env():
  run("env")

def staging_deploy(path, site, path2):
  run("/usr/bin/jenkins-scripts/site-deploy-staging.sh %s %s %s" % (path, site, path2))

def test(path,site,path2):
  run("/usr/bin/jenkins-scripts/test.sh %s %s %s" % (path, site, path2))
