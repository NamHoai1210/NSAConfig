sudo iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE
sudo config enp0s8 192.168.18.1/24
sudo config enp0s8 192.168.19.1/24
sudo route add -net 192.168.8.0/24 gw 192.168.18.2
sudo route add -net 192.168.9.0/24 gw 192.168.19.2
