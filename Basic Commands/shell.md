---
title: The Shell
nav_order: 11
parent: Basic Commands
layout: default
---

## Using the shell

When you launch your terminal, you will see a prompt that often looks a little like this:

```bash
ubuntu@ip-10-0-0-63:~$ 
```

This is the main textual interface to the shell. It tells you that you are on the machine ip-10-0-0-63 and that your "current working directory", or where you currently are, is \~ (short for “home”). The \$ tells you that you are not the root user (more on that later). At this prompt you can type a command, which will then be interpreted by the shell. The most basic command is to execute a program:

```bash
ubuntu:~$ date
Thu Jan  4 09:20:35 AM PST 2024
```

Here, we executed the **`date`** program, which (perhaps unsurprisingly) prints the current date and time. The shell then asks us for another command to execute.

But how does the shell know how to find the date or echo programs? 
Well, the shell is a programming environment, just like Python or Ruby, and so it has variables, conditionals, loops, and functions. When you run commands in your shell, you are really writing a small bit of code that your shell interprets. If the shell is asked to execute a command that doesn’t match one of its programming keywords, it consults an environment variable called `$PATH` that lists which directories the shell should search for programs when it is given a command.

## Flags and Options

Most commands accept flags and options (flags with values) that start with `-` to modify their behavior. Usually, running a program with the `-h` or `--help` flag will print some help text that tells you what flags and options are available.

For example, `ls` lists contents of the current directory, `ls -l` shows more detailed information, and `ls -a` displays hidden files.
