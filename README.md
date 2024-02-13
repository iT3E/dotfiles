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
