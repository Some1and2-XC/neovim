# Neovim Configuration for @some1and2

Install steps:
1. Install neovim
2. Run `:h xdg` and find the config directory applicable for the version of NVIM you're running.
2. Use the config directory found (example: `~/AppData/Local/nvim`) and clone this repo into that folder.
    - This doesn't mean making `nvim/neovim`. Put the root directory of this repo into `AppData/Local/nvim/`.
2. Run one of the following commands to get the packer plugin manager. (this may be updated so it is best to check the plugin managers `README.md` directly.)

Windows:
```sh
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

Unix:
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

2. Run the lua script for requiring all the packages. This should be in `./lua/some1and2/packer.lua`. 
    - Run `:so` in this file.
    - Run `:PackerSync` to actually install all the packages.
    - Run `:q` and go outside (or restart vim and see if things work).
