---
title: Docker
nav_order: 50
has_children: true
layout: default
---

## What is Docker

Docker is a lightweight, open-source software application used to develop, test and deploy applications easily and quickly.

## Why would we use Docker

Imagine you’re developing a program and need to send it to someone else. You share your code with them, but it doesn’t work on their system. After checking, you realize it’s because you had installed extra libraries and packages on your computer that they didn’t have. Docker solves this problem by letting you package everything your program needs—like libraries, dependencies, and settings—into something called a 'container.' A container ensures your app works the same way, no matter where it’s run, whether it’s on your computer, their computer, or a server.

## Docker vs Virtual Machine

Vm’s are a powerful isolation tool that runs a computer in your computer, however they require a lot of resources. If you do not need to run resource intensive applications then Docker is a more lightweight portable solution

- Vm’s provide a full isolation sandbox while the docker shares the host OS kernel only isolating applications at the process level
- Vm’s require more allocation of hardware resources to run an instance, while docker shares the host OS kernel using less hardware resource.
- Vm’s require more time to start as they need to boot up an entire operating system while containers start almost instantly
