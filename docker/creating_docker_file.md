---
title: Creating a Dockerfile 
parent: Docker
nav_order: 
layout: default
---

## The Dockerfile 
If you skipped straight through to this part, a Dockerfile is just the instructions to build an image. It contains the commands to run, files to copy, startup commands etc... 

You can review [Writing a Dockerfile](https://docs.docker.com/get-started/docker-concepts/building-images/writing-a-dockerfile/) for a list of instructions, what they are for and how to create the Dockerfile. Here are just a couple to get you started

---

## Dockerfile Instructions

### `FROM`
- 'FROM' specifies the base image that the container will build upon and is the first instruction in the file
    ```bash 
    FROM ubuntu:22.04
    ```

---

### `WORKDIR` 
- 'WORKDIR' specifies the working directory / path in the image where files will be copied and where commands will be executed
    ```bash
    WORKDIR /<your path>
    ```

---

### `COPY` 
- 'COPY' tells the builder to copy files from the host path into the container image
    ```bash
    COPY <host path> /<image path>
    ```

---

### `RUN`
- 'RUN' tells the builder to run any desired command
    ```bash 
    RUN apt-get install -y vim-tiny
    ```

---

### `ENV`
- 'ENV' sets an environment variable that the running container will use
    ```bash 
    ENV MY_NAME="Sina"
    ```

---

## Sample file 

```bash
FROM ubuntu:22.04

LABEL org.opencontainers.image.title="My First Docker Container"
LABEL org.opencontainers.image.authors="EXAMPLE@email.com"
LABEL org.opencontainers.image.description="An example Dockerfile to learn how to write Dockerfiles."

ARG DEBIAN_FRONTEND=noninteractive
ARG SRC_DIR=/usr/src/
ENV MY_NAME="EXAMPLE_NAME"

RUN sed 's@archive.ubuntu.com@mirror.it.ubc.ca/ubuntu@' -i /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y vim-tiny
RUN apt-get install -y git
RUN apt-get install -y openssh-client
RUN apt-get install -y build-essential gcc g++ make autoconf autopoint pkg-config bison wget gperf gettext texinfo

RUN git clone git://git.sv.gnu.org/coreutils /usr/src/coreutils
WORKDIR $SRC_DIR/coreutils
RUN git submodule update --init --recursive
RUN ./bootstrap
RUN FORCE_UNSAFE_CONFIGURE=1 ./configure
RUN make -j8
RUN make install

ENTRYPOINT echo Hello $MY_NAME, you are logged in as $(whoami) && bash
```
---

## Next steps 
- Building the Dockefile
    ```bash 
    docker build --no-cache . --tag my_first_image:latest --tag my_first_image:1.0.0
    ```
- Inspecting the image 
    ```bash 
    docker inspect my_first_image:latest
    ```



