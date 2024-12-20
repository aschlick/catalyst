#!/bin/bash

systemctl enable sshd
systemctl enable docker
systemctl enable systemd-networkd.service
systemctl enable glusterd

cat >> /root/.ssh/authorized_keys <<EOF
ecdsa-sha2-nistp521 AAAAE2VjZHNhLXNoYTItbmlzdHA1MjEAAAAIbmlzdHA1MjEAAACFBABzv6YBjn8LlLHB1F/sVdZvN+z5lL/xpKjiNFlIs1u4GW+lcvyf3cyeGJ9bWfnHIl9Aae3WheVTr+6aUFKVLI6UbQHoWNzRTIijs/3uvQPQUl+bOIeSWKwaPncWzn6B5VXus2w2o2385ZXDA+Iqu2eHNUpx9ey7yFxUjxgFNkx5p2BzBA== alex@SchlickSurface
ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBJXfhZ4MyBvXjw8JTNrc5UxMDLi5E+NGxO5Lx6cvEWs514AGlGPx2UsCWzIlg83l0XPlrgzaotgts6tTH/BQuGE= alexa@SchlickSurface
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIB+7YpRGkKO8D9EBDLyk3heWb2Qu5325EQHStLySYCmQ alexander@schlickster.us
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG6KHfhilXQJJ01meKSrFkm5q7YlphMTI7+fiNR0Z9bP root@schlickminiserver
EOF

chmod 600 /root/.ssh/authorized_keys

echo "root:SomeP4s5word" | chpasswd
