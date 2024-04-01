# Infrastructure

Repository to embed on others providing them of Docker deployments.

Build the images, **base** must be built before **dev** or **release**

```shell
./build.sh
```

or

```shell
cd base && docker compose build
cd dev && docker compose build
cd release && docker compose build
```

Use the images by creating a new *docker-compose.yml* and defining services that extend the ones on the root of this repo. Or by using as a base image one of the built ones.

```yml
version: "3.8"
services:
  app:
    image: jcb/release/golang:latest
    tags:
        - latest

  app-dev:
    image: app-dev:latest
    extends:
        file: infra/docker-compose.yml
        service: golang
```

## base

Shared images between dev and release.

## dev

Images with developer tools and ssh.

## release

Images capable of running an application of the given language.

## images

- golang
- node
- rust
- python
- gcc
