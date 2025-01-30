---
title: Docker Commands
parent: Docker
nav_order: 54
layout: default
---

## Docker Commands

**Note:** you will have to use _sudo_ when using docker commands until you add your user to the Docker User group. For example...
`bash 
    sudo docker (command)
    `

'_my container_' will be the example name for the commands below

---

### `--help`

- Shows all the available commands for Docker
  ```bash
  docker --help
  ```

---

### `pull`

- Download an image (ubuntu for example)
  ```bash
  docker pull ubuntu:22.04
  ```

---

### `images`

- Shows the images currently on your system
  ```bash
  docker images
  ```

---

### `run`

- Run a container using image of your choice (ubuntu for example)
  ```bash
  docker run --interactive --tty --name my_container ubuntu:22.04
  ```

---

### `ps`

- See what docker containers are currently running (-a means to show all)
  ```bash
  docker ps -a
  ```

---

### `rm`

- Delete a container
  ```bash
  docker rm my_container
  ```

---

### `rmi`

- Delete a docker image
  ```bash
  docker rmi my_container
  ```

---

### Adding another terminal to the same container

    ```bash
    docker exec -it my_container /bin/bash
    ```

---

### Binding a volume

    ```bash
    docker run -it --rm --name my_container -v $(pwd):/usr/src/project -w /usr/src/project ubuntu:22.04
    ```

**_Note:_** for windows users: Replace $(pwd) with %cd% or ${PWD} for command prompt or powershell, respectively. Windows also forces all mounts to be on the C drive.

---

### Copying Containers

- Copy a file from container to local host
  ```bash
  docker cp my_container:usr/src/project/file .
  ```
- Copy a file from local host to container
  ```bash
  docker cp file my_container:/usr/src/project
  ```
