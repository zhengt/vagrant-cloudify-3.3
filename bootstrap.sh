#!/usr/bin/env bash
set -e

#sudo rpm -iUvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm
#sudo yum -y update
#sudo yum -y install python-pip

yum install -y zlib-dev openssl-devel sqlite-devel bzip2-devel git unzip
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py

rpm -i /vagrant/cloudify-centos-Core-cli-3.3.0-ga_b300.x86_64.rpm
echo "source /opt/cfy/env/bin/activate" >> ~/.bashrc
source ~/.bashrc

mkdir ~/work && cd ~/work
cfy init
cfy bootstrap --install-plugins -p /opt/cfy/cloudify-manager-blueprints-commercial/simple-manager-blueprint.yaml -i /vagrant/simple-manager-blueprint-inputs.yaml
