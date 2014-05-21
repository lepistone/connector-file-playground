#!/usr/bin/env bash
echo "YAY!"
openerp/openerp-server --stop-after-init --addons-path=. -i connector-file -d travis_ci_test
