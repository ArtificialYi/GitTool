#!/bin/bash

git checkout master
git fetch --prune
git rebase
# 被云删除的分支
git branch -vv | grep ': 丢失]' | awk '{print $1}' | xargs -r -n 1 git branch -D
# 合并过的分支
git branch --merged master | grep -v "\* master" | xargs -r -n 1 git branch -d
# 不在云上的tag-sh不可用，bash/zsh可用
comm -23 <(git tag | sort) <(git ls-remote --tags origin | awk -F/ '{print $3}' | sort) | xargs git tag -d
