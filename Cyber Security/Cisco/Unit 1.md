* Network Interface Card NIC - physically connects the end device to network
* Phyiscal port - connctor or outlet on network device where media connects end device to another networking device
* interface - specialized ports on networking devices that connect it to individual netwokrs
# Topology diagrams
* Physical topology diagrams show physical location of devices and calbe installation.
* Logical topology show devices ports and addresing scheme of networks.
# Types of Networks
Infrastrucutres vary between 
* size
* numbers of users
* number and types of services availaible
* area of responsibility
LAn is local area networks prives access to users and end devices in small geographical areas. Used in detartment within an enterprise, a home, or small business. WAN or Wide Area Netoworks prove access ot other networks over wide geographical area.
LAN provides high speed bandwidth to internal end devices, interconnect end deivces to limited areaa, and administered by single organization
WANs are administered by multiple services providers, typicall provide slower speed links between LANs

# Intranets and Extranets
Intranet is term used to prefer to private connections of LAN and WANs belonging to an organization.  Designed to be accessible only by organization members, employees, and other authorization
ExtraNet provides secure and safe access to individuals who work for different organizations but require access to organization data. Used when company is providing access to touside suppliers and contractors, hospitals that provide booking system for doctors to make appointments for patients, local office of education that is prodiving budget and personal informaiton to school in district
# Internet Connections
Digial subscruber lines DSL provide high bandwidth, high avialablility, always on connection  to inetenre.t RUn over telephone line, used in small offices and home office users connected to asymmetric DSL.

# Powerline Networking
For small networks, you can use electrical outlets and connections to transfer data between devices without the need of a wireless system or physical connection besides electricity

# Zero-day attacks
Occur first day vulnerability becomes known
# Access Control Lists (ACL)
Filter access and traffic forwarding based on IP addresses and applications
# Intrusion Prevention System (IPS)
Identify fast spreading threats like zero day attacks

# Operating System
## Shell
The user interface to request tasks from computer. Made through cli or gui
## Kernel
communicates hardware and software of computer, manages hardware resources.
## Hardware
Physical part of computer

CLI requires very littel overhead to operate but needs knowledge of underlying command structure.

Network operating systems enables a technicion to use keyboard to run cli based network programs. Enter text and text-based commands, view output

## Access Methods
* Console - Physical management port providing out of abnd access to cisco device. Out of band refers to access via dedicated management channel used for maintenance purposes only. Advance is even if no networking services are configured, a computer running terminal emulation softwarewith special console cable can connect to device
* Secure Shell (SSH) - In band and recommended method for remotely establishing a secure CLI connection through virtual interface. SSH requires active netowrking services on device, including active interface configured with an address. Most cisco IOS include SSH server and client
* Telnet - Insecure in band method of remote CLI session. unlike SSH, telnet does not providee secure encrypted connection and should only be eused in lab environment. User auth, passowrds and commands are net over network in plain text. Best practice is to use SSH over telnet
* Aux - provides out of band connections over telephone line
##  Command Modes
* User EXEC Mode - limited capabilitiese but useful for basic operations. Allows limted number of monitoring comamdnds and does not allow execution of any commands that can change configuration.  Identified by > symbol in CLI
* Privileged EXEC Mode - Execute configuration commands a network admin must be in EXEC privilege. Identifed by # symbol
Global config modee is identified iwth `Switch(config)#`. Accessed before other specific configuration modes. Two common subconfiguration are 
* Line Configuration mode - used to configure console, ssh, telnet, aux access
* interface configuration mode - configure switch port or router network interface
To enter Privileged EXEC mode, use `enable` and `disable` to return to user EXEC mode. To move into global config mode, use `configure terminal`, to return use `exit`. Subs are accessed same way with `line`.
Move from subconfig to EXEC mode type `end`
## Configure Password
To secure user EXEC mode access, enter `line console 0` in global config. Zero is used to represent thee first console interface. Specify the passowrd using `password`. Then enable user EXEC access using `login`. Console now requries password before allowing access to user EXEC mode. To have admini access to ios commands inclding config, you mjust gain priviledge EXEC mode.To secure privilege EXXEC access use `enable secret <password>` in global config

The virtual terminal (VTY) lines enable remote access using telnet or ssh. Many cisco switchs support upt o 16 VTY lines, numbererd 0 to 15
Use `line vty 0 15` in global config. then `password <password>` and `login`
