#!/bin/bash
set -e
git checkout -b gh_actions_tmp

git config --global user.name "pustovitDmytro"
git config --global user.email "dipustovit@gmail.com"

sh tmp/git.sh

echo 'done!'