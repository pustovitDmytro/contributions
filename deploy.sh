#!/bin/bash
set -e
git remote add origin https://user-name:$GITHUB-TOKEN@github.com/pustovitDmytro/contributions.git
git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed"
git branch -m travis_tmp travis_deploy
git push -f origin travis_deploy