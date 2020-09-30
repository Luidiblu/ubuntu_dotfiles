# Removendo dependencias de lock
sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

echo "Instalando git"
sudo apt install git

echo "Criando pasta de Projetos"
mkdir ~/Projects

echo "Entrando na pasta de Projetos"
cd ~/Projects/

echo "Clonando flat-remix"
git clone https://github.com/daniruiz/flat-remix

echo "Clonando flat-remix-gtx"
git clone https://github.com/daniruiz/flat-remix-gtk


echo "Criando icones e temas"
mkdir -p ~/.icons && mkdir -p ~/.themes

echo "Instalando icones e temas"
cp -r flat-remix/Flat-Remix* ~/.icons/ && cp -r flat-remix-gtk/Flat-Remix-GTK* ~/.themes/

echo "Instalando gnome-tweak-tool"
sudo apt install gnome-tweak-tool fonts-hack-ttf -y

echo "Instalando dependencias"
sudo apt install build-essential default-jdk libssl-dev exuberant-ctags ncurses-term ack-grep silversearcher-ag fontconfig imagemagick libmagickwand-dev software-properties-common git vim-gtk3 curl

echo "Instalando ASDF"
cd ~
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

echo "Instalando Ruby-Asdf"
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
sudo apt-get install -y libreadline-dev
asdf install ruby 2.6.3
asdf global ruby 2.6.3

echo "Instalando NodeJS-Asdf"
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf install nodejs 12.6.0
asdf global nodejs 12.6.0
npm i -g npm

echo "Instalando Golang-Asdf"
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git

echo "Instalando Erlang-Asdf"
sudo apt-get -y install build-essential autoconf m4 libncurses5-dev libwxgtk3.0-gtk3-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libssh-dev unixodbc-dev xsltproc fop libxml2-utils libncurses-dev openjdk-11-jdk
asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf install erlang 22.0.5
asdf global erlang 22.0.5

echo "Instalando Elixir-Asdf"
asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf install elixir 1.9.0
asdf global elixir 1.9.0

echo "Instalando Kotlin-Asdf"
asdf plugin-add kotlin https://github.com/missingcharacter/asdf-kotlin.git
asdf install kotlin 1.3.41
asdf global kotlin 1.3.41

echo "Instalando Rust-Asdf"
asdf plugin-add rust https://github.com/code-lever/asdf-rust.git
asdf install rust 1.36.0
asdf global rust 1.36.0

echo "Instalando Crystal-Asdf"
asdf plugin-add crystal https://github.com/asdf-community/asdf-crystal.git
asdf install crystal 0.29.0
asdf global crystal 0.29.0

echo "Instalando Terminator"
sudo apt install terminator

echo "Instalando Spotify"
sudo apt install spotify-client

echo "Instalando Slack"
sudo snap install slack --classic

echo "Instalando DBeaver"
cd ~
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
chmod +x dbeaver-ce_latest_amd64.deb
sudo dpkg -i dbeaver-ce_latest_amd64.deb

echo "Instalando databases"
sudo apt -y install postgresql redis-server
sudo apt -y install postgresql-contrib
sudo apt -y install libhiredis-dev
sudo apt -y install memcached
sudo apt -y install libmemcached-dev

echo "Instalando conda"
cd ~
wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
chmod +x Anaconda3-2020.07-Linux-x86_64.sh
sudo ./Anaconda3-2020.07-Linux-x86_64.sh
