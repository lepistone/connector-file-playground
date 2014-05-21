#!/usr/bin/env bash

set -e

cd ..
git checkout --depth 1 -b ocb-7.0 git://github.com/akretion/openerp-server server
git checkout --depth 1 -b ocb-7.0 git://github.com/akretion/openerp-addons addons
git checkout --depth 1 -b ocb-7.0 git://github.com/akretion/openerp-web web

cd server
python setup.py --quiet install
