#!/bin/bash

REPO=${PWD##*/}
GHUSER=$(git config github.user)

echo "Create repository \"${REPO}\" on github.com for user \"${GHUSER}\"..."

# Curl some json to the github API oh damn we so fancy
curl -u "${GHUSER}" https://api.github.com/user/repos -d "{\"name\": \"${REPO}\"}"

# Set the freshly created repo to the origin and push
# You'll need to have added your public key to your github account
git remote set-url origin git@github.com:${GHUSER}/${REPO}.git
git push --set-upstream origin master
