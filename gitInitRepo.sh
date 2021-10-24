#!/bin/bash

if [ -d "$1" ]
then
    echo "Repository is exist"
else
    mkdir $1
    echo "Directory created"
fi
cd $1

echo "Current user.name `git config user.name`"
echo "Enter GitHub user.name for this repo: "
read name
echo "Current user.email `git config user.email`"
echo "Enter GitHub user.email for this repo: "
read email

git init .
git config user.email "$name"
git config user.name "$email"
dotnet new gitignore
echo ".gitignore created"

git add --all
git commit -m "Initial setup"