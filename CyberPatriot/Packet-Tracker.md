# Router
First do `enable` and `config terminal`
### Set Banner
Banner is important for legal side for declaring that only authorized personnel should access the device.
* `banner motd "message"`
### Set Hostname
* `hostname <name>`
### Set Line Passwords (console)
* `line console 0`
* `password <password>
* `login`
* `do copy run start
### Set Line Passwords (vty)
* `line vty 0 15
* `password <password>
* `login` Enables vty access using login
* `do copy run start
### Enable Secret
Adds verification before enabling EXEC mode
* `enable secret <password>
### Encrypte all plaintext passwirds
* `service password-encryption
### Verify settings
* `show running-config`
## Configurations
startup-config is config file that stores commands that will be used on device startup or reboot. Flash does not lose its content when device is powered off
Running-config is random access memory and is current configuration. Modifying a running config affects operation of device immediately. RAM is volatile, loses all its content when powered off
`show running-config`
`reload` will restore commads to startupconfig
startup config removed with `erase startup-config`
### Startup Config
* `do copy run start
## Ports
### Description
* `interface <interface> <type>
* `description "message"
### IP
* `interface <interface> <type>
* `ip address a.b.c.d sub.net.num.ber
### Port Status
* `interface <interface> <type>
* `no shutdown
### Default Gateway
Make sure that if you are subnetting, the ip address is of the correct ip set up by your router for that connection. Ex. if you subnetted with /26 and gigabit 0/0 was connected to LAN-A, then you would set the ip address for gigabit 0/0 to 192.168.0.1 and the default gateway in LAN-A would be 192.128.0.1 as well. LAN-b and gigabit 0/1 would be 192.128.0.65
* `ip default-gateway <router ip address>

## Subnetting
To create two subnets with the requirements in Cisco Packet Tracer, you need to determine the appropriate IP address ranges and subnet masks. Here’s a step-by-step guide:

### Step 1: Determine Subnet Masks

1. **Subnet 1**: At least 50 hosts.
    - Use a /26 subnet mask (`255.255.255.192`) which allows for 62 usable IP addresses.
    - Example: `192.168.1.0/26` (usable range `192.168.1.1` to `192.168.1.62`).
2. **Subnet 2**: At least 40 hosts.
    - Use a /26 subnet mask (`255.255.255.192`) which allows for 62 usable IP addresses.
    - Example: `192.168.1.64/26` (usable range `192.168.1.65` to `192.168.1.126`).

### Step 2: Assign IP Addresses and Default Gateways

- **Router Configuration**: Create two sub-interfaces for the router (e.g., `G0/0.1` and `G0/0.2`) to handle the two subnets.
- **Sub-interface for Subnet 1**:
    - Assign `192.168.1.1` with a subnet mask of `255.255.255.192` for the default gateway.
    - Command:
        
        bash
        
        Copy code
        
        `interface G0/0.1 encapsulation dot1Q 1 ip address 192.168.1.1 255.255.255.192`
        
- **Sub-interface for Subnet 2**:
    - Assign `192.168.1.65` with a subnet mask of `255.255.255.192` for the default gateway.
    - Command:
	        
        bash
        
        Copy code
        
        `interface G0/0.2 encapsulation dot1Q 2 ip address 192.168.1.65 255.255.255.192`
        

### Step 3: Configure Switches

- Connect each switch to its corresponding sub-interface on the router.
- Assign an IP address within the range of each subnet to the VLAN interface on each switch for management purposes.
    - For Subnet 1 Switch:
        - IP Address: `192.168.1.2` with Subnet Mask: `255.255.255.192`
        - Default Gateway: `192.168.1.1`
    - Command:
        
        bash
        
        Copy code
        
        `interface vlan 1 ip address 192.168.1.2 255.255.255.192 ip default-gateway 192.168.1.1`
        
    - For Subnet 2 Switch:
        - IP Address: `192.168.1.66` with Subnet Mask: `255.255.255.192`
        - Default Gateway: `192.168.1.65`
    - Command:
        
        bash
        
        Copy code
        
        `interface vlan 1 ip address 192.168.1.66 255.255.255.192 ip default-gateway 192.168.1.65`
        

### Step 4: Verify Configuration

- Use `ping` from devices in each subnet to test connectivity.
- Ensure that the devices in Subnet 1 can communicate through `192.168.1.1` and those in Subnet 2 through `192.168.1.65`.

# Switch
First do `enable` and `config terminal`
### Set Banner
* `banner motd "message"`
### Set Hostname
* `hostname <name>`
### Set Line Passwords (console)
* `line console 0`
* `password <password>
* `login`
* `do copy run-config start-config
### Set Line Passwords (vty)
* `line vty 0 15
* `password <password>
* `login
* `do copy running-config start-config
### Enable Secret
* `enable secret <password>

### Default Gateway
* `ip default-gateway <router ip address>
### Startup Config
* `do copy running-config startup-config
## Ports
### Description
* `interface <interface> <type>
* `description "message"
### IP
* `interface <interface> <type>
* `ip address a.b.c.d sub.net.num.ber
### Port Status
* `interface <interface> <type>
* `no shutdown

# PC
### Set IP Configuation
* Go to IP Configuration
* Change `IPv4 Address` to connected switches with last number incremented by 1
* Change subnet to specified in directions
* `Default Gateway` to router ip address

## Vlan
Allows for seperation on network. Virutual LANS
![[Pasted image 20241116012451.png]]
![[Pasted image 20241116012517.png]]
