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

To install, just do the following:

```bash
git clone https://github.com/webdesserts/velvet.git
cd velvet
./install.sh
```

The install script will link your vim dotfiles in your home directory to
the necessary files and folders in the velvet repo and install your plugins

Customizing Velvet
------------------
Velvet uses [vim-plug](https://github.com/junegunn/vim-plug) to handle it's
plugins. It's a simple plugin manager which handles it's installs concurrently.
Although Velvet has it's own set of plugins it includes, you can add and remove
any plugins you want in the `user/plugins.vim` file.

If you have any custom settings you would like to include, add a file under the
`user/settings/` folder. Every file in that folder will be sourced on startup.
