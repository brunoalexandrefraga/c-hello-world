# Set up of GNU/Linux Debian environment for development
## Go from Stable Debian to Testing Debian
Obs.: This is needed due to part of plugins used in Neovim requires Neovim >0.9 (NvChad, for instance). Actually in Debian Stable (12, Bookworm) the version of Neovim is 0.7.2.

Make a backup of apt sources.list
```
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bckp
```
Update the name of version (currently Bookworm) to "testing" (I'm using vim to update the file)
```
sudo vim /etc/apt/sources.list
```
Vim code to update the whole file
```
:%s/bookworm/testing/g
```
Update the package manager
```
sudo apt update
```



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
