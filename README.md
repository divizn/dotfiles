# My dotfiles

This directory holds most of my dotfiles

## Requirements

Ensure you have the following installed on your system

### Git

```bash
pacman -S git
```

### Stow

```bash
pacman -S stow
```

## Installation

First, clone repository to `$HOME` directory using git

```bash
$ git clone github.com/divizn/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```bash
$ stow .
```

