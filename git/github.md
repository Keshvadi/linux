---
title: Github
parent: Git & Version Control
nav_order: 64
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

## How to connect SSH

1. **Set up Git with your GitHub Account**
   ```bash
   git config --global user.name "Your Name"
   git config --global user.email "youremail@email.com"
   ```
2. **Generate SSH key (Recommended for security)**

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

3. **Check Credentials to see if they are correct**

   ```bash
   git config --list

   # check remote repository
   git remote -v
   ```

--- 

## Linking your local repo to GitHub
This section will guide you in the case that you have a local repository (project on your computer) and you want to save it to a remote repository (save it to the cloud).
1. **Initialize or navigate to your repo**
   ```bash
   # Find your repository
   cd /your_repo_path

   # or initialize a new repo
   git init
   ```
2. **Add the remote repository**
- Go to your github and create a new repo, click the green code button and copy the link...
    - **using HTTPS:**
    ```bash 
    git remote add origin https://github.com/your-username/repository-name.git
    ```
    - **using SSH:**
    ```bash
    git remote add origin git@github.com:your-username/repository-name.git
    ```
3. **Verify the remote link**
    ```bash
    git remote -v
    ```

    You should see something along the lines of:
    ```bash
    origin  https://github.com/your-username/repository-name.git (fetch)
    origin  https://github.com/your-username/repository-name.git (push)
    ```
4. **Push your local files to the remote repository**
    - If you have files to push
    ```bash
    git add .
    git commit -m "Initial commit"
    git push -u origin main
    ```


### **_Note_**: If you are working with other people, _PLEASE AVOID CONFLICTS_...
1. **Get the latest updates from the remote repository**
    ```bash
    # Downloads changes without merging them to your local repo
    git fetch origin
    ```
2. **Merge or Rebase**
    If you are okay with your changes
    ```bash
    git merge origin/main

    # or rebase
    git rebase origin/main
    ```
3. **Or Pull (Fetch and Merge in one command)**
    - This will fetch and merge changes for you automatically. 
    - If conflicts occur, Git will ask you to resolve them before completing the merge.
    
    ```bash
    git pull origin main 
    ```

---

## Cloning Repositories
Say you need to collaborate with another developer. In this case you will clone their repo onto your system so that you can make your changes. This can be done by clicking the green `code` button, which will open a dropdown menu. You should see... 

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

### **Steps to clone**

1. **Clone the Repo**
    - Via HTTPS:
    ```bash 
    git clone https://github.com/your-username/repository-name.git
    ```
    - Via SSH:
    ```bash
    git clone git@github.com:your-username/repository-name.git
    ```

2. **Make your changes and check what files you modified**
    ```bash
    git status
    ```

3. **Check if your files have been tracked and then Commit and Push**
    ```bash 
    git add <files you created>
    # or you can add all the modified files with 'add .'
    git add . 
    
    #check your working area to make sure the files are tracked
    git status 

    #push all your changes
    git commit -a -m "Created files X,Y,Z and changed A,B,C"
    
    # You would ideally be working on your own branch: Denoted as Your_Branch
    git push origin Your_Branch
    ```

4. **Validate your changes with**
    ```bash
    git log
    ```

---

## Unlinking a Remote Repository
In the event that you want to disconnect your local machine from a remote repository you can follow the steps below. This can be useful if you are done working on a project and you don't want to accidentally push some changes, or if you accidentally duplicated a repository that you don't need. 
### **Remove the Remote Origin**
   ```bash 
   git remote remove origin
   ```
   Verify the removal with 
   ```bash
   git remote -v
   ```
