#!/usr/bin/env bash

set -e

wget http://nightly.openerp.com/7.0/nightly/src/openerp-7.0-latest.tar.gz

mkdir tmp
tar -xf openerp-7.0-latest.tar.gz -C tmp
mv tmp/* openerp
rmdir tmp

pwd
ls
cd openerp
python setup.py install
