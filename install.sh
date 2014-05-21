#!/usr/bin/env bash

set -e

cd ..
git clone --depth 1 -b ocb-7.0 git://github.com/akretion/openerp-server server
git clone --depth 1 -b ocb-7.0 git://github.com/akretion/openerp-addons addons
git clone --depth 1 -b ocb-7.0 git://github.com/akretion/openerp-web web

apt-get install bzr
bzr checkout --lightweight lp:openerp-connector

python server/setup.py --quiet install
