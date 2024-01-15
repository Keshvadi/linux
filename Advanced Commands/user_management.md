---
title: User Management
parent: Advanced Commands
nav_order: 23
layout: default
---

## User Management in Linux

Understanding user management in Linux is important for system administration. Here are some essential commands and concepts:

**Note:** When using Linux in a Docker container, you typically operate as the root user by default. However, it's not recommended to perform regular tasks as the root user due to the extensive privileges it possesses. It's advisable to switch to the root user only when necessary, such as when performing actions that require root privileges, like installing or removing packages.

---

### `passwd`

- Description: Allows changing a user's password.

- Example usage:

  ```bash
  passwd # Changes the password for the current user
  passwd newuser # Sets a password for 'newuser'
  ```

**Note:** If you are not logged in as the root user, use the `sudo` command before each command to execute these commands with root user privilege.

---

### `adduser`

- Description: Adds a new user to the system.

- Example usage:

  ```bash
  adduser new_user # Creates a new user named 'new_user'
  ```

---

### `su`

- Description: Switches the current user to another user.

- Example usage:

  ```bash
  su new_user # Switches to the 'new_user' account
  exit # Exits the current user session and returns to the previous user or root
  ```

---

### `deluser`

- Description: Removes a user account from the system, along with associated files.

- Example usage:

  ```bash
  deluser newuser # Removes the user account 'newuser'
  ```

---

### `usermod`

- Description: Modifies existing user accounts, changing user properties like username, group membership, or home directory.

- Example usage:

  ```bash
  usermod -aG sudo newuser # Adds 'newuser' to the 'sudo' group
  ```

---

<!-- ### ``

- Description:

- Example usage:

  ```bash

  ```

--- -->
