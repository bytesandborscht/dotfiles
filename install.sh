#!/usr/bin/env bash

if [[ ! -d ~/.config/nvim ]]; then
	mkdir -p ~/.config/nvim
fi

if [[ ! -d ~/.config/i3 ]]; then
	mkdir -p ~/.config/i3
fi

if [[ ! -d ~/.ssh ]]; then
	mkdir -p ~/.ssh
fi

echo "[*] Linking ~/.config/nvim/init.vim .."
ln -sf $(pwd)/.config/nvim/init.vim ~/.config/nvim/init.vim
echo "[*] Linking ~/.config/i3/config .."
ln -sf $(pwd)/.config/i3/config ~/.config/i3/config
echo "[*] Linking ~/.i3blocks.conf .."
ln -sf $(pwd)/.i3blocks.conf ~/.i3blocks.conf
echo "[*] Linking ~/.tmux.conf"
ln -sf $(pwd)/.tmux.conf ~/.tmux.conf
echo "[*] Linking ~/.bashrc"
ln -sf $(pwd)/.bashrc ~/.bashrc
echo "[*] Linking ~/.alacritty.toml"
ln -sf $(pwd)/.alacritty.toml ~/.alacritty.toml
echo "[*] Linking ~/.gitconfig"
ln -sf $(pwd)/.gitconfig ~/.gitconfig
echo "[*] Linking ~/.ssh/config"
ln -sf $(pwd)/.ssh/config ~/.ssh/config
