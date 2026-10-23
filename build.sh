#!/bin/bash
set -e
git checkout -b gh_actions_tmp

git config --global user.name "pustovitDmytro"
git config --global user.email "dipustovit@gmail.com"

# Background auto-maintenance in recent git races with the commit loop and fails it with exit 128
git config maintenance.auto false
git config gc.auto 0
sed -i -E '/^git (fsck|reflog|repack|prune|gc)( |$)/d' tmp/git.sh

sh tmp/git.sh

echo 'done!'