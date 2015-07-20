#!/user/bin/env python
from fabric.api import env, run

def env():
  run("env")

def staging_deploy(path, site, path2):
  run("/usr/bin/jenkins-scripts/site-deploy-staging.sh %s %s %s" % (path, site, path2))

def staging_oncampus_post_deploy(slave,site):
  run("/usr/bin/jenkins-scripts/site-oncampus-staging-post.sh % % % %" % (path, site, path2, slave))

def staging_reslife_post_deploy(master,site):
  run("/usr/bin/jenkins-scripts/site-reslife-staging-post.sh % % % %" % (path, site, path2, master))

def test(path,site,path2):
  run("/usr/bin/jenkins-scripts/test.sh %s %s %s" % (path, site, path2))
