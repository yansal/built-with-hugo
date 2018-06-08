#!/bin/bash -e

rm -fr public
git worktree add -B gh-pages public origin/gh-pages
hugo
git -C public add --all
git config user.email "you@example.com"
git config user.name "Your Name"
git -C public commit -m "Publishing to gh-pages" || exit 0
git push origin gh-pages
