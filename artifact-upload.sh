#! /bin/bash
 
local_file="$(ls $TRAVIS_BUILD_DIR/gameoflife-web/target/*.war | head -n 1)"
target_url='.'
