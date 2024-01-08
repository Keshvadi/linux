---
title: More Advanced Commands
parent: Advanced Commands
nav_order: 21
layout: default
---

### `history`

- Description: Displays a list of previously executed commands in the terminal session.

- Example usage:

  ```bash
  history
  ```

**Note:** You can reuse specific commands using `!` followed by the command's sequence number from the history output. For example, `!3` will re-run the command at sequence number 3.

---

### `grep`

- Description: Searches for text patterns within files.

- Example usage:

  ```bash
  grep "sample" sample.txt # search for the term "sample" within sample.txt
  grep -i "error" /var/log/syslog # The `grep` command with the `-i` option searches case-insensitively for the term "error" within the /var/log/syslog file.
  ```

**Note:** While these examples showcase the basics of usage of a command, these tools are more sophisticated.

- For instance, if you forget which file contains specific information (e.g., a list of fruits), grep with the -r flag allows searching through directories and subdirectories to quickly locate the elusive content.

  ```bash
  grep -r "apple" . # -r performs a recursive search within the current directory and all of its subdirectories.
  grep -r -w "apple" . # -w matches whole words only.
  ```

---

### `find`

- Description: Searches for files and directories within a specified directory hierarchy.

- Example usage:

  ```bash
  find . -type f -name "*.txt" # search for all .txt files within the current directory (.)
  ```

---

### `sort`

- Description: Sorts lines of text files alphabetically or numerically.

- Example usage:

  ```bash
  sort data.txt # Sorting lines in alphabetical order.
  sort -rn numbers.txt # Sorting lines in reverse numerical order.
  ```

---

### `shuf`

- Description: Shuffles lines of text randomly.

- Example usage:

  ```bash
  shuf playlist.txt # Shuffling lines in a file named `playlist.txt`
  shuf -n 1 quotes.txt # Selecting a random line from `quotes.txt`
  ```

---

### `uniq`

- Description: Filters and displays adjacent matching lines in a file, showing only unique lines.

- Example usage:

  ```bash
  uniq data.txt # Removing adjacent duplicate lines from `file.txt`
  uniq -c data.txt # Displaying only unique lines along with the count of occurrences
  ```

---

### `sed`

- Description: sed stands for "stream editor" and is a powerful command-line tool for manipulating text
  in Linux. It can perform a variety of text editing operations, including searching, replacing,
  inserting, and deleting text.

- Example usage:

  ```bash
  sed 's/old_text/new_text/' content.txt # Substituting text in a file named `content.txt`
  sed -i ’s/apple/orange/’ fruits.txt # Searches for the word ”apple” in the file ”fruits.txt” and replaces it with the word ”orange”
  sed '/pattern/d' data.txt # Deleting lines matching a pattern from `data.txt`
  ```

---

### `cut`

- Description: Extracts specific portions (columns) of lines from files.

- Example usage:

  ```bash
  cut -d ':' -f 1 data.txt # Extracting the first column (delimited by `:`) from a file named `data.txt`
  cut -c 3-7 names.txt # Extracting characters 3 to 7 from each line in a file named `names.txt`
  ```

---

### `tar`

- Description: A utility to manipulate archives.

- Example usage:

  ```bash
  tar -cvf archive.tar directory/ # Creating a tar archive from files in a directory
  tar -xvf archive.tar # Extracting files from a tar archive
  ```

---

<!-- ### ``

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
