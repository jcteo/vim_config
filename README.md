vim_config
==========

A vim directory whith config and plugins needed for a PHP developer.

Install
=======

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


install Command-T
======================

cd vim/bundle/Command-T/ruby/command-t
ruby extcond.rb
make

inside vim run
:call pathogen#helptags()
