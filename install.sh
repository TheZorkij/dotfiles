
sudo apt-get install -y git vim


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

test -f ~/.tmux.conf || ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

which tmux || sudo apt-get install -y tmux
