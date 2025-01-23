#!/bin/bash
# 设置TCP缓冲区大小
sysctl -w net.ipv4.tcp_wmem="4096 16384 10625000"
sysctl -w net.ipv4.tcp_rmem="4096 87380 10625000"

# 将设置写入/etc/sysctl.conf以便永久保存
echo "net.ipv4.tcp_wmem = 4096 16384 10625000" >> /etc/sysctl.conf
echo "net.ipv4.tcp_rmem = 4096 87380 10625000" >> /etc/sysctl.conf

# 应用更改
sysctl -p
