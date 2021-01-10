#!/bin/bash

DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

# This will sync some things that does not go into the public repo
# (excluded in git)
#  - inventory.yml
#  - variables
#
rsync -av ~/bin/ansible-desktop/ ~/wsp/ansible-desktop

mkdir -p ${DIR}/log
TODAY=$(date '+%Y%m%d-%H%M%S')
dconf dump / > ${DIR}/log/dconf-${TODAY}

ansible-playbook ${DIR}/main.yml --ask-become-pass --limit `hostname` --inventory ${DIR}/inventory.yml

echo "To restart at a particular task; use --start-at-task, e.g. "
echo "ansible-playbook ${DIR}/main.yml --ask-become-pass --limit `hostname` --inventory ${DIR}/inventory.yml --start-at-task=\"Start default profile as default\""

