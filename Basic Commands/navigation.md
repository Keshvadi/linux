---
title: Navigation
parent: Basic Commands
nav_order: 12
layout: default
---

## Navigating The Shell

When connected to a Linux system via the shell, understanding navigation is important. Here are some essential commands:

### `pwd`

- Description: Prints the current working directory.

- Example usage:

    ```bash
    ubuntu:~$ pwd # Shows the current directory's path
    /home/user
    ```

### `ls`

- Description: Lists contents of the current directory.

- Example usage:

  ```bash
  ubuntu:~$ ls # Displays the contents of the current directory
  file1.txt folder1 folder2
  ```

### `mkdir`

- Description: Creates directories.

- Example usage:

    ```bash
    ubuntu:~$ mkdir new_folder # Generates a new directory named 'new_folder'
    ```

### `cd`

- Description: Changes directories.

- Example usage:

  ```bash
  ubuntu:~$ cd my_folder      # Moves into a directory named 'my_folder'
  ubuntu:~/my_folder$ cd ..    # Navigates to the parent directory
  ubuntu:~$ cd ~/Documents    # Changes to the 'Documents' directory in the user's home folder
  ubuntu:~$ cd -               # Returns to the previous directory
  ubuntu:~$ cd /               # Navigates to the root directory (top-level directory)
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

Mastering these navigation commands helps you traverse through directories seamlessly within the Linux system (particularly important when working with a remote system).

<!-- to-do 
- add tree command 
- -->