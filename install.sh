#!/bin/bash
set -e
rm -rf tmp
git clone https://github.com/pustovitDmytro/awesome-contributions tmp
cd tmp

python3 -m pip install -r requirements.txt
python3 gen.py --config ../config.py

echo 'generated!'