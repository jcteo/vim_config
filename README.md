# vim_config


## Installation

	( backup your actual vim configuration )

	`git clone git@github.com:/jcteo/vim_config.git ~/.vim`

### VIM

* link vimrc file

	`ln -s .vim/vimrc ~/.vimrc`
	
* Install Plugin manager

  see: [Vundle](https://github.com/gmarik/Vundle.vim)

* Run: `:PluginInstall`

### NEOVIM

* link init file

  `mkdir ~/.config/nvim`

  `cd ~/.config/nvim`

  `ln -s ~/.vim/nvim/init.vim init.vim`

* Install Plugin manager

  see: [Plug](https://github.com/junegunn/vim-plug)

* Run:  `:PlugInstall`

## Plugins

*	[Command-T](http://github.com/wincent/Command-T)
*	[NERD Comenter](http://github.com/scrooloose/nerdcommenter)
*	[NERD Tree](http://github.com/scrooloose/nerdtree)
*	[phpqa](http://github.com/joonty/vim-phpqa)
*	[phpunitqf](http://github.com/joonty/vim-phpunitqf)
*	[Fugitive](http://github.com/tpope/vim-fugitive)
*	[Airline](http://github.com/bling/vim-airline)
*	[Webapi](http://github.com/mattn/webapi-vim)

VIM

* [Vundle](https://github.com/gmarik/Vundle.vim) VIM Plugin Manager
*	[Neo Complete](http://github.com/Shougo/neocomplete.vim)

NEOVIM

* [Plug](https://github.com/junegunn/vim-plug) VIM Plugin Manager
*	[Deoplete](https://github.com/Shougo/deoplete.nvim)

## Profiler

Only for Neovim you can use profiles in order to use diferent plugin and configurations for diferents projects

To use profiler, just link profile dir to nvim configuration dir

	`ln -s ~/.vim/nvim/profiles/ ~/.config/nvim/profiles`

editing...
