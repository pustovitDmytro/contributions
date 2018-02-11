#!/bin/bash
set -e
git checkout -b travis_tmp
sh tmp/git.sh

echo 'done!'