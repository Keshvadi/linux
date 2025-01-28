---
title: Pipe
parent: Advanced Commands
nav_order: 31
layout: default
---

## Pipe

When you work in Windows, macOS, and most other operating systems, you probably spend your time running applications like web browsers, word processors, spreadsheets, and games. A typical application is packed with features: everything that the designers thought their users would need. So, most applications are self-sufficient.

<!-- They don’t rely on other apps. You might copy and paste between applications from time to time, but for the most part, they’re separate. -->

The Linux command line is different. Instead of big applications with tons of features, Linux supplies thousands of small commands with very few features. The command `cat`, for example, prints files on the screen and that’s about it. `ls` lists the files in a directory, `mv` renames files, and so on. Each command has a simple, fairly well-defined purpose. Linux makes it easy to combine commands so their individual features work together to accomplish your goal. This way of working yields a very different mindset about computing. Instead of asking _Which app should I launch?_ to achieve some result, the question becomes _Which commands should I combine?_.

The `|` operator lets you to connect the output of one command to the input of another command. This allows for powerful command chaining and the ability to perform complex operations using simple commands. The syntax for using the pipe is as follows:

- Example usage:

```bash
    command1 | command2 # Pipes the output of 'command1' as input to 'command2'
```

```bash
    ls -l | sort -k 5rn # Lists files in long format and pipes the output to sort files by the fifth column in reverse numerical order
```

```bash
    cat file1.txt file2.txt | sort > sorted_combined.txt # Concatenates content from 'file1.txt' and 'file2.txt', then sorts the combined content and saves it to 'sorted_combined.txt'
```

```bash
    cat file.txt | sort | uniq # Sorting and getting unique lines in a file
```

```bash
    ls -l | awk '{print $5}' # Prints the file sizes from ls -l command
```

```bash
    ps -aux | grep "firefox" # Lists details of running processes related to Firefox
```

```bash
    cat app.log | grep "ERROR" # Displays lines containing 'ERROR' in app.log
```

```bash
    du -ah | sort -rh | head -n 5 # Lists the top 5 largest files in a directory
```

```bash
    cat romeo_and_juliet.txt | grep -i "romeo" | wc -l # Counts the occurrences of "Romeo" (case-insensitive) in the text file
```

```bash
    shuf data.txt | head -n 10 > newfile.txt # Shuffles the lines in 'data.txt', selects the first 10 lines, and saves them in 'newfile.txt'
```

<!--
```bash

```

```bash

``` -->
<!--
**Note:** `|` command, commonly known as the "pipe" command, is a powerful feature that allows you to chain commands together by passing the output of one command as input to another. This command concatenates the content of file1.txt and file2.txt using `cat`, then sorts the combined content using `sort`, and finally writes the sorted output to sorted_combined.txt. -->
