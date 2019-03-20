#!/bin/sh
set -e
echo "running markdownlint"
sh -c "mdl $*"