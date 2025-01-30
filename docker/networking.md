---
title: Networking in Docker
parent: Docker
nav_order: 56
layout: default
---

## Networking in Docker

Docker containers are isolated from eachother and the host machine to begin. Networking allows the containers to communicate with other containers, the host system and external systems like the internet.

---

## Network Types
1. **Bridge Network (the default type)**
- When unspecified, Docker connects containers to a Bridge Network by default. This network creates an isolated network environment where containers can communicate with each other but need port forwarding to access the host or outside world. 

    ```bash
    ## Create a Container with default network
    docker run -d --name my_container my_image

    ## Expose the ports (if you want to access the container’s
    ## services from your local machine (e.g., web server),
    ## map container ports to host ports:)
    docker run -d -p 8080:80 --name my_web_container my_web_image
    ```

2. **Host Network**
- The host network mode makes the container share the host’s network stack. This means the container does not have its own IP address but uses the host’s IP directly. Use this when you don't want to overhead of the Docker Bridge Network
    
    ```bash
    docker run --network host my_image

    ```

3. **None Network**
- This Network disables networking for the container, effectively isolating it from everything. 
    ```bash
    docker run --network none my_image
    ```
4. **Custom Bridge Network**
- Provides more control for network building where containers can communicate using their container names as hostnames. Use this when you want to group containers that need to communicate with each other and keep them isolated from other containers.
- *Containers on the Same Network Can Communicate by Name: If you have two containers [web and db for example], web can access db by simply using the name db:*

    ```bash
    ## Create the custom Network
    docker network create --driver bridge my_custom_network

    ## Run the containers
    docker run --network my_custom_network my_image

    ## Web acccessing db
    docker run --network my_custom_network --name web my_web_image
    docker run --network my_custom_network --name db my_db_image
    ```

5. **Overlay Network (Swarm Mode)**
- An Overlay Network is used when you have multiple Docker hosts (machines) in a Swarm cluster. It allows containers on different hosts to communicate as if they are on the same network. Use this when you need containers to communicate across different hosts.
    
    ```bash
    docker network create -d overlay my_overlay_network
    ```

6. **Macvlan Networks**
- A Macvlan Network gives each container its own IP address on the physical network, making it look like a separate physical device.
   
    ```bash
    ## create a Macvlan Network 
    docker network create -d macvlan --subnet=10.000.0.0/24 my_macvlan_network

    ## Run the containers on the Macvlan Network
    docker run --network my_macvlan_network my_image
    ```

--- 

## Troubleshooting and Management
You can inspect and manage networks with the following commands
```bash
    ## List your networks
    docker network ls

    ## Inspect a specific network
    docker network inspect my_custom_network

    ## Connect a running container to a different Network
    docker network connect my_custom_network my_container
```
