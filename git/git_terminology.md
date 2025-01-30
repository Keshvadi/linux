---
title: Git Terminology and Structure
parent: Git & Version Control
nav_order: 61
layout: default
---

## Git terminology 
Git is another daunting concept when you first begin, however it is pretty simple under the hood. Here is some of the lingo broken down. 

### Repository or Repo
- A folder tracked by Git that contains your project and all its version history. Sort of like a filing cabinet, holding all your documents. 

### Commit
- A saved snapshot of your project at a specific point in time. Think of it like a game save. (With every commit you need to give a brief comment explaining what was modified or created)

### Branch
- A parallel version of your project to try out new ideas or features. The default branch is often called main. Typically you would make a new branch everytime you want to add a new feature to your project. 

### Merge 
- Combines changes from one branch into another, typically bringing feature branches into the main branch.

### Remote Repository
- A version of your repository stored on another server, like GitHub or GitLab. This allows you to share your work and collaborate. (The GitHub Section outlines this further)

### Push 
- Uploads your commits from your local repository to a remote repository. 

### Pull 
- A download of changes from a remote repository to your local machine and updates your code.

### Clone 
- Makes a copy of a remote repository on your computer.

### Staging 
- The process of preparing changes for a commit by adding them to the staging area.

### Conflict
- Happens when two people make changes to the same part of a file. Git will ask you to resolve the conflict manually.
    
**Note:** You can look at this [Git Merge Conflicts](https://www.atlassian.com/git/tutorials/using-branches/merge-conflicts) tutorial to see how to handle them.


---
## Git Structure
Simply put, Git has three places for your work :
1. **Working Directory**
    - This is the project folder on your computer where you make changes to the files 
2. **Staging Area**
    - A sort of holding area where you put changes you want to commit to the project. 
3. **Repository**
    - A database where Git saves all the snapshots (commits) of your project. 
4. **Remote Repository** (Optional)
    - Explained above
    - This is not exactly an essential part of Git, but it is a very helpful tool.

## Workflow 
The idea is to store your progress in the repository. Everytime you want to make a change, you create a new branch for that change (Working directory). After you are finished with your chnages you add them to your staging area where you then commit those changes to the repository. Once you are sure the feature is working as intended, you would merge that branch into the main branch. In the case you are working with a remote repo, you would then push those changes to a remote repo such as GitHub or GitLab. 
