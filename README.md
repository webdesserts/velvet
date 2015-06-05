Velvet
======
[![Stories in Ready](https://badge.waffle.io/webdesserts/velvet.svg?label=ready&title=Ready)](http://waffle.io/webdesserts/velvet)

> Scrumptious Vim dotfiles for Unix systems

Installation
------------
Velvet is designed to be used with [NeoVim](http://neovim.org/) (but also
supports regular Vim). NeoVim is a modern refactor of vim and will eventually
allow vim to be usable in a modern gui. Until then, it's just a cleaner and
better tested vim with more powerful plugins. To get started with NeoVim see
their [Installation Instructions](https://github.com/neovim/neovim/wiki/Installing)

Currently you have to install Velvet manually, luckily that's not too hard.

You just need to clone the repo where ever you like and link up your `.vim`
and `.vimrc` to the directory you installed the repo and `core/vimrc` respectively 

In the following example we install Velvet into our home directory:
```bash
git clone https://github.com/webdesserts/velvet.git ~/code/velvet
ln -s ~/code/velvet .vim
ln -s ~/code/velvet/core/vimrc .vimrc
vim +PlugInstall +qall
```

Customizing Velvet
------------------
Velvet uses [vim-plug](https://github.com/junegunn/vim-plug) to handle it's
plugins. It's a simple plugin manager which handles it's installs concurrently.
Although Velvet has it's own set of plugins it includes, you can add and remove
any plugins you want in the `user/plugins.vim` file.

If you have any custom settings you would like to include, add a file under the
`user/settings/` folder. Every file in that folder will be sourced on startup.
