#!/usr/bin/env bash
cd "${BASH_SOURCE%/*}/" || exit

JSON_FILE=../cookiecutter.json
YAML_FILE=../cookiecutter.yaml

if [ -f "$JSON_FILE" ]; then
   rm "$JSON_FILE"
   echo "Removed JSON file"
fi

if [ -f "$YAML_FILE" ]; then
   echo "Converting yaml to json"
   python yaml2json.py "$YAML_FILE" "$JSON_FILE"
fi

echo "Building the jupyter book"
jupyter-book build ../book/

if [ -d "../book/_build/html/assets" ]; then
   rm -rf ../book/_build/html/assets
   echo "Removed jupyterbook assets"
fi
  
echo "building the splash page"
cookiecutter ../. -f --no-input -o ../book/_build