#!/bin/bash

trap 1 2 3 4 9 15

if [ ${GITHUB_ACCOUNT} = "" ]; then
    exit 1
fi

if [ ${GITHUB_REPOSITORY_NAME} = "" ]; then
    exit 1
fi

if [ ${DIRECTORY_NAME} = "" ]; then
    DIRECTORY_NAME=${GITHUB_REPOSITORY_NAME}
fi

rm -rf ${DIRECTORY_NAME}
git clone https://github.com/${GITHUB_ACCOUNT}/${GITHUB_REPOSITORY_NAME}.git ${DIRECTORY_NAME}

exit 0
