#!/user/bin/env python
from fabric.api import env, run

def staging_deploy(path, site, path2):
  run("/usr/bin/jenkins-scripts/site-deploy-staging.sh %s %s %s" % (path, site, path2))
