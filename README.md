# ansible-desktop
Setting up the local desktop (Ubuntu) using Ansible.

This project is for managing an Ubuntu desktop machine using Ansible. The Ansible playbook is applied locally; as you would usually be logged in to a desktop. 

# Install Ansible

sudo apt install ansible 

# Preparation

Copy inventory-template.yml to inventory.yml

Add your machines. For simplicity machines are added to the existing groups 'laptop' and 'server'. 

Edit main.yml (project root) to add roles to hosts and groups from the inventory. 

# Ansible Galaxy

In case you use roles that are not part of this project but hosted on github you will need to add those external requirements to requirements.yml and install them. 

```ansible-galaxy install -r requirements.yml```

# Apply (run) the playbook

The assumption here is that you check out the project and apply to a local machine. 

 - We use connection=local which will disable ssh execution. 
 - By limiting (--limit `hostname`) we make sure to apply only to the current host. 

```ansible-playbook main.yml --ask-become-pass --limit `hostname` --inventory inventory.yml```

# Credits: 
* Author: Torbjörn Österdahl (ultra-marine.org)

# Participation (Contributions)

This is an example provided 'as is'. Don't expect me to react on any issues raised. 

# Inspiration

- https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html
- https://dev.to/iancleary/automating-your-desktop-with-ansible-20jk
- https://github.com/iancleary/ansible-desktop/
- https://opensource.com/article/18/3/manage-workstation-ansible
- https://github.com/cdown/ansible-desktop
- https://gist.github.com/alces/caa3e7e5f46f9595f715f0f55eef65c1

