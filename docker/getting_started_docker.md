---
title: Getting Started in Docker 
parent: Docker
nav_order: 
layout: default
---

## Installation 

This section will focus on installation for Linux on Ubuntu however links to download and install are hyperlinked

- [Windows](https://docs.docker.com/desktop/setup/install/windows-install/ )

- [Mac](https://docs.docker.com/desktop/setup/install/mac-install/ )

---
## Linux 

There are many ways to install docker for Linux, this segment will only focus on the general installation for Ubuntu.
Refer to _[Install Docker Engine](https://docs.docker.com/engine/install/)_ for more details on different version and distros 

1. You need to setup the docker repository for your system.

 This ensures your system is installing official packages from Docker. This guarantees you are getting the latest updates, security updates and features directly from Docker 

    ```bash
    # Add Docker's official GPG key:
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources:
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    ```

2. Install the Docker packages (And update Docker)
    ```bash
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
    ```

3. Test the docker installation with this command 
    
    ```bash
    sudo docker run hello world
    ```
    
    **_Note:_**(You must run docker commands with sudo, you can refer to [_linux postinstall_](https://docs.docker.com/engine/install/linux-postinstall/) to configure the Docker user group and mitigate this)



