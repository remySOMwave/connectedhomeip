FROM gitpod/workspace-full:latest

# Mettre à jour le système et installer OpenJDK
RUN sudo apt-get update && sudo apt-get install -y openjdk-11-jdk
