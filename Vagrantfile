# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # #####
  # configuration variables
  # #####
  _vm_box = "ubuntu/trusty64"
  _vm_name = "vagrant-js-dev"
  _vm_hostname = "main.example.com"

  # #####
  # vagrant vm definition
  # #####
  config.vm.box = _vm_box

  # vbguest: Should the plugin take the Guest Additions from remote or local installation? (default: remote)
  #config.vbguest.no_remote = true

  config.vm.define "main", primary: true do |main|
    main.vm.hostname = _vm_hostname

    # use the default sync folder /vagrant
    main.vm.synced_folder ".", "/vagrant", disabled: false

    ## check and exec only if plugin are not disabled
    #if Vagrant.has_plugin?("vagrant-vbguest")
    #  # custom shared folder
    #  main.vm.synced_folder _sharedFolder_provision_hostPath, _sharedFolder_provision_guestPath, create: true
    #  main.vm.synced_folder _sharedFolder_vboxsf_hostPath, _sharedFolder_vboxsf_guestPath, create: true
    #end

    main.vm.network "forwarded_port", host: 8080, guest: 8080, auto_correct: true

    main.vm.provider :virtualbox do |vb|
      #vb.name = _vm_name
      vb.cpus = 4
      vb.memory = "4096"

      # set the host as dns resolver
      vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]

      ## Display the VirtualBox GUI when booting the machine
      #vb.gui = true

      # try to use VirtualBox linked clone
      vb.linked_clone = true
    end

    # basic provision with shell script
    main.vm.provision :shell, path: ".provision/bootstrap.sh"
  end
end
