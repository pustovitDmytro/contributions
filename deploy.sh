#!/bin/bash
set -e
git remote rm origin
git remote add origin https://pustovitDmytro:$token@github.com/pustovitDmytro/contributions.git
date '+%A (%e %B)' >> README.md
git add .
git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed"
git branch -m travis_tmp travis_deploy
git push -f origin travis_deploy
curl -X PATCH \
  https://api.github.com/repos/pustovitDmytro/contributions \
  -H "Authorization: token $token" \
  -H 'Content-Type: application/json' \
  -d '{"default_branch": "travis_deploy"}'
