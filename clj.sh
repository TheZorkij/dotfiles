#JAVA

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer


#LEINIGEN

test -d ~/bin || mkdir ~/bin

curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > ~/bin/lein

chmod a+x ~/bin/lein

~/bin/lein
