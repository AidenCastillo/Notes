Process of dividing a large network into small, more manageable subnetworks (subnets). Organize networks, conserve IP addresses, provide security and performance.
* Efficient IP address management - prevents waste of IP addresses by dividing network into subnets that match the size needed
* Improve security - Limit broadcast domains, reduce exposure of devices
* Better network performance - reduce congestion by confining traffic into subnets

## IP Address Structure
IP address consists of 32 bits, divided into 4 octets (a.b.c.d, 192.1282.1.1)
### Classes of IPv4
* Class A: 1.0.0.0 to 126.0.0.0 (Default subnet /8)
* Class B: 128.00.0 to 191.255.0.0 (Default subnet /16)
* Class C: 192.0.0.0 to 223.255.255.0 (Default subnet /24)
### Private IP Ranges
- Class A: `10.0.0.0` to `10.255.255.255`
- Class B: `172.16.0.0` to `172.31.255.255`
- Class C: `192.168.0.0` to `192.168.255.255`

## Subnet Masks
A subnet mask separates the network and host portions of an IP address
* Format: `255.255.255.0` or `/24
* in `192.168.1.10/24`, the `/24` indicates the first 24 bits are network bits
## CIDR (Classless Inter-Domain Routing) Notation
CIDR notation (`/24`) shows how many bits are used for a network part of an IP
Smaller CIDR numbers mean larger networks, while larger CIDR numbers indicate smaller networks

## Subnets, Networks, and Hosts
* Network address - First IP in a range, represents the subnet (`192.168.1.0`)
* Broadcast address - Last IP in a range, used for sending data to all devices in a subnet (192.168.1.255)
* Usable Host IPs: IPs between network and broadcast

## Subnetting Formula
* Number of subnets - `2^n`(`n` is number of borrowed bits)
* Number of Hosts per subnet - `2^h - 22` (`h` is number of host bits)

| **CIDR** | **Subnet Mask**   | **Hosts per Subnet** | **Network Bits** | **Host Bits** | **Number of Subnets (Class C)** | **Usable IP Range Example**   |
| -------- | ----------------- | -------------------- | ---------------- | ------------- | ------------------------------- | ----------------------------- |
| `/24`    | `255.255.255.0`   | 254                  | 24               | 8             | 1                               | `192.168.1.1 - 192.168.1.254` |
| `/25`    | `255.255.255.128` | 126                  | 25               | 7             | 2                               | `192.168.1.1 - 192.168.1.126` |
| `/25`    | `255.255.255.128` | 126                  | 25               | 7             | 2                               | `192.168.1.1 - 192.168.1.126` |
| `/27`    | `255.255.255.224` | 30                   | 27               | 5             | 8                               | `192.168.1.1 - 192.168.1.30`  |
| `/28`    | `255.255.255.240` | 14                   | 28               | 4             | 16                              | `192.168.1.1 - 192.168.1.14`  |
| `/29`    | `255.255.255.248` | 6                    | 29               | 3             | 32                              | `192.168.1.1 - 192.168.1.6`   |
| `/30`    | `255.255.255.252` | 2                    | 30               | 2             | 64                              | `192.168.1.1 - 192.168.1.2`   |
| `/31`    | `255.255.255.254` | 0 (Point-to-Point)   | 31               | 1             | 128                             | `192.168.1.0 - 192.168.1.1`   |
| `/32`    | `255.255.255.255` | 1 (Single Host)      | 32               | 0             | N/A                             | `192.168.1.1`                 |

## Example 1: Subnetting a Class C Network
* Given: `192.168.1.0/26
* Subnet Mask: `255.255.255.192
* Number of Subnets: `4` (as `2^2 = 4`)
* Hosts per Subnet: `62` (as `2^6 - 2 = 62`)

|**Subnet**|**Network Address**|**Usable IP Range**|**Broadcast Address**|
|---|---|---|---|

|   |   |   |   |
|---|---|---|---|
|Subnet 1|`192.168.1.0`|`192.168.1.1 - 192.168.1.62`|`192.168.1.63`|

|   |   |   |   |
|---|---|---|---|
|Subnet 2|`192.168.1.64`|`192.168.1.65 - 192.168.1.126`|`192.168.1.127`|

|   |   |   |   |
|---|---|---|---|
|Subnet 3|`192.168.1.128`|`192.168.1.129 - 192.168.1.190`|`192.168.1.191`|

|   |   |   |   |
|---|---|---|---|
|Subnet 4|`192.168.1.192`|`192.168.1.193 - 192.168.1.254`|`192.168.1.255`|


## Tips
* Remmeber the powers of 2
* Subnet Mask Patterns: Eeach step up in CIDR notion cuts the available hosts roughly in half
* Find the increment: For quick subnet calculation, use `256 - subnet mask` to determine block size (incremenet between subnets)
* **Cheat Sheet for Common Subnetting Calculations**:
	- `/24` - 256 total addresses, 254 usable.
	- `/26` - 64 total addresses, 62 usable.
	- `/28` - 16 total addresses, 14 usable.