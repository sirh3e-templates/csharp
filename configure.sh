#!/usr/bin/env sh
set -e
set -u

#setup git hooks
cp ./scripts/git/pre-commit .git/hooks

#make things
make restore