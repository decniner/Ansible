# Ansible

List of commands

#list inventory in graph format
ansible-inventory --graph 

# ad-hoc command : list git global config from a subset of hosts in inventory
ansible -m command -a "git config --global --list" vagrant

#check which package manager is used on all hosts in inventory
ansible -m setup -a "filter=ansible_pkg_mgr" all
