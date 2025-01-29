---
title: User Management
parent: Advanced Commands
nav_order: 32
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

## Users and Groups in Linux

In Linux, each user is assigned a unique user ID, which is stored in `/etc/passwd`.

### View User Information

To view information about users, you can use the following commands:

```bash
cat /etc/passwd          # Display user information from /etc/passwd
id                       # Display the current user's ID
id <USER_NAME>           # Display the ID of a specific user
```

### Adding a New User

To add a new user, you can use the `adduser` command:

```bash
adduser bob              # Creates a new user named 'bob'
```

### Switching Users

To switch to another user, you can use the `su` (switch user) command:

```bash
su bob                   # Switch to the 'bob' account
exit                     # Exit the current user session and return to the previous user or root
```

### Viewing Groups

Groups represent a collection of users. Users can belong to multiple groups. A user's primary group information is stored in `/etc/group`.

```bash
cat /etc/group           # Display all groups
groups                   # Show the groups the current user belongs to
id                       # Display current user's ID, primary group ID, and group memberships
id bob                   # Display 'bob''s ID, primary group ID, and group memberships
```

### Creating and Modifying Groups

To create a group and add a user to the group, you can use the following commands:

```bash
groupadd admin           # Create a group named 'admin'
usermod -a -G admin bob  # Add 'bob' to the 'admin' group
id bob                   # Display 'bob''s ID, primary group ID, and group memberships
```

To remove a user from a group, you can use the `deluser` command.

### Users

In Linux, each user is assigned a unique user ID.
User ID is stored in /etc/passwd.

```bash
  cat /etc/passwd
```

To find a user id, run id command:

```bash
  id # returns the current user's id
  id <USER_NAME> # return the user_name's id
```

to add a new user, use “adduser” command:

```bash
adduser bob
```

to switch to another user use su (switch user) command:

```bash
su bob
```

to exit from a user account, use exit

```bash
exit # return back to the prevoius user
```

### Groups

Represent a group of users. You can assign permissions based on groups. A user can belong to multiple groups. A user’s primary group is in /etc/group.

to observe which group a user is belong to:

```bash
cat /etc/group # display all groups
groups # show the groupd that current user is belong to
id # shows current user's id, user's primary group id, and users' groups
id bob # shows user's id, user's primary group id, and users' groups
```

to create a group and add a user to the group:

```bash
groupadd admin # create a group admin
usermod -a -G admin bob # add bob to the admin group
id bob # shows user's id, user's primary group id, and users' groups
```

to remove a user from a group, use ???

```bash
# add an example here
```

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

---

<!-- ### ``

- Description:

- Example usage:

  ```bash

  ``` -->
