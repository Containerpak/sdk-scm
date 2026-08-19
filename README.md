# Source Control SDK

git, git-lfs and the GitHub CLI, packaged as a cpak addon for development
environments.

It exists because a development environment without version control is not one,
and because carrying git in every base image would make every application pay
for a tool most of them never call.

## Use it

Enable it for an application that offers it:

```bash
cpak addon enable github.com/containerpak/vscode github.com/containerpak/sdk-scm
```

The SSH and GPG agent sockets are forwarded so a signed commit and a pull over
SSH work with the keys already on the machine, without copying them anywhere.
