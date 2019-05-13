#!/bin/bash

# first, let's configure git
git config --global user.name "<yourt name>"
git config --global user.email "<your email>"

#update brew and add cask repo
brew update
brew tap homebrew/cask-versions
brew cask install

#wget - doh!
brew cask install wget

#alfred - snippets application
#brew cask install alfred

#atom - text editor - alternative is sublime text
brew cask install atom
#brew cask install sublime-text

#cheatsheet - use CMD key to see the shortcuts in any application
brew cask install cheatsheet

#dash - offline documentation
brew cask install dash

#docker - containers
brew cask install docker

#firelfox - doh!
brew cask install firefox

#gimp - graphical editor
brew cask install gimp

#go2Shell - creates a button in Finder to open your terminal in that folder
brew cask install go2shell

#chrome - doh!
brew cask install google-chrome

#enhanced terminal - must have!
brew cask install iterm2

#postman - testing POSTs to api
brew cask install postman

#slack - doh!
brew cask install slack

#sourcetree - visual git - an alternative is tower
brew cask install sourcetreee
#brew cask install tower

#VSC
brew cask install visual-studio-code

#virtualbox - virtualziation
brew cask install virtualbox

#packer - DevOps
brew install packer
#terraform - DevOps
brew install terraform
#ansible - DevOps
brew install ansible

#robo-3t - mongoDB database manager
brew cask install robo-3t

#mysqlworkbench - mySql database manager
brew cask install mysqlworkbench

#db-browser-for-sqlite - sqlite database manager
brew cask install db-browser-for-sqlite

#cyberduck - ftp client - fileZilla is banned from cask
brew cask install cyberduck

#install python 3 with pip and virtualenv - by default mac comes with python 2.7
brew install python3
sudo easy_install pip
sudo pip install virtualenv

#install nvm - you will manually have to install node from nvm
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | bash

#install some Mac Quick Look plugins
brew cask install qlcolorcode \
    qlstephen \
    qlmarkdown \
    quicklook-json \
    qlprettypatch \
    quicklook-csv \
    betterzip \
    webpquicklook \
    suspicious-package

#install zsh awesome shell, with some of the most util plugins
brew install zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting fortune tree fzf ack git vim tmux zplug

# the following lines will install oh-my-zsh
# Although, I recommend you to install it, for the moment I will keep it commented until I have
# a custom configuration too.

#install a power font for oh-my-zsh
#brew cask install font-hack-nerd-font

#install robby russel oh-my-zsh package - optional
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install powerlevel9k
#git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
