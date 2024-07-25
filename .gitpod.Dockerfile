FROM gitpod/workspace-full:latest

# Mettre à jour le système et installer les dépendances
RUN sudo apt-get update && \
    sudo apt-get install -y openjdk-11-jdk python3-pip git wget unzip build-essential cmake ninja-build clang-format libssl-dev libdbus-1-dev && \
    sudo apt-get clean && \
    pip3 install --upgrade pip

# Définir JAVA_HOME
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH
