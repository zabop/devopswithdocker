#!/bin/bash

# example call: ./builder.sh mluukkai/express_app zabop/testing

set -o errexit
set -o nounset
set -o pipefail

github_repo=$1
dockerhub_repo=$2

rm -rf dst
mkdir dst

echo "Specified GitHub repository: ${github_repo}"
echo "Specified DockerHub repo:    ${dockerhub_repo}"

git clone "https://github.com/${github_repo}.git" dst
docker build --no-cache --tag "${dockerhub_repo}" dst/

docker login -u="${DOCKER_USER}" -p="${DOCKER_PWD}"
docker push "${dockerhub_repo}"