FROM gitpod/workspace-full:latest

# Mettre à jour le système et installer les dépendances nécessaires
RUN sudo apt update && sudo apt install -y \
    openjdk-11-jdk \
    python3-pip \
    git \
    wget \
    unzip \
    build-essential \
    cmake \
    ninja-build \
    clang-format \
    libssl-dev \
    libdbus-1-dev

# Mettre à jour le Python et pip
RUN pip3 install --upgrade pip

# Définir JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

# Ajouter les variables d'environnement nécessaires
ENV PATH=$JAVA_HOME/bin:$PATH
