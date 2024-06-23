[ -f "~/.bashrc" ] && mv ~/.bashrc ~/.bashrc.bak
cp ~/.local/share/lincoln/configs/bashrc ~/.bashrc
source ~/.local/share/lincoln/defaults/bash/shell

[ -f "~/.inputrc" ] && mv ~/.inputrc ~/.inputrc.bak
cp ~/.local/share/lincoln/configs/inputrc ~/.inputrc