#!/bin/sh

# Install packer if not already installed
[[ ! -d ~/.local/share/nvim/site/pack/packer/ ]] && git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim 


if [ "$1" == "full" ]; then
	git clone --depth 1 https://github.com/vicious-widgets/vicious.git ~/.config/awesome/vicious/
fi
