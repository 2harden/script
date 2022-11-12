#REM Author: 2harden
#REM Created Time: 2022/11/12
#REM Release: 1.0
#REM Description: init repository

#! /usr/bin/bash
git_url=https://github.com/2harden/script.git

rm -fr .git
rm -rf .gitignore
git init
git checkout -b main
git branch -d master
git remote add -f origin $git_url
git pull origin main