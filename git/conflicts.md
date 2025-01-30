---
title: Git Resolving Merge Conflicts
parent: Git & Version Control
nav_order: 67
layout: default
---

## Merge Conflicts
The dreaded Merge conflict. Merge conflicts occur when two people make changes to the same line of code or the same part of a file, and Git can’t figure out which one to keep. It will stop the merge and ask you to resolve the conflict manually. 

## How to Resolve them
Git will show you the conflicting files and mark them with conflict markers. It should look something like this
```bash
<<<<<<< HEAD
// your changes
======
// changes from the branch you're merging

>>>>>>> feature-branch
```

**Note:** Head refers to the branch you are currently on and the Feature branch contains the changes that were made in the branch you're merging into your current branch. 

Git inserts these markers to show where the conflicts are:
- "<<<<< HEAD": Marks the start of your changes (the changes in the branch you're currently working on).
- =======: Separates your changes from the changes in the branch you're merging.
- ">>>>>>> feature-branch": Marks the end of the changes from the other branch (feature-branch).

1. Open the conflicted files in your editor
2. Decide which version to keep or merge the changes manually
    - Keep your changes (HEAD)
    - Keep the changes from the branch (feature-branch)
    - Combine both changes manually
3. Remove the conflict Markers (<, =, >)
4. Add and commit the resolved file
    ```bash 
    git add . 
    git commit -m "Resolved Merge Conflicts"
    ```
5. Finish merging
    ```bash 
    git merge feature-branch
    ```


