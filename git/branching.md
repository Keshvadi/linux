---
title: Git Branching, Merging and Conflicts
parent: Git & Version Control
nav_order: 66
layout: default
---

## Branching and Merging
A branch allows you to work on different features without messing up the main code. Merging brings all your changes together.

--- 

## Branches
A branch is like a copy of your project where you can make changes without affecting the main branch.

### `branch`
- You can check your current branch by typing 
    ```bash
    git branch
    ```
**Note:** Your current branch that you are in will be highlighted is some way

- **branch** will also create a new branch if you insert a name after it
    ```bash 
    git branch new_branch
    ```

### `checkout`
- This lets you switch your branch
    ```bash 
    git checkout new_branch
    ```

## Pushing to a branch 
When creating small feautures, you will want to commit to and push to a branch
1. Ensure you are in your branch
2. Commit your changes (With a good comment!)
3. Then push your branch to GitHub
   
    ```bash 
    git push origin new_branch
    ```

---

## Merging a Branch (Bring Changes to Main)
1. Switch your working directory to the main 
    
    ```bash 
    git checkout main 
    ```
2. Pull the latest changes
    
    ```bash
    git pull origin main
    ```
3. Merge the branch 

    ```bash 
    git merge new_branch 
    ```
4. Delete the branch that you merged

    ```bash
    git branch -d new_branch

    ## if you havent merged yet, force delete with 
    git branch -D new_branch

    ## Remove a branch from the GitHub repo
    git push origin --delete new_branch
    ```


