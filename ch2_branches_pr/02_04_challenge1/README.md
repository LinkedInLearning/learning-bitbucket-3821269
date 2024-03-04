# 02_04 Challenge: Create and Merge a Pull Request

## Challenge Scenario

Let’s use another challenge to practice what you’ve learned about Bitbucket.

In the previous challenge, you configured Bitbucket for The Amazing App project.  You created two repositories; one for contributions from the community and another for the team's internal files.

Now let's test your Bitbucket skills again.

As the Bitbucket expert for the team, you’ve been given another task: Demonstrate how the team should review updates to a repo by using branches and pull requests.

## Challenge Tasks

> *NOTE: If you haven't completed the challenge for Chapter 1, review and complete the steps for [01_07 Solution: Create a Repo and Push Code](../../ch1_getting_started_with_bitbucket/01_07_solution_create_a_repo_and_add_code/README.md) before proceeding with this challenge.

To complete this challenge you’ll need to:

1. Log into Bitbucket and locate the workspace containing the **community** repository you created in the previous challenge.
1. Inside the **community** repository, create a feature branch named `pull-request-demo`.

    > *Note that this should be a feature branch.*

1. Update the file named `CONTRIBUTING.md` with the following message:

    ```text
    # CONTRIBUTING
    All constributions to this repository should be added to a new branch and submitted as a pull request.
    ```

1. Commit the changes to the branch.  Do not create a pull request from the commit interface.
1. Use the **Pull Request** tab on the sidebar menu to create a pull request from the feature branch into the `main` branch.
1. Review the pull request and then merge the request into the `main` branch.

This challenge should take about 15 minutes to complete.


<!-- FooterStart -->
---
[← 02_03 Create a Pull Request](../02_03_create_a_pull_request/README.md) | [02_05 Solution: Create and Merge a Pull Request →](../02_05_solution_create_and_merge_a_pull_request/README.md)
<!-- FooterEnd -->
