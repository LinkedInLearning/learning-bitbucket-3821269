# 00_04 Bitbucket Content Organization
Bitbucket uses three components to organize and manage access to content:

1. Workspaces
1. Projects
1. Repositories.

## Workspaces
- Contain projects and repositories
- Can be public or private
- Workspace name must be globally unique for creating URLs under the bitbucket.org domain.

        https://bitbucket.org/WORKSPACE_NAME

## Projects
- Contain repositories
- Can be public or private
- Apply settings to all repos inside a project
- Project name must be unique inside the workspace where the project is located

## Repositories
- Contain files and revision history
- Can be public or private
- Central location for collaboration
- Must have unique name inside a workspace

## Summary
- If you’re using Bitbucket as a solo developer, you’ll most likely have one workspace and one project, with the project containing multiple repositories.

- If multiple developers are working together as teams, you’ll see the benefit of using workspaces to manage access to projects and repositories.


<!-- FooterStart -->
---
[← 00_03 Create an Atlassian Account](../00_03_create_an_atlassian_account/README.md) | [01_01 Public and Private Repositories →](../../ch1_getting_started_with_bitbucket/01_01_public_and_private_repositories/README.md)
<!-- FooterEnd -->
