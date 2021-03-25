#!/usr/bin/env sh
set -e
set -u

#setup git hooks
cp ./scipts/git/pre-commit .git/hooks

#make things
make restore