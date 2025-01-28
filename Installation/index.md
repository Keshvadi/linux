---
title: Installation
nav_order: 99
has_children: false
layout: default
---

## Running Ubuntu in Docker

Follow these steps:

1. Open Docker on your Windows system.
2. Open Command Line on your Windows system.
3. Run the following command to start an Ubuntu container:

   ```bash
   docker run -it --rm ubuntu:22.04
   ```

4. Inside the Ubuntu container, run the following command to update it:

   ```bash
   apt update -y # Update the package list on your system

   unminimize # Install 'unminimize' to restore a minimal installation to a more complete state
   ```

5. Use `docker exec -it NAME /bin/bash` to attach a second terminal to the same container. `NAME` is the container ID.

6. You might need to install these packages on your docker:

   ```bash
   apt update -y
   apt upgrade -y
   apt install nano -y   # Install Nano text editor
   apt install g++ -y    # Install g++ compiler
   apt install telnet -y # Install Telnet client
   apt install python3
   apt install python3-pip
   apt install net-tools
   apt install tcpdump
   apt install iputils-ping
   ```

## Windows

- [Run Linux containers on Windows](https://ubuntu.com/tutorials/windows-ubuntu-hyperv-containers#1-overview)
