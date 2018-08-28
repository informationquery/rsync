#!/bin/bash
sh /server/scripts/piliangceshimiyao.sh
ansible-playbook /server/tools/rsyncpiliang.yml
ansible-playbook /server/tools/nfspiliang.yml
ansible-playbook /server/tools/quanwang.yml
