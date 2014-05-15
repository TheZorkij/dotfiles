#ssh
test -d ~/.ssh || ssh-keygen
test -f ~/.ssh/config || echo "Host ?\nHostName ?\nUser\n" >  ~/.ssh/config

sudo apt-get install -y openssh-server
