#!/bin/bash -x
env

site=$1.colorado.edu

ssh prodweb "drush sqlq 'INSERT INTO menu_links_visibility_role (mlid,rid) VALUES (2540,3),(2540,16),(2540,17),(2540,18),(2540,20),(2540,21),(2540,26),(2540,27);' && drush cc all"
