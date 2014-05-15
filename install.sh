sudo apt-get install -y git vim
sudo apt-get install -y software-properties-common curl


# VIM part

sudo apt-get install -y exuberant-ctags

test -d ~/.vim/bundle/vundle || git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
mv ~/.vimrc ~/.vimrc.back || echo 'no .vimrc'
ln -s ~/dotfiles/.vimrc ~/.vimrc
vim +BundleInstall +qall

git config --global user.name "niquola"
git config --global user.email "niquola@gmail.com"
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'



#TMUX

test -f ~/.tmux.conf || ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
which tmux || sudo apt-get install -y tmux

#JAVA

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer


#LEINIGEN

test -d ~/bin || mkdir ~/bin

curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > ~/bin/lein

chmod a+x ~/bin/lein

~/bin/lein


# POSTGRESQL

sudo apt-get install -y postgresql postgresql-contrib
sudo su postgres -c 'pg_ctlcluster 9.3 main start'
sudo su postgres -c 'createuser -s devel' || echo 'ups'

#NODE js
curl https://raw.githubusercontent.com/creationix/nvm/v0.7.0/install.sh | sh
source ~/.profile

nvm install 0.10
npm install -g bower grunt

#zsh
sudo apt-get install -y zsh
curl -L http://install.ohmyz.sh | sh
chsh -s `which zsh`

#ssh
ssh-keygen
