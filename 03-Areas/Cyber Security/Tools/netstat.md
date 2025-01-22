Tool used to display TCP connections, ethernet stats, IP routing tables, IPv4, IPv6, and open ports

| Option | Explaination |
|--------|--------------|
| netstat | When command called by itsself, it displays a list of active TCP connects, each with its local IP address, foreign IP address, along with ports and TCP state|
|-a| Switch to display active TCP connections, connections with listening state, or UDP ports that are being listened to |
|-b | Display the proccess's actual file name. Command extends time it takes for netstat to fully execute then -o| 
|-e| Show stats about network connection. Includes bytes, unicast packets, non-unicast packets, discards, errors, unknown protocols recieved or sent since connection made|
|-f| Force netstat command to display Fully Qualified Domain Name (FQDN) fore each foreign IP address when possible |
|-n| prevent netstat from attempting to find host names for foreign IP address. Considerably reduce time to execute |
|-o| Display process identifier (PID) associated with each process|
|-p| Only show connections used for particular protocol. You can't define more than one protocol at once.|
|`protocol`| When using -p, you can use tcp, udp, tcpv6, udpv6. If using -s with -p, you can use icmp, ip, icmpv6, ipv6 in addition to the previous|
|-r| Shows IP routing table|
|-s| Detailed stats by protocol. You can limit stats for particular protocol using -s and `protocol`, be sure to use -s before -p `protocol`|
|-t| Show current TCP chimmney offload state in place of regular TCP state|
|-x| Show all NetworkDirect listeners, connections, shared endpoints|
|-y| SHow TCP collection template for all connections. Can't use -y with other options|
|time_interval| Time in seconds that you'd like netstate to re-execute atuomatically stopping only when use `Ctrl-C`|
|/?||
