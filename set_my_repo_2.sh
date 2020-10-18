#!/bin/bash
read -p "repository name : " repo_name
read -p "folder name : " folder_name
git clone ${repo_name} ${folder_name}
cp -R stock_my_utilities/* ./${folder_name}
