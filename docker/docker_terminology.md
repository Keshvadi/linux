---
title: Docker Terminology
parent: Docker
nav_order: 51
layout: default
---

## Terminolgy

This section focuses on the terminolgy that you will see when you first start working with Docker.

---

## Docker Architecture

At a glance the Docker terminolgy can appear incredibly confusing, however it is not as confusing as you would think...

### Docker Engine

The Docker Engine can be thought of as the heart of the docker program and it contains 3 components...

- **_Docker Daemon_** : The Background service that manages images, containers, networks and volumes.

- **_Docker CLI_** : Contains the commands used to interact with Docker.

- **_Docker Rest API_** : A way for the tools to interact with Docker programmatically.

### Images
Think of the image as a blueprint that contains the extra libraries, dependencies and runtime of your code.

### Containers

Containers are the actual utilization of the Images, running in a separate environment (Containers are considered lightweight because they share the operating system of the host machine but are isolated from other containers.)

### Volumes

Volumes store data that a container uses and generates (*sort of like a save file*) This is important because when containers stop running, the data inside the container is lost. Volumes will save the data so that it can be used again later.

### Networks

Networks allow containers to communicate with each other or connect to outside (*For example a webserver needing a database container*)

### Registries

Registries resemble an app store format where images can be stored, shared and downloaded. You can refer to the [DockerHub Quickstart](https://docs.docker.com/docker-hub/quickstart/) to get started with registries

### Compose (_Advanced Topic_)

Simply put, Docker compose is a tool that allows you to manage and interface all your docker containers in a single file (*Stored in a "**_YAML ~ .yml_** format*)

---

## Dockerfile

The Dockerfile contains the details needed for Docker to build a container image. It will contain information such as... - Your base operating system - Required dependencies - Commands to be executed when the container runs

**Note** : You must build the Dockerfile yourself!! (see the 'Creating a Dockerfile' tab )
