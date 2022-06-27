Q# Ansible

List of commands

#list inventory in graph/list/ dump variable format
ansible-inventory --graph 
ansible-inventory --list
ansible-inventory --graph --vars

# ad-hoc command : list git global config from a subset of hosts in inventory
ansible -m command -a "git config --global --list" vagrant

#check which package manager is used on all hosts in inventory
ansible -m setup -a "filter=ansible_pkg_mgr" all

#vagrant cleanup once you're done with provisioning/using your VMs
#this will shotdown and destroy the vm
vagrant destroy -f

#check VM status
#shows the current vm state wether they are created or not
vagrant status

#create the vm
#it will bring the vm up with virtualbox provider
vagrant up

#ansible documentation
#this wil list documentation related to inventory
ansible-doc -t inventory --list

#dump the list of plugins for shell
ansible-doc -t shell --list
ansible-doc -t shell csh

#documentation for docker connection
ansible-doc -type connection docker

#ansible galaxy help
ansible-galaxy -h
ansible-galaxy role -h
ansible-galaxy collection -h
ansible-galaxy role info kosssi.gitconfig

#check which role is installed
ansible-galaxy role list

#install ansible-galaxy role
#ansible-galaxy install kosssi.gitconfig
