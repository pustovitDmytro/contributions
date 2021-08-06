#!/bin/bash
set -e
git remote rm origin
git remote add origin https://pustovitDmytro:$token@github.com/pustovitDmytro/contributions.git
date '+%A (%e %B)' >> README.md
git add .
git commit -m "Build $GITHUB_RUN_NUMBER pushed"
git branch -M gh_actions_tmp gh_actions_deploy
curl -X PATCH \
  https://api.github.com/repos/pustovitDmytro/contributions \
  -H "Authorization: token $token" \
  -H 'Content-Type: application/json' \
  -d '{"name":"contributions", "default_branch": "master"}'
git push -f origin gh_actions_deploy
curl -X PATCH \
  https://api.github.com/repos/pustovitDmytro/contributions \
  -H "Authorization: token $token" \
  -H 'Content-Type: application/json' \
  -d '{"name":"contributions", "default_branch": "gh_actions_deploy"}'
