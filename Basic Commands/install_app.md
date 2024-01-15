---
title: Package Management
parent: Basic Commands
nav_order: 13
layout: default
---

## Package Management in Linux

Package management is important for installing, updating, and removing software packages within a Linux system. Here are some essential commands:

### `update`

- Description: Updates the local package index with the latest changes made in repositories.

- Example usage:

  ```bash
  sudo apt update
  ```

---

### `upgrade`

- Description: Upgrades all installed packages to their latest available versions.

- Example usage:

  ```bash
  sudo apt upgrade
  ```

**Note:** The `update` command fetches the latest package information, while `upgrade` actually installs the newer versions of the available packages on the system.

---

### `install`

- Description: Installs a specific package.

- Example usage:

  ```bash
  sudo apt-get install package_name
  sudo apt install code # Install Visual Studio Code
  ```

**Note:** You can use both apt and apt-get to install packages. `apt` is a newer version of `apt-get`. The `apt` command was designed as a more user-friendly alternative to `apt-get`, combining the functionality of multiple package management tools for user convenience. `apt-get` suits those requiring more specific package management functionalities.

---

### `dpkg`

- Description: Installs a package file directly.

- Example usage:

  ```bash
  sudo dpkg -i package_file.deb
  ```

---

### `remove`

- Description: Removes a specific package.

- Example usage:

  ```bash
  sudo apt remove package_name
  ```

---

### `purge`

- Description: Removes a package along with its configuration files.

- Example usage:

  ```bash
  sudo apt purge package_name
  ```

---

### `autoremove`

- Description: Removes packages that were automatically installed but are no longer required.

- Example usage:

  ```bash
  sudo apt autoremove
  ```

---

### `dpkg --list` and `apt list`

- Description: Displays a comprehensive list of all installed packages on the system.

- Example usage:

  ```bash
  dpkg --list
  apt list --installed
  ```

---

<!--
### ``

- Description:

- Example usage:

  ```bash

  ```

--- -->
<!--
### ``

- Description:

- Example usage:

  ```bash

  ```

--- -->
