#!/bin/sh

BRANCH=$1
if [ -z $BRANCH ]; then
    BRANCH=master
fi
echo "当前对比的分支为$BRANCH"

SquashCount=$(git rev-list --count $BRANCH..)

echo "待合并的commit数量为$SquashCount"
if [ $SquashCount -lt 2 ]; then
    echo "commit数量少于2，不需要squash"
    exit
fi

git reset --soft $(git merge-base HEAD $BRANCH)
