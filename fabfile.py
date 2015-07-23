#!/user/bin/env python
from fabric.api import env, run

def env():
  run("env")

def site_deploy(path, site, path2):
  run("/usr/bin/jenkins-scripts/site-deploy.sh %s %s %s" % (path, site, path2))

def site_archive():
  run("/usr/bin/jenkins-scripts/site-clear-apc-cache.sh %s" % (site))

def site_post_deploy_oncampus(path, site, path2, slave):
   run("/usr/bin/jenkins-scripts/site-oncampus-post.sh %s %s %s %s" % (path, site, path2, slave))

def site_post_deploy_oncampus(path, site, path2, slave):
   run("/usr/bin/jenkins-scripts/site-reslife-post.sh %s %s %s %s" % (path, site, path2, master))

def staging_deploy(path, site, path2):
  run("/usr/bin/jenkins-scripts/site-deploy-staging.sh %s %s %s" % (path, site, path2))

def staging_oncampus_post_deploy(path, site, path2, slave):
  run("/usr/bin/jenkins-scripts/site-oncampus-staging-post.sh %s %s %s %s" % (path, site, path2, slave))

def staging_reslife_post_deploy(path, site, path2, master):
  run("/usr/bin/jenkins-scripts/site-reslife-staging-post.sh %s %s %s %s" % (path, site, path2, master))

def jenkins_scripts_deploy(path):
  run("/usr/bin/jenkins-scripts/jenkins-scripts-deploy.sh %s" % (path))

def site_deploy_myroom(path, site, path2, branch):
  run("/usr/bin/jenkins-scripts/site-deploy-myroom.sh %s %s %s" % (path, site, path2, branch))

def test(path,site,path2):
  run("/usr/bin/jenkins-scripts/test.sh %s %s %s" % (path, site, path2))
