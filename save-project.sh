#!/bin/bash

function save-project-to-repo() {
    git remote rm origin
    git remote add origin $1
    git push
}

gitRemotes=(
    git@github.com:Lifyzer/lifyzer.github.io.git
    git@bitbucket.org:pH_7/lifyzer-website.git
    git@gitlab.com:pH-7/lifyzer-website.git
)
for remote in "${gitRemotes[@]}"
do
    save-project-to-repo $remote
done
