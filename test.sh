#!/usr/bin/env bash
ADDONS_PATH=addons,web/addons,openerp-connector,`pwd`
MODULES_UNDER_TEST=connector_file
DBNAME=travis_ci_test
OPTIONS="--addons-path=$ADDONS_PATH -i $MODULES_UNDER_TEST -d $DBNAME --stop-after-init"
cd ..
server/openerp-server $OPTIONS
server/openerp-server $OPTIONS --test-enable --log-level=test
