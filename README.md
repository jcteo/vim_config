vim_config
==========

A vim directory whith config and plugins needed for a PHP developer.

Install
-------

go to your home directory

cd ~

backup your current configuration

mv .vim vim_bak

create a new vim directory and go inside

mkdir .vim && cd .vim

clon de repository

git clone git@github.com:jcteo/vim_config.git

create symbolic link to the vimrc file

cd ~

ln -s .vim/vimrc .vimrc


open vim and run

:BundleInstall

Plugins
------
[Neo Complete][1]
[Command-T][2]
[NERD Comenter][3]
[NERD Tree][4]
[phpqa][5]
[phpunitqf][6]
[Fugitive][7]
[Airline][8]
[Emmet][9]
[Webapi][10]


Install Command-T
-----------------

cd vim/bundle/Command-T/ruby/command-t
ruby extcond.rb
make

inside vim run
:call pathogen#helptags()

[1]:http://github.com/Shougo/neocomplete.vim
[2]:http://github.com/wincent/Command-T
[3]:http://github.com/scrooloose/nerdcommenter
[4]:http://github.com/scrooloose/nerdtree
[5]:http://github.com/joonty/vim-phpqa
[6]:http://github.com/joonty/vim-phpunitqf
[7]:http://github.com/tpope/vim-fugitive
[8]:http://github.com/bling/vim-airline
[9]:http://github.com/mattn/emmet-vim
[10]:http://github.com/mattn/webapi-vim
