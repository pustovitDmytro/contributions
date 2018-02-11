#!/bin/bash
set -e
git checkout -b travis_tmp
date '+%A (%e %B)' >> README.md
sh tmp/git.sh

echo 'done!'