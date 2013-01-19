#!/bin/bash

# Populate Apache configuration.
# You will need to enable the sites after running this script.

HOME_DIR=/home/ubuntu
TUKEY_MIDDLEWARE=$HOME_DIR/tukey-middleware
TUKEY_SITE=$HOME_DIR/tukey-site
APACHE_SITES_AVAILABLE=/etc/apache2/sites-available

for site_name in auth glance nova 
do
	ln -s $TUKEY_MIDDLEWARE/bin/${site_name}-apache.conf $APACHE_SITES_AVAILABLE/${site_name}
done

ln -s $TUKEY_SITE/tukey/openstack-dashboard.conf $APACHE_SITES_AVAILABLE/openstack-dashboard.conf
