#!/bin/bash
iptables -F
iptables -A INPUT -p icmp -j ACCEPT
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT
iptables -A INPUT -m state --state NEW,ESTABLISH,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state NEW,ESTABLISH,RELATED -j ACCEPT
iptables -A INPUT -m state --state INVALID -j DROP
iptables -A OUTPUT -m state --state INVALID -j DROP
iptables -A INPUT -s 0.0.0.0/0  -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0  -p tcp --dport 80 -j ACCEPT
#iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 80 -j ACCEPT
#iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 443 -j ACCEPT
iptables -A INPUT -s 10.178.5.0/24 -d 10.178.5.20 -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -s 10.178.0.0/24 -d 10.178.5.20 -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -s 10.178.5.0/24 -d 10.178.5.20 -p tcp --dport 20 -j ACCEPT 
iptables -A INPUT -s 10.178.0.0/24 -d 10.178.5.20 -p tcp --dport 20 -j ACCEPT 
iptables -A INPUT -s 10.178.0.0/24 -d 10.178.5.20 -p tcp --dport 21 -j ACCEPT 
iptables -A INPUT -s 10.178.5.0/24 -d 10.178.5.20 -p tcp --dport 21 -j ACCEPT
iptables -A INPUT -s 10.178.5.0/24 -d 10.178.5.20 -p tcp --dport 4443 -j ACCEPT
iptables -A INPUT -s 10.178.5.0/24 -d 10.178.5.20 -p udp --dport 10000 -j ACCEPT
iptables -A INPUT -s 10.178.5.0/24 -d 10.178.5.20 -p tcp --dport 445 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 9091 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 5443 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 9090 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 5222 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 5229 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 5223 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 7070 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 7443 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 7777 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 5269 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 5270 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 5275 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 5276 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 5262 -j ACCEPT
iptables -A INPUT -s 0.0.0.0/0 -d 10.178.5.20 -p tcp --dport 5263 -j ACCEPT
iptables -A INPUT -s 10.178.5.0/24 -d 10.178.5.252 -p tcp --dport 20 -j ACCEPT
iptables -A INPUT -s 10.178.0.0/24 -d 10.178.5.252 -p tcp --dport 21 -j ACCEPT
iptables -A INPUT -s 10.178.0.0/24 -d 10.178.5.252 -p tcp --dport 20 -j ACCEPT
iptables -A INPUT -s 10.178.5.0/24 -d 10.178.5.252 -p tcp --dport 21 -j ACCEPT
iptables -A INPUT -s 10.178.5.0/24 -d 10.178.5.20 -p tcp --dport 9100 -j ACCEPT
iptables -A INPUT -s 10.178.5.0/24 -d 10.178.5.20 -p tcp --dport 9117 -j ACCEPT
iptables -A INPUT -s 10.178.5.0/24 -d 10.178.5.20 -p tcp --dport 9436 -j ACCEPT
iptables -P INPUT  DROP
iptables -P FORWARD  DROP
iptables -P OUTPUT  DROP
