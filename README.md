# Dotfiles 
My dotfiles for all the programs I use - partly compatible with Microsoft Windows as well.\
You probably don't want to use these, but rather create your own dotfiles. However, feel free to take them as a reference!

I try to keep the programs and configs I use as lightweight as possible while trying to avoid heavy dependencies.
Below is a table of programs used and the rationale behind them.

## How To Use 
### Setup
```sh
git init --bare $HOME/.dotfiles
alias got='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
got remote add origin git@github.com:CatScreaming/dotfiles.git
got config status.showUntrackedFiles no
```

### Replication
```sh
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:CatScreaming/dotfiles.git dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm --recursive dotfiles-tmp
```

### Usage
```sh
got status
got add .gitconfig
got commit -m 'Add gitconfig'
got push
```

