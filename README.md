# Chezmoi Dotfiles

This is my dotfiles repository that is managed by Chezmoi and Ansible

## Usage

- Preferably make all changes within `chezmoi`, i.e.:

```bash
1.  nvim ~/local/share/chezmoi
2.  #  ..make changes to files and exit nvim
3.  chezmoi apply
4.  lazygit
5.  #..other git operations
```

- If changes are made outside of `chezmoi`, then run:

```bash
chezmoi add ~/.config/nvim/ #..or other file/folder name
```

### Encryption

- [Chezmoi encrypted files should only require a passphrase entered once after following this guide](https://www.chezmoi.io/user-guide/frequently-asked-questions/encryption/)
- The following command was used to manually put the private key `key.txt`
  into the `.config` directory:

```bash
chezmoi age decrypt --output "~/.config/chezmoi/key.txt" --passphrase key.txt.age > ~/.config/chezmoi/key.txt
```

- Encrypted files must be managed outside of `~/.local/share/chezmoi`,then, once modified, added back using `chezmoi add --encrypt ~/.config/file_name`

### SSH Keys

Best practice is to have separate SSH keys for each system, rather than share the keys via a dotfile repository.
In order to bootstrap a new system with the required keys, do the following:

#### Step 1

Create the keypair

```bash
ssh-keygen -t ed25519 -C "it3E@<device_name>"
```

#### Step 2

Set up multiple SSH profiles by creating/modifying `~/.ssh/config` Note the slightly differing 'Host' values:

```bash
# Default GitHub
Host github.com-iT3E
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519

# Work GitHub
Host github.com-work
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_work
```

#### Step 3

Clone git repositories using the 'Host' portion like so:

```bash
git clone git@github.com-work:Work-Org/repo-name.git
git clone git@github.com-iT3E:iT3E/repo-name.git
```

If existing repositories need to be modified, this can be done in `.git/config`

### Tmux

The tmux plugin manager is kept in these dot files. To initialize all other plugins, run the following in tmux:
`<c-a><shift-I>`
