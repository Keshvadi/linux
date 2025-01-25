---
title: Getting Started in Git (Tutorial)
parent: Git and Github
nav_order: 
layout: default
---

## Installation

Make sure you have Git installed 
    ```bash 
    sudo apt install git
    ```

Verify with 
    ```bash 
    git --version
    ```

---

## Create a Repository
1. Create a new repo 
    ```bash
    git init --initial-branch=main
    ```

2. Write a simple "Hello World" program 
    ```bash
    #include <iostream>
    int main() 
    {
        std::cout << "Hello World!" << std::endl;
        return 0;
    }
    ```

3. Compile it 
    ```bash 
    g++ hello.cpp
    ```

4. Make sure it runs
    ```bash 
    ./a.out
    ```
    Then see what has changed in the repo with this command

    ```bash
    git status
    ```

5. Now stage the source code 
    ```bash 
    git add hello.cpp
    ```

6. Commit the changes 
    ```bash
    # -m adds a commit message, make sure it is informative!
    git commit -m "Initial Commit"
    ```

7. Create a git ignore file
    ```bash
    echo "a.out" > .gitignore 
    ```

8. To view the history of the repo
    ```bash
    git log
    ``` 
    Shows who made what changes and when

9. Push the repo to remote repository 
    ```bash 
    git remote set-url origin sample_URL.com && git push
    ```

10. Get the latest updates from the remote repository, but do not modify head
    ```bash
    git fetch
    ```

11. Get the latest updates from the remote repository 
    ```bash
    git pull 
    ```

## Cloning Repositories
Say you need to collaborate with another developer. In this case you will clone their repo onto your system so that you can make your changes 

1. Clone the Repo
    ```bash 
    git clone collaborator_URL.com

2. Make your changes and check what files you modified
    ```bash
    git status
    ```

3. Check if your files have been tracked and then Commit and Push
    ```bash 
    git add <files you created>
    
    #check your working area to make sure the files are tracked
    git status 

    #push all your changes
    git commit -a -m "Created files X,Y,Z and changed A,B,C"
    
    # You would ideally be working on your own branch: Denoted as Your_Branch
    git push origin Your_Branch

4. Validate your changes with 
    ```bash
    git log
    ```



