#!/bin/bash

set -e

# Atualizar pacotes e sistema
sudo apt update && sudo apt upgrade -y

# Instalando ferramentas essenciais para compilação e desenvolvimento..."
sudo apt install -y \
	gcc make libssl-dev \
    build-essential \
	zlib1g-dev \
	libbz2-dev \
	libreadline-dev \
	libsqlite3-dev \
	llvm \
    libffi-dev \
    software-properties-common \
	libncurses5-dev libncursesw5-dev \
	xz-utils tk-dev liblzma-dev \
    ca-certificates

# Instalar ferramentas utilitárias e de linha de comando
sudo apt install -y \
    curl \
    wget \
    git \
    unzip \
	perl \
	dkms \
    nano \
    vim \
    tree \
    neofetch \
    man \
    lsb-release \
    tmux \
    rsync \
    jq \
    lsof

# Instalar suporte a aplicações gráficas (X11) (Opcional para WSL)
sudo apt install -y \
    x11-apps \
    dbus-x11 \
    libxkbcommon-x11-0 \
    libgl1-mesa-glx \
    libegl1-mesa \
    libxcb-keysyms1 \
    libxcb-icccm4 \
    libxcb-image0 \
    libxcb-shm0 \
    libxcb-randr0 \
    libxcb-render-util0 \
    libxcb-xinerama0 \
    libsm6 \
    libxext6 \
    libxrender1 \
    gedit 

# Instalar ferramentas de monitoramento de sistema e rede
sudo apt install -y \
    htop \
    iotop \
    iftop \
    nethogs \
    iptraf-ng \
    bmon \
    net-tools \
    dstat \
    iputils-ping \
    traceroute \
    dnsutils \
    telnet \
    nmap \
    netcat \
    sysstat

# Instalar Python 3, pip e venv, etc
sudo apt install -y \
    python3 \
    python3-pip \
    python3-venv \
    python3-dev \
	python3-openssl

#Instalar Node.js (LTS) e npm"
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs

# Instalar pacotes globais do Node.js"
sudo npm install -g \
    typescript \
    yarn \
    pnpm \
    eslint \
    nodemon \
    serve
	
# Instalar o pyenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
# Use o comando abaixo se o de cima não funcionar
# curl https://pyenv.run | bash

# Adiciona configuração ao bashrc
echo -e '\n# Configuração do pyenv' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'eval "$(pyenv init --path)"\neval "$(pyenv init -)"' >> ~/.bashrc

# Adiciona configuração ao zshrc (caso use o ZSH)
# echo -e '\n# Configuração do pyenv' >> ~/.zshrc
# echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
# echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
# echo -e 'eval "$(pyenv init --path)"\neval "$(pyenv init -)"' >> ~/.zshrc


echo "Ambiente de desenvolvimento configurado com sucesso!!!!!!"

# Opcionais: zsh-config