# Ansible

List of commands

#list inventory in graph format
ansible-inventory --graph 

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
