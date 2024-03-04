# 01_04 Clone Repo to Local Environment
The primary purpose of the `git clone` command is to create a local copy of a remote repository.  

## Git Clone
- Creates a local copy of a remote repository in a working directory
- Fetches files, history, branches, and metadata from the remote repo
- Enables offline work with other applications and tools

## The `git clone` Command

![The `git clone` command](./images/git-clone.png)

When you use the `git clone` command followed by a repository URL, you're instructing Git to create a local copy of the repository that exists at the specified URL. In the command you've provided:

```
git clone git@bitbucket.org/WORKSPACE_NAME/REPO_NAME.git
```

- `git clone`: This is the Git command used to copy a repository.
- `git@bitbucket.org/WORKSPACE_NAME/REPO_NAME.git`: This is the SSH URL of the repository you want to clone. It consists of:
  - `git@bitbucket.org`: The username and domain specifying that you're connecting to Bitbucket over SSH.
  - `WORKSPACE_NAME`: This should be replaced with the name of your Bitbucket workspace where the repository resides.
  - `REPO_NAME`: This should be replaced with the name of the specific repository you want to clone.

When executed, this command will:
1. Create a new directory in your current local working directory. This new directory is named after the `REPO_NAME`.
2. Initialize a `.git` directory inside this new directory, setting up all the necessary Git metadata.
3. Fetch all data from the repository (all commits, branches, tags, and files) and places it in the new directory.
4. Set up a remote named `origin` that points back to the original repository on Bitbucket, allowing for easy fetching updates or pushing changes.


## SHENANIGANS! :D
When you run `git clone ...`, Git will create a new working directory locally with the same name as the repository.  Want a different name for the directory?  Just add it to the very end of the `git clone` command.

    git clone git@bitbucket.org/WORKSPACE_NAME/REPO_NAME.git WORKING_DIRECTORY_NAME


<!-- FooterStart -->
---
[← 01_03 Add an SSH Key for Authentication](../01_03_ssh_key/README.md) | [01_05 Use a Git Workflow →](../01_05_git_workflow/README.md)
<!-- FooterEnd -->
