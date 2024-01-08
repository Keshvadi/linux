---
title: User Management
parent: Advanced Commands
nav_order: 23
layout: default
---

## User Management in Linux

Understanding user management in Linux is important for system administration. Here are some essential commands and concepts:

---

### `passwd`

- Description: Allows changing a user's password.

- Example usage:

  ```bash
  passwd # Changes the password for the current user
  sudo passwd newuser # Sets a password for 'newuser'
  ```

---

### `adduser`

- Description: Adds a new user to the system.

- Example usage:

  ```bash
  adduser new_user # Creates a new user named 'new_user'
  ```

---

### `deluser`

- Description: Removes a user account from the system, along with associated files.

- Example usage:

  ```bash
  sudo deluser newuser # Removes the user account 'newuser'
  ```

---

### `usermod`

- Description: Modifies existing user accounts, changing user properties like username, group membership, or home directory.

- Example usage:

  ```bash
  sudo usermod -aG sudo newuser # Adds 'newuser' to the 'sudo' group
  ```

---

<!-- ### ``

- Description:

- Example usage:

  ```bash

  ```

--- -->
