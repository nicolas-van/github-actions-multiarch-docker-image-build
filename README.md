# github-actions-arm64-docker-image-build

[![Docker Multiarch Image CI](https://github.com/nicolas-van/github-actions-multiarch-docker-image-build/actions/workflows/docker-multiarch-image.yml/badge.svg)](https://github.com/nicolas-van/github-actions-multiarch-docker-image-build/actions/workflows/docker-multiarch-image.yml)

An example Github Actions configuration to build a Docker image for the following systems:

* linux/amd64 (typical x86-64 architecture)
* linux/arm64 (t4g instances on AWS)
* linux/arm/v7 (newer Raspberry Pis)
* linux/arm/v6 (older Raspberry Pis)

You can see the workflow configuration here: [`.github/workflows/docker-multiarch-image.yml`](./.github/workflows/docker-multiarch-image.yml). It should work for most projects as long as a `Dockerfile` exists at the root of the repository.

This repository builds an example http server in Node.js displaying a "Hello World" for these four architectures. It was tested on the following machines:

* An x86-64 Windows using Docker for Windows.
* An AWS t4g instance using an ARM64 processor.

No tests were performed on Raspberry Pis because I'm lazy.

You can test these images yourself by using this command:

```bash
docker run --rm -it -p 8080:8080 ghcr.io/nicolas-van/github-actions-multiarch-docker-image-build:latest
```

It will run the Docker image and you should be able to see the "Hello World" message by connecting to port `8080` using your web browser.

You can also see metadata about the published Docker images in the [Package page](https://github.com/nicolas-van/github-actions-multiarch-docker-image-build/pkgs/container/github-actions-multiarch-docker-image-build).