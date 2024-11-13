#!/usr/bin/env bash

if [[ ! -d ~/.config/nvim ]]; then
	mkdir -p ~/.config/nvim
fi

echo "[*] Linking ~/.config/nvim/init.vim .."
ln -sf $(pwd)/.config/nvim/init.vim ~/.config/nvim/init.vim
echo "[*] Linking ~/.tmux.conf"
ln -sf $(pwd)/.tmux.conf ~/.tmux.conf
echo "[*] Linking ~/.bashrc"
ln -sf $(pwd)/.bashrc ~/.bashrc
