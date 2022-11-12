#REM Author: 2harden
#REM Created Time: 2022/11/12
#REM Release: 1.1
#REM Description: sparse checkout

#! /usr/bin/bash
git_url=https://github.com/2harden/NiukeProblem.git
sparse_file=Factory

shopt -s extglob  # 开启通配符功能
rm -rf !(sparse_checkout.sh) # 删除目录下所有除了 sparse_checkout.sh 文件的文件
rm -fr .git
rm -rf .gitignore
git init
git checkout -b main
git branch -d master
git remote add -f origin $git_url
git config core.sparsecheckout true # 开启 sparsecheckout 功能
git sparse-checkout init
echo "$sparse_file" > .git/info/sparse-checkout
git pull origin main