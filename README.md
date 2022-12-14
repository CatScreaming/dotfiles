

## How To Use 
### Setup
```sh
git init --bare $HOME/.dotfiles
alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dot remote add origin git@github.com:CatScreaming/dotfiles.git
dot config status.showUntrackedFiles no
```

### Replication
```sh
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:CatScreaming/dotfiles.git dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm --recursive dotfiles-tmp
```

### Usage
```sh
dot status
dot add .gitconfig
dot commit -m 'Add gitconfig'
dot push
```

## Fonts
- FiraCode noto-fonts noto-fonts-cjk
