---
title: Remote Working
parent: Common Use Cases
nav_order: 43
layout: default
---

## Remote Working

Learning and using shell commands is essential for efficient remote work in Software Engineering. Shell commands provide powerful tools for managing tasks over a network.

**Note:** To practice these commands, you'll need access to a remote system, which will be covered in the last session about networking.

---

### `tar`

- Description: A utility to manipulate archives.

- Example usage:

  ```bash
  tar -cvf archive.tar directory/ # Creating a tar archive from files in a directory
  tar -xvf archive.tar # Extracting files from a tar archive
  ```

---

### `wget`

- Description: A command-line utility for downloading files from the internet.

- Example usage:

  ```bash
  wget https://example.com/file.zip # Downloading a file from a URL
  wget -O output_filename.zip https://example.com/file.zip # Downloading a file and specifying an output filename
  ```

---

### `ssh`

- Description: Secure Shell protocol used for securely connecting to a remote system over a network.

- Example usage:

  ```bash
  ssh username@remote_host # Connecting to a remote server
  ssh -p 2222 username@remote_host # Connecting to a remote server on a specific port (default port is 22)
  ```

---

### `scp`

- Description: Securely copy files between a local and a remote system using Secure Copy Protocol (SCP).

- Example usage:

  ```bash
  scp username@remote_host:/remote/file.txt /local/directory/ # Copying from remote to local
  scp /local/file.txt username@remote_host:/remote/directory/ # Copying from local to remote
  ```

---

<!--
### ``

- Description:

- Example usage:

  ```bash

  ```

---

### ``

- Description:

- Example usage:

  ```bash

  ```

---

### ``

- Description:

- Example usage:

  ```bash

  ```

---

### ``

- Description:

- Example usage:

  ```bash

  ```

---

### ``

- Description:

- Example usage:

  ```bash

  ```

---

### ``

- Description:

- Example usage:

  ```bash

  ```

--- -->
