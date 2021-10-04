Vagrant.configure("2") do |config|
  #config.vm.box = "base"

  config.vm.define "pesbuk" do |pesbuk|
    pesbuk.vm.provider "virtualbox" do |v|
      v.memory = 1024
      v.cpus = 1
    end

    pesbuk.vm.box = "ubuntu/xenial64"
    pesbuk.vm.hostname = "pesbuk"
    pesbuk.vm.provision :shell, path: "pesbuk.sh"
    pesbuk.vm.network "private_network", ip: "192.168.33.11"

  end

  config.vm.define "landingpage" do |landingpage|
    landingpage.vm.box = "ubuntu/xenial64"
    landingpage.vm.hostname = "landingpage"
    landingpage.vm.network "private_network", ip: "192.168.33.12"
    landingpage.vm.provision :shell, path: "landingpage.sh"

  end

  config.vm.define "wordpress" do |wordpress|
    wordpress.vm.box = "ubuntu/xenial64"
    wordpress.vm.hostname = "wordpress"
    wordpress.vm.network "private_network", ip: "192.168.33.13"
    wordpress.vm.provision :shell, path: "wordpress.sh"
  end

end
