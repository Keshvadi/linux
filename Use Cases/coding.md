---
title: Coding with the Shell
parent: Common Use Cases
nav_order: 41
layout: default
---

## Coding with the Shell

The command-line interface is a powerful tool for coding. It is a very common practice among developers to write, compile, and run code directly from the shell. Below are examples for C++ and Python.

### C++

Use a text editor like Nano, Vim, or Emacs to create a C++ file.
For example, to create a file named hello.cpp:

```bash
  nano hello.cpp
```

Inside the editor, write your C++ code. Here's a simple "Hello, World!" program in C++:

```c++
  #include <iostream>
  using namespace std;

  int main() {
      cout << "Hello, World!" << endl;
      return 0;
  }
```

To save and exit:

1. Press `Ctrl + X` to initiate the exit command.
2. Nano will prompt you to confirm. Press `Y` for yes.
3. Nano will then ask if you want to save changes. Press `Enter` to confirm.

Then Compile your C++ code using the g++ compiler. To install g++ compiler use this command:

```bash
  apt install g++
```

For example, if your code is in hello.cpp:

```bash
  g++ hello.cpp -o hello
```

This command compiles `hello.cpp` and creates an executable named `hello`.

Run the compiled C++ executable:

```bash
  ./hello
```

### Python

Create a Python file using a text editor like nano.
For instance, to create a file named hello.py:

```bash
  nano hello.py
```

Then write your code:

```python
  print("Hello, World!")
```

Save this code in a file with a .py extension, for example, hello.py, and then run it using the following command:

```bash
  python hello.py
```

Rememebr that you need to install python3 on your system first using:

```bash
  apt install python3
```

<!-- ### ``

- Description:

- Example usage:

  ```bash

  ``` -->

---
