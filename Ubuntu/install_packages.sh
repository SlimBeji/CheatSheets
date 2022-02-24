#Update the packages available
sudo apt-get update

#Installing Gnome Software
sudo apt-get install gnome-software

#Removing Snap
sudo apt autoremove --purge snapd gnome-software-plugin-snap
rm -fr ~/snap

#Adding Empty Document Shortcut
mkdir -p ~/Templates && touch ~/Templates/Untitled\ Document;
xdg-user-dirs-update --set TEMPLATES ~/Templates;
nautilus -q && nautilus &

#Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

#Install Clementine for Music
sudo apt install akonadi-backend-sqlite
sudo apt-get install clementine

# Install Skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb
rm ./skypeforlinux-64.deb

# Install Upwork tracking time
wget https://upwork-usw2-desktopapp.upwork.com/binaries/v5_6_8_0_836f43f6f6be4149/upwork_5.6.8.0_amd64.deb
sudo apt install ./upwork_5.6.8.0_amd64.deb
sudo rm upwork_5.6.8.0_amd64.deb

#Configure printing and scan device
sudo apt-get install simple-scan
wget http://gdlp01.c-wss.com/gds/8/0100009108/01/cnijfilter2-5.50-1-deb.tar.gz
sudo tar -xvf cnijfilter2-5.50-1-deb.tar.gz
./cnijfilter2-5.50-1-deb/install.sh
sudo rm -rf cnijfilter2-5.50-1-deb*
wget http://gdlp01.c-wss.com/gds/1/0100009111/01/scangearmp2-3.50-1-deb.tar.gz
sudo tar -xvf scangearmp2-3.50-1-deb.tar.gz
./scangearmp2-3.50-1-deb/install.sh
sudo rm -rf scangearmp2-3.50-1-deb*
#call scangearmp2

#Install Git, SmartGit  and p4merge
sudo apt-get install git
sudo apt-get install gitg
sudo add-apt-repository ppa:eugenesan/ppa
sudo apt-get update
sudo apt-get install smartgit
wget https://www.perforce.com/downloads/perforce/r21.3/bin.linux26x86_64/p4v.tgz
tar zxvf p4v.tgz
sudo cp -r p4v-* /usr/local/p4v/
sudo ln -s /usr/local/p4v/bin/p4merge /usr/local/bin/p4merge
rm p4v.tgz
rm -r p4v-*

#Install Anaconda (Visit https://www.anaconda.com/products/individual)
sudo apt-get install curl
curl -O https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
sha256sum Anaconda3*
bash Anaconda3*
source ~/.bashrc
# select /home/slim/.local/anaconda3
rm Anaconda3*
# add jupyter missing desktops

#Install Pycharm
wget https://download.jetbrains.com/python/pycharm-community-2021.2.3.tar.gz
sudo tar xzf pycharm-*.tar.gz -C /opt/
sudo mv /opt/pycharm* /opt/pycharm
rm pycharm-*
cd /opt/pycharm/bin
sh pycharm.sh
# create desktop entry

# Install Vscode
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code

# Install sublime-text
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update
sudo apt install sublime-text
# Install packages

# Install postman
wget https://dl.pstmn.io/download/latest/linux64
sudo mkdir /opt/postman
sudo tar -xvf linux64 -C /opt/postman
sudo ln -s /opt/postman/Postman/Postman /usr/local/bin/postman
rm linux64

#Improve the file watchers (Ideal for IDE)
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

#Install pyenv
sudo apt-get update;
sudo apt-get install make build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
curl https://pyenv.run | bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'export PYENV_VIRTUALENV_DISABLE_PROMPT=1' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
exec $SHELL
pyenv update

#Install nodejs + nvm + yarn + npm
sudo apt-get install nodejs
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
# close terminal
exit
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
sudo curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install yarn
sudo apt-get install npm

#install nginx server
sudo apt-get install nginx
cd /etc/nginx

#Install Docker and Docker-Compose
sudo apt-get update
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io
docker --version
# 2020-02-15: apt version of docker-compose does not support 3.8 docker-compose syntax
# sudo apt-get install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo chmod a+rwx /var/run/docker.sock
sudo chmod a+rwx /var/run/docker.pid

#Install sqlite3
sudo apt-get install sqlite3 libsqlite3-dev
sudo apt-get install sqlitebrowser

#install postgresql (Special manipulation required to allow remote access)
sudo curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add
sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list'
sudo apt update
sudo apt-get install postgresql-12 postgresql-client-12
sudo apt install pgadmin4
# Below command was required to pip install psycopg2
sudo apt-get install libpq5=12.9-0ubuntu0.20.04.1 && sudo apt-get install libpq-dev

#Install mongodb
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
mongod --version

# Install redis, rq-dashboard and GUI client
sudo apt-get install redis-server
sudo systemctl start redis
wget https://github.com/qishibo/AnotherRedisDesktopManager/releases/download/v1.5.0/Another-Redis-Desktop-Manager.1.5.0.AppImage
#./Another-Redis-Desktop-Manager* --appimage-extract
mv Another-Redis-Desktop-Manager* another-redis-desktop-manager.AppImage
chmod a+x another-redis-desktop-manager.AppImage
sudo mkdir /opt/another-redis-desktop-manager
sudo mv another-redis-desktop-manager.AppImage /opt/another-redis-desktop-manager/
sudo ln -s /opt/another-redis-desktop-manager/another-redis-desktop-manager.AppImage /usr/local/bin/another-redis-desktop-manager

#install awscli
sudo apt-get install awscli

#install heroku-cli
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
