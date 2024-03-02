# 01_03 Add an SSH Key for Authentication

## Secure Shell (SSH) Protocol
- Protocol for securely connecting to remote servers
- Encrypts credentials and data

## SSH Keys
An SSH key pair is made up of public and private cryptographic keys:

- Public key is shared with remote servers
- Private key is stored locally

## Git uses SSH protocol for secure connections
- Local git client uses private key
- Bitbucket uses the public key for identification
- Identity and Permission result in authentication

## Bitbucket SSH Key Locations

|Locations        |Notes                  |
|-----------------|-----------------------|
|Personal account |Best for most users    |
|Workspace        |Good for teams         |
|Project          |Only allows read access|

## Create an SSH Key Pair with `ssh-keygen`
The `ssh-keygen` command is used to generate a new SSH key pair, which includes a private key and a public key. These keys are used for authenticating to a server as an alternative to password-based logins. 


For example, the following command generates a new ED25519 SSH key pair, labels it with a comment for identification purposes, and saves it to a specified location in the user's home directory, indicating it's intended for use with Bitbucket:


```
ssh-keygen -t ed25519 -C "my bitbucket key" -f ~/.ssh/bitbucket
```

Here's a breakdown of the command and each option included:


- `ssh-keygen`: The command to initiate the generation of the SSH key pair.

- `-t ed25519`: This option specifies the type of key to create. `ed25519` is a public-key algorithm used for SSH key generation. It is known for being faster and more secure than the older RSA algorithm, especially at shorter key lengths.

- `-C "my bitbucket key"`: This option allows you to add a comment to the generated key. The comment is usually used for identifying the key's purpose or the user. In this case, `"my bitbucket key"` is the comment, indicating that this key will be used for Bitbucket operations.

- `-f ~/.ssh/bitbucket`: This option specifies the filename of the generated key. `~/.ssh/bitbucket` means that the key will be saved in the `.ssh` directory within the user's home directory, with the filename `bitbucket`. The command will create two files: `bitbucket` for the private key and `bitbucket.pub` for the public key.

## Configure SSH in `~/.ssh/config`
Configuration for an SSH client is  typically located in the `~/.ssh/config` file on a user's computer. This file is used to create aliases and specify various SSH options for different hosts.

Using the SSH keys from  the previous example, we might use the following configuration:

```
Host bitbucket.org
  IdentityFile ~/.ssh/bitbucket
  User git
```


Here's a breakdown of the configuration:

- `~/.ssh/config`: This is the path to the SSH configuration file on a Unix-like system. It's located in the `.ssh` directory within the user's home directory. This file can contain configurations for multiple SSH connections, making it easier to manage connections to different servers or services.

- `Host bitbucket.org`: This line begins a new host configuration block. `Host` is followed by the hostname or alias for the remote server you want to connect to. In this case, `bitbucket.org` is the hostname of Bitbucket's SSH server. The configurations that follow this line will apply only when connecting to `bitbucket.org`.

- `IdentityFile ~/.ssh/bitbucket`: This option specifies the path to the private key file to be used for authentication with the specified host. `~/.ssh/bitbucket` indicates that the private key file named `bitbucket` in the `.ssh` directory should be used when connecting to `bitbucket.org`. This is the key that was generated with the `ssh-keygen` command you asked about previously.

- `User git`: This option specifies the default username to be used when connecting to the remote server. For services like Bitbucket or GitHub, when using SSH keys, the username is often `git`. This tells the SSH client to use `git` as the username when connecting to `bitbucket.org`, regardless of the local user's username.

In summary, this configuration tells the SSH client to use the specific private key located at `~/.ssh/bitbucket` and the username `git` when connecting to `bitbucket.org`. This setup simplifies the SSH command you need to use for connecting to Bitbucket, ensuring the correct key and username are always used for authentication.

## SSH Key Security
- Keep private keys private
- Don’t store private keys in public repositories
- Create dedicated keys for easier key rotation

<!-- FooterStart -->
---
[← 01_02 add files to a repository](../01_02_add_files_to_a_repository/README.md) | [01_03 clone repo to local environment →](../01_04_clone_repo_to_local_environment/README.md)
<!-- FooterEnd -->
