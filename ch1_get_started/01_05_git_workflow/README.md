# 01_05 Use a Git Workflow

A common Git workflow uses the following steps:

1. Change existing files or add new files
1. `git add`    - Add the new and changed files
1. `git commit` - Take a snapshot of the staged files
1. `git push`   - Upload changes to Bitbucket
1. `git status` - Check status along the way

## Git Workflow Commands
|Command|Notes|
|-------|-----|
|**git add FILE_NAME_1 …**</p>**git add ./DIRECTORY_NAME**|Stages files to include in the next commit</p>Add individual files by name or all files in a directory|
|**git add .**|Add all files in the working directory|
|**git commit -m "A journey of a thousand miles…"**|Creates a snapshot of staged files along with the lines added or removed from each file</p>Includes a commit message to provide context on the changes</p>Multiple commits can be made before pushing|
|**git push**|Uploads changes to the remote repository|
|**git status**|Displays the current branch and state of the local repo</p>Compares the working directory to the remote repository</p>Run this before and after other git commands|


<!-- FooterStart -->
---
[← 01_04 Clone Repo to Local Environment](../01_04_clone_repo/README.md) | [01_06 Push Code to a Remote Repo →](../01_06_push_code/README.md)
<!-- FooterEnd -->
