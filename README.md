# github-actions-arm64-docker-image-build

[![Docker Multiarch Image CI](https://github.com/nicolas-van/github-actions-multiarch-docker-image-build/actions/workflows/docker-multiarch-image.yml/badge.svg)](https://github.com/nicolas-van/github-actions-multiarch-docker-image-build/actions/workflows/docker-multiarch-image.yml)

An example github actions configuration to build a docker image for the following systems:

* linux/amd64
* linux/arm64 (t4g instances on AWS)
* linux/arm/v7 (newer Raspberry Pis)
* linux/arm/v6 (older Raspberry Pis)