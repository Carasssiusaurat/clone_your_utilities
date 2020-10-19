#!/bin/bash
if (( $# < 1 || 2 < $# ))
then
    >&2 echo "Missing arguments"
    exit 1
fi

repo_name=$1
folder_name=$(repo_name)

if (( $# == 2 ))
then
    folder_name=$2
fi

echo ${repo_name}

git clone ${repo_name} ${folder_name}
if (( $? != 0 ))
then
    >&2 echo "ERROR: check for the repository name"
    exit 1
fi

utilities_path=$(readlink -f stock_my_utilities)
if (( $? != 0 ))
then
    rm -rf ./folder_name
    >&2 echo "ERROR: Please ensure you got a \'stock_my_utilities\' folder"
    exit 1
fi

cp -R ${utilities_path}/* ./${folder_name}