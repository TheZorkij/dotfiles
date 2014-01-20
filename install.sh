ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

sudo apt-get install git vim

test -d ~/.vim || git clone https://github.com/niquola/myvim.git ~/.vim/
test -d ~/.vim/bundle/vundle || git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
mv ~/.vimrc ~/.vimrc.back || echo 'no .vimrc'
echo 'source ~/.vim/.vimrc' > ~/.vimrc
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

sudo apt-get install fish
chsh nicola -s /usr/bin/fish

sudo apt-get install curl
curl --create-dirs -o ~/.config/fish/functions/rvm.fish https://raw.github.com/lunks/fish-nuggets/master/functions/rvm.fish

# sudo apt-get install postgresql-9.3
# sudo su postgres -c 'createuser -s nicola'
