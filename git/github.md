---
title: Github
parent: Git & Version Control
nav_order: 65
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
## Cloning
Clone creates a copy of a remote repo in your local git repo (from the internet onto your computer). It can be done by clicking the green code button, which will open a dropdown menu. You should see... 
- **HTTPS:** the easiest and most common way to clone a repo, but it requires authentication to push changes.
   ```bash
   git clone https://github.com/user/repo.git
   ```
- **SSH:** uses a key that you set up to your account, this makes your life easier and lets you push without needing authentication. This method is faster and more secure than HTTPS.
   ```bash
   git clone git@github.com:user/repo.git
   ```
- **GitHub CLI:** you can clone quickly if you have GitHubCLI installed. This removes the need to manually enter a URL
   ```bash
   gh repo clone user/repo
   ```

**Recommendation:** Set up an SSH key for GitHub to make pushing and pulling projects easier, avoiding repeated authentication prompts. Since you're likely copying the clone URL from GitHub anyway, the GitHub CLI’s URL-free cloning isn’t a major advantage. SSH is your best bet for long-term convenience.


---

## Integrating GitHub Account with your local Git

When you install git to your system, that is known as a local Git. GithHub is remote Git repository. This allows you to store your projects safely in a cloud. A neat thing you can do is connect your GitHub account to your local Git. Connecting your account allows you to...

- push and pull without entering your username and password.
- store your projects in a cloud, serving as a safe backaup in the case your local machine fails.
- collaborate with others on yours or their projects.
- generate a portfolio, showing your activity on your repos and projects on your profile page.
- access your repos from any machine.
- control the access to your repos

## How to connect SSH

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

3. Check Credentials to see if they are correct

   ```bash
   git config --list

   # check remote repository
   git remote -v
   ```
