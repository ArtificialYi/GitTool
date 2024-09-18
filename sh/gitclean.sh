#!/bin/sh

git checkout master
git fetch --prune
git rebase
# 被云删除的分支
git branch -vv | grep ': 丢失]' | awk '{print $1}' | xargs -n 1 git branch -D
# 合并过的分支
git branch --merged master | grep -v "\* master" | xargs -n 1 git branch -d