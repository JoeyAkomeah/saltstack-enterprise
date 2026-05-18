Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/jammy64"
  config.vm.boot_timeout = 1000

  # =========================
  # SALT MASTER
  # =========================
  config.vm.define "master" do |master|
    master.vm.hostname = "salt-master"
    master.vm.network "private_network", ip: "192.168.56.10"

    master.vm.provider "virtualbox" do |vb|
      vb.memory = 768
      vb.cpus = 1
    end
  end

  # =========================
  # WEB DEV
  # =========================
  config.vm.define "web-dev" do |node|
    node.vm.hostname = "web-dev"
    node.vm.network "private_network", ip: "192.168.56.11"

    node.vm.provider "virtualbox" do |vb|
      vb.memory = 384
      vb.cpus = 1
    end
  end

  # =========================
  # WEB PROD
  # =========================
  config.vm.define "web-prod" do |node|
    node.vm.hostname = "web-prod"
    node.vm.network "private_network", ip: "192.168.56.12"

    node.vm.provider "virtualbox" do |vb|
      vb.memory = 384
      vb.cpus = 1
    end
  end

  # =========================
  # DB NODE
  # =========================
  config.vm.define "db" do |node|
    node.vm.hostname = "db-server"
    node.vm.network "private_network", ip: "192.168.56.13"

    node.vm.provider "virtualbox" do |vb|
      vb.memory = 384
      vb.cpus = 1
    end
  end

end