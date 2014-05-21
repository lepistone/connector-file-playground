#!/usr/bin/env bash
openerp/openerp-server --stop-after-init --addons-path=. -i connector_file -d travis_ci_test
openerp/openerp-server --stop-after-init --addons-path=. -i connector_file -d travis_ci_test --test-enable --log-level=test
