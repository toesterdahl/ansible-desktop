#!/bin/bash

# This will sync some things that does not go into the public repo
# (excluded in git)
#  - inventory.yml
#  - variables
#
rsync -av ~/bin/ansible-desktop/ ~/wsp/ansible-desktop

ansible-playbook main.yml --ask-become-pass --limit `hostname` --inventory inventory.yml

