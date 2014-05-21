#!/usr/bin/env bash
pwd
HOME=`pwd`
cd ..
ls
server/openerp-server --stop-after-init --addons-path=addons,web/addons,$HOME -i connector_file -d travis_ci_test
server/openerp-server --stop-after-init --addons-path=addons,web/addons,$HOME -i connector_file -d travis_ci_test --test-enable --log-level=test
