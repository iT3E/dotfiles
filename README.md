### Chezmoi Dotfiles

This is my dotfiles repository that is managed by Chezmoi and Ansible

##### Usage

- Preferably make all changes within `chezmoi`, i.e.:
```bash
1.  nvim ~/local/share/chezmoi
2.  #  ..make changes to files and exit nvim
3.  chezmoi apply
4.  lazygit
5.  #..other git operations
```

- If changes are made outside of `chezmoi`, then run:
```
chezmoi add ~/.config/nvim/ #..or other file/folder name
```


