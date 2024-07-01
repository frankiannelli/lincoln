sudo apt install neovim

if [ ! -d "$HOME/.config/nvim" ]; then
	git clone https://github.com/LazyVim/starter ~/.config/nvim
	git clone https://github.com/github/copilot.vim.git ~/.config/nvim/pack/github/start/copilot.vim
	# Disable update notification popup in starter config
	sed -i 's/checker = { enabled = true }/checker = { enabled = true, notify = false }/g' ~/.config/nvim/lua/config/lazy.lua
	mkdir -p ~/.config/nvim/plugin/after
	cp ~/.local/share/lincoln/configs/neovim/transparency.lua ~/.config/nvim/plugin/after/
	cp ~/.local/share/lincoln/themes/neovim/tokyo-night.lua ~/.config/nvim/lua/plugins/theme.lua

	# Enable default extras
	cp ~/.local/share/lincoln/configs/neovim/lazyvim.json ~/.config/nvim/lazyvim.json
fi
