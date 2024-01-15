---
title: Basic Commands
nav_order: 10
has_children: true
layout: default
---

## Prepare Your System for Tutorials

Before jumping into the tutorials, run the following commands to set up your system for working with the provided examples. 
Follow these steps:.

1. Download the sample files by right-clicking on this [link](./src/files.zip) and selecting "Copy link address."
2. Open your terminal and use the following commands, replacing `Your_URL` with the actual URL you just copied:

```bash
cd home
apt install wget -y
apt install tar -y
wget Your_URL
tar -xvf src.zip
```

**Note:** If you encounter a "command not found" error when attempting to run a command, it means the required program is not installed. In such cases, you need to install the program first.

For example, to used 'apt install wget -y' to install a program called 'wget' to download sample files, and then installed 'tar' to unzip the file. You will learn morea about these commands in this tutorial.

