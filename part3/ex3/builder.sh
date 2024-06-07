#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

github_repo=$1
dockerhub_repo=$2

rm -rf dst
mkdir dst

echo "Specified GitHub repository: ${github_repo}"
echo "Specified DockerHub repo:    ${dockerhub_repo}"

git clone "git@github.com:${github_repo}.git" dst
docker build --no-cache --tag "${dockerhub_repo}" dst/
docker push "${dockerhub_repo}"