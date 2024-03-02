# 01_06 Push Code to a Remote Repo

1. Start in web UI.
1. Look at source tab; note current files in the remote repository.
1. Look at commits tab; note the current commits.
1. Move to the local system.
1. Run `git status`.  Observe:

        On branch main
        Your branch is up to date with 'origin/main'.

        nothing to commit, working tree clean

1. Update `README.md`.

        date >> README.md

1. Add a new file, `newfile.txt`.

        date >> newfile.txt

1. Run `git status` to see:
    
    - modified files that have not been committed
    - untracked files
    - no changes added to commit (use "git add" and/or "git commit -a")

1. Run `git add .` and `git status`.
1. Observe the changes to be committed:

    - modified file
    - new file

1. Run `git commit -m “Added a new file”`

    - Observe the number of files and the number of changes; insertions and deletions

1. Run `git status`

        Your branch is ahead of 'origin/main' by 1 commit.

    Local system is now  ahead of the remote and needs to be synchronized

1. Run `git push`.

    Output gives insights into the progress and details of the push operation, confirming that changes have been successfully pushed to the remote repository.

1. Run `git status`

        On branch main
        Your branch is up to date with 'origin/main'.

        nothing to commit, working tree clean

1. Go back to web UI (should still be on commits tab).
1. Refresh browser tab (CTRL+R / CMD+R).
1. Note the new commit with commit message.
1. Go to **Source** tab.
1. Note the new file.
1. Note last commit time and commit messages applied to both files from the same commit


<!-- FooterStart -->
---
[← 01_05 Use a Git Workflow](../01_05_use_a_git_workflow/README.md) | [01_06 Challenge: Create a Repo and Push Code →](../01_07_challenge_create_a_repo_and_add_code/README.md)
<!-- FooterEnd -->
