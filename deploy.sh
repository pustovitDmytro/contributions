#!/bin/bash
set -e
git remote rm origin
git remote add origin https://pustovitDmytro:$token@github.com/pustovitDmytro/contributions.git
date '+%A (%e %B)' >> README.md
git add .
git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed"
git branch -m travis_tmp travis_deploy
git push -f origin travis_deploy