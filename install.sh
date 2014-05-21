#!/usr/bin/env bash

set -e

cd ..
git clone --depth 1 -b ocb-7.0 git://github.com/akretion/openerp-server server
git clone --depth 1 -b ocb-7.0 git://github.com/akretion/openerp-addons addons
git clone --depth 1 -b ocb-7.0 git://github.com/akretion/openerp-web web

bzr checkout --lightweight lp:openerp-connector
pwd
python server/setup.py --quiet install
