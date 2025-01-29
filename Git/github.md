---
title: Github
parent: Git and Github
nav_order: 
layout: default
---

## Github 
Github is a platform made for hosting and managing Git repositories. It allows you to store, share, collaborate and keep track of your changes to your projects. You can think of it as a social media for code and projects. It also doubles as a portfolio that you can showcase your coding and collaboration skills to employers.

---

## Get started with Github

1. Open up a [Github](https://github.com.) account

2. Follow this [Hello World](https://docs.github.com/en/get-started/start-your-journey/hello-world) tutoral and create a repo. This is your remote repo 

3. Linking your local repo to your GitHub repo with this command
    ```bash
    git remote add origin https://github.com/your_repolink

    # now verify url 
    git remote -v
    ```
    Now this repo is on your local git and you are free to make changes to and modify your project

---

## Integrating GitHub Account with your local Git

When you install git to your system, that is known as a local Git. GithHub is remote Git repository. This allows you to store your projects safely in a cloud. A neat thing you can do is connect your GitHub account to your local Git. Connecting your account allows you to...

- push and pull without entering your username and password.
- store your projects in a cloud, serving as a safe backaup in the case your local machine fails.
- collaborate with others on yours or their projects.
- generate a portfolio, showing your activity on your repos and projects on your profile page. 
- access your repos from any machine. 
- control the access to your repos

## How to connect 
1. Set up Git with your GitHub Account
    ```bash
    git config --global user.name "Your Name"
    git config --global user.email "youremail@email.com"
    ```
2. Generate SSH key (Recommended for security)
    ```bash 
    ssh-keygen -t rsa -b 4096 -C "youremail@email.com"
    ```

    - When prompted to "Enter a file in which to save the key," press Enter to save to the default location (~/.ssh/id_rsa).

    ```bash
    # add SSH key to SSH Agent 
    eval "$(ssh-agent -s)"
    ssh-add ~/.ssh/id_rsa

    #copy this key 
    cat ~/.ssh/id_rsa.pub
    ```
    - Go to GitHub → Settings → SSH and GPG keys → New SSH key.

3. Check Credential to see if they are correct
    ```bash
    git config --list

    # check remote repository
    git remote -v
    ```

