# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
echo I am provisioning...
sudo echo "6.5" > /etc/yum/vars/full_releasever
sudo mv /home/vagrant/srpm.repo /etc/yum.repos.d/
sudo yum -y install http://mirror.omnilance.com/epel/6/i386/epel-release-6-8.noarch.rpm
sudo yum -y install bash-completion ccache createrepo mc redhat-rpm-config rpm-build rpmdevtools yum-utils
sudo yum install http://swiftsignal.com/packages/centos/6/i386/the-silver-searcher-0.14-1.el6.i686.rpm
sudo wget -P /etc/profile.d/ https://gist.githubusercontent.com/gentoo90/5999056/raw/5c957a93f92f61586a72768b360d8eb12f059304/colorprompt.sh
SCRIPT

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "nrel/CentOS-6.5-i386"

  # config.vm.box_check_update = false
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.ssh.forward_agent = true

  # config.vm.synced_folder ".", "/home/vagrant/rpmbuild/SPECS"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    # vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "file", source: "srpm.repo", destination: "~/srpm.repo"
  config.vm.provision "shell", inline: $script

end
