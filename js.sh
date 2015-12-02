#NODE js
curl https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | sh
source ~/.nvm/nvm.sh

echo 'source ~/.nvm/nvm.sh' >> ~/.zshrc
nvm install 0.12
npm install -g bower grunt
nvm alias default
