#!/bin/bash
#生成密钥
\rm -f /root/.ssh/id_dsa*
ssh-keygen -t dsa -f /root/.ssh/id_dsa -P "" -q

#发送密钥
for ip in 61 8 31 41
do
echo "==== 现在分发 172.16.1.$ip=========="
sshpass -p123456 ssh-copy-id -i /root/.ssh/id_dsa.pub "-o StrictHostKeyChecking=no root@172.16.1.$ip"
echo "==============end======="
echo
done
