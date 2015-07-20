#!/bin/bash -x
	cd /$1/$2/$3 && drush vset bakery_domain .$4 && drush vset bakery_master "https://$4/" && drush cc all
