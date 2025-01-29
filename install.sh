#!/usr/bin/env bash

if [[ ! -d ~/.config/nvim ]]; then
	mkdir -p ~/.config/nvim
fi

if [[ ! -d ~/.sway ]]; then
	mkdir -p ~/.sway
fi

echo "[*] Linking ~/.config/nvim/init.vim .."
ln -sf $(pwd)/.config/nvim/init.vim ~/.config/nvim/init.vim
echo "[*] Linking ~/.config/i3/config .."
ln -sf $(pwd)/.config/i3/config ~/.config/i3/config
echo "[*] Linking ~/.tmux.conf"
ln -sf $(pwd)/.tmux.conf ~/.tmux.conf
echo "[*] Linking ~/.bashrc"
ln -sf $(pwd)/.bashrc ~/.bashrc
echo "[*] Linking ~/.gitconfig"
ln -sf $(pwd)/.gitconfig ~/.gitconfig
echo "[*] Linking ~/.sway/config"
ln -sf $(pwd)/.sway/config ~/.sway/config
