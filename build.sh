#!/bin/bash
set -e

date '+%A (%e %B)' >> README.md
# sh tmp/git.sh

echo 'done!'