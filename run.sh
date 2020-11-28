#!/bin/bash

ansible-playbook main.yml --ask-become-pass --limit `hostname` --inventory inventory.yml

