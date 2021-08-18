#! /bin/bash
apt-get install git -y 
apt-get install kubectl -y 
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
apt-get update -y
apt-get install helm -y
# Install Terraform
apt-get install software-properties-common -y
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
apt-get update -y
apt install terraform -y 
apt-get install zip -y
echo "alias t=terraform" >> ~/.bashrc
echo "alias k=kubectl" >> ~/.bashrc
echo "alias ll='ls -al'" >> ~/.bashrc
# empty line above is needed, keep it