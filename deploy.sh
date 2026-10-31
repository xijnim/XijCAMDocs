#!/usr/bin/env bash

set -e

if [ $# -eq 0 ]
  then
    echo "No project path supplied"
    exit 1
fi

find . -maxdepth 1 -type f -not -name ".git" -not -name "deploy.sh" | xargs --no-run-if-empty rm
find "$1/docs/" -mindepth 1 -maxdepth 1 -printf '%P\n' | xargs -I {} cp -r $1/docs/{} ./{}
