NODES = 3
Vagrant.configure("2") do |config|
  (1..NODES).each do |i|
    name = case i
    when 1
      "mgr1"
    when 2
      "mgr2"
    when 3
      "worker"
    end

    name ||= "vm-#{i}" # set default name if name is not already set

    config.vm.define name do |nodeconfig|
      nodeconfig.vm.hostname = name
      nodeconfig.vm.box = "bento/ubuntu-20.04"
      nodeconfig.vm.network :private_network, ip: "192.168.56.#{i + 15}"
    end
  end
end
