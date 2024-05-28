# Set up of GNU/Linux Debian environment for development

## SSH keypair setup for GitHub


### Create a repo.
Make sure there is at least one file in it (even just the README.md)


### Generate a SSH key pair (private/public):
```
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

### Copy the contents of the public SSH key

GNU/Linux (requires the xclip package):
```
xclip -sel clip < ~/.ssh/id_rsa.pub
```

### Copy the public SSH key to GitHub
Copy the contents of the to your SSH keys to your GitHub account settings (https://github.com/settings/keys).


### Test the SSH key:
```
ssh -T git@github.com
```

Follow the instructions of repository to add a new remote
```
git remote set-url origin git@github.com:username/your-repository.git
```

Add the key to the ssh-agent
```
ssh-add ~/.ssh/id_rsa
```
