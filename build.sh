#!/bin/sh

set -e # exit when any command fails
set -v # echo commands

# start from scratch each time
rm -rf docs
mkdir docs

# config
cp CNAME docs/CNAME

# style
bssg lessc style.less > docs/style.css

# top-level pages
cp webring.txt docs/webring.txt
bssg pugc pug/index.pug > docs/index.html
