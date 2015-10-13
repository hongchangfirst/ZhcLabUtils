#!/bin/sh

current_branch=$(git branch| grep "*"| tr -d "* ")
echo "current branch: "$current_branch
git push share $current_branch

ssh -l user hongchangfirst.zhclab.com "/workplace/user/project/src/ZhcLib/pull.sh"
