# -*- mode: ruby -*-"
# vi: set ft=ruby :

box_type  = "bento/centos-7.1"

Vagrant.configure("2") do |config|
  config.vm.define "cfy_mgr" do |cfy_mgr|
    cfy_mgr.vm.box = "#{box_type}"
    cfy_mgr.vm.box_download_insecure = true
    cfy_mgr.vm.provider "virtualbox" do |v|
      v.memory = 4096
      v.cpus = 1
    end
    cfy_mgr.vm.network "private_network", ip: "192.168.56.220"
    cfy_mgr.vm.network "private_network", ip: "192.168.56.221"
  end

  config.vm.define "cfy_cli" do |cfy_cli|
    cfy_cli.vm.box = "#{box_type}"
    cfy_cli.vm.box_download_insecure = true
    cfy_cli.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 1
    end
    cfy_cli.vm.network "private_network", ip: "192.168.56.222"

    cfy_cli.vm.provision "shell",  path: "bootstrap.sh"
  end

end
