FROM gitpod/workspace-full:latest
RUN sudo apt update
RUN sudo apt install -y openjdk-11-jdk python3-pip git wget unzip
RUN sudo apt-get update && \
    sudo apt-get install -y build-essential cmake ninja-build clang-format libssl-dev libdbus-1-dev

# Mettre à jour le Python et pip
RUN sudo apt-get update && \
    sudo apt-get install -y python3 python3-pip && \
    pip3 install --upgrade pip

# Définir JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

# Ajouter les variables d'environnement nécessaires
ENV PATH=$JAVA_HOME/bin:$PATH
