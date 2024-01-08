---
title: Navigation
parent: Basic Commands
nav_order: 11
layout: default
---

## Navigating The Shell

When connected to a Unix system via the shell, understanding navigation is important. In this section, we will review some essential commands.

<!-- Please note that the sample outputs provided in this documentation might differ from what you observe on your system due to variations in file names or contents. -->

---

### `pwd`

- Description: Prints the current working directory.

- Example usage:

  ```bash
  ubuntu:~$ pwd # Shows the current directory's path
  ```

From the next command, I'll only display the command itself without the preceding `ubuntu:~$`.

---

### `ls`

- Description: Lists contents of the current directory.

- Example usage:

  ```bash
  ls # Displays the contents of the current directory
  ls -l # Displays detailed information about files
  ls -a # Displays all files including hidden files
  ls -la # Displays all files including hidden files with detailed information
  ls -lt # Displays files sorted by modification time (latest first)
  ```

---

### `man`

- Description: Displays the manual pages for detailed information and usage instructions.

- Example usage:

  ```bash
  man ls
  ```

---

### `mkdir`

- Description: Creates directories.

- Example usage:

  ```bash
  mkdir new_folder # Generates a new directory named 'new_folder'
  ```

---

### `cd`

- Description: Changes directories.

- Example usage:

  ```bash
  cd my_folder      # Moves into a directory named 'my_folder'
  cd ..    # Navigates to the parent directory
  cd ~/Documents    # Changes to the 'Documents' directory in the user's home folder
  cd -               # Returns to the previous directory
  cd /               # Navigates to the root directory (top-level directory)
  ```

### Note: Directory Symbols

- `.` represents the current directory.
- `..` refers to the parent directory.
- `-` represents the previous directory visited, a quick navigation to the last accessed location.
- `~` denotes the home directory.
- `/` denotes the root directory.

### `*` (Asterisk)

- Description: Represents zero or more characters in a file or directory name.
- Example Usage (with `ls`):

  ```bash
  ls *.txt # Matches file1.txt, file2.txt, etc.
  ```

### `?` (Question Mark)

- Description: Denotes a single character within a file or directory name.
- Example Usage (with `ls`):

  ```bash
  ls file?.txt # Matches file1.txt, file2.txt, etc.
  ```

---

Mastering these navigation commands helps you traverse directories within the Linux system seamlessly, which is particularly important when working with a remote system.

<!-- to-do
- add tree command
- -->
