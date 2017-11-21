#! /bin/bash
sed -n -e "/TASK/s/^[0-9-]* //p" playbook.log | sed -e "s/,.*TASK//" -e "s/\**$//" | egrep -v "(copy|pause|service|apt|command|set_fact|Gathering)"
