VLANs are how you break up your network into smaller networks, so that the devices and people within a single VLAN are communicating with each other and not having to manage traffic from other networks
Based on logical connections instead of physical connections. All devices on VLAN act as if they were communicating along the same cable.
Each VLAN is considered it's own seperate logical network.
Can span across multiple physical LAN segments.

## Types
### Default
default on VLAN 1. All switch ports are on VLAN 1 by default. All layer 2 control traffic is with VLAN 1
### Data
Specific VLAN to separate user generated traffic. Voice and network traffic should not be allowed on data VLAN.
### Native
user traffic must be tagged with VLAN ID when it is sent to another switch. Trunk ports are used between switches to suport transimision of tagged traffic. 802.1Q trunk port inserts 4-byte tag into ethernet fram header to identify VLAN it belongs to.
Switch may send untagged traffic through trunk link. Untagged generated from switch may come from legacy devices. 802.1Q trunk puts untagged traffic into native VLAN. Cisco native is VLAN1 or default.
Best to make native as unused vlan and not vlan 1.
### Management
Specific for network management traffic like ssh, telnet, https, http. By default, VLAN 1 is default for management
### Voice
Support voice over IP.
* Requries
* assured bandwith
* transmision prioirt over other traffic
* can reoute around congested areas.
* deay of less than 150 ms.
VLAN 150 is designed by default
# Trunks
ALlows VLAN traffic to talk between switches. Connect to different siwtches but in same VLAn without going through router.
Trunk is point-to-point link VLAN trunk extends VLAn across entire netowrk. IEEE 802.1Q coordinates trunsk on fast ether, gig ether, 10 gig ether.
Doesn't belong to specific VLAN.  It is a conduit for multiple VLANs between switches and routers. Trunk can also be eused between netowrk device and server or another device with 802.1Q-capable NIC. By default, all VLANs are supported on a trunk port with CISCO.

## Without VLANs
When switch recieves broadcast from on one of its ports, it forwards the frame to all other ports except where it was recieved. When no VLANS are configured, when computer sends broadcast frame, switch sends broadcast frame out all of its ports. Eventually it reaches the enetire network because it is one broadcast domain.
## With VLAN
VLANs associated to individual switch ports. Device has no concept of VLAN. Te devices are configured with IP address and members of specfiic IP network. A VLAN is equivalent to an IP network (subnet).  
When netowrk has VLANs, when a computer sends broadcast, the frame is sent to swtich, and switch forwards the braodcast frame only to those switch ports ocnfigued to support that VLAN the comptuer is on.
## Identification with Tags
The Ethernet frame header contains no info about VLAN it belongs to. WHen frames are placed on a trunk, info about VLANs that it belongs to must be added. This process is called tagging. Accomplished by IEEE 802.1Q header. It includes a 4 byte tag inserted withhin original Ethernet frame header, specifying thee VLAn to which the frame belongs to.
When switch recieves frame on port configured in access mode and assigneed a VLAN, the switch isnerts the VLAN tag in frame header, recalculates Frame Check Sequence (FCS) and sends the tagged frame out of the trunk ports
### Tag Field Details
VLAN tag control info field consists of
* Type - 2-byte value called tag Protocal ID(TPID) value. Eithernet it is set to hexadeecimal 0x8100.
* User Priority - 3-bit value that 
# Catalyst Switch
## Normal range vlans
* used in small medium siszed businese or enterprise neteworks
* identified by VLAN ID between 1-1005
* ID 1002 - 1005 reserved for legacy networks technolgies(token ring and fiber distributed data interface)
* ID 1 and 1002 and 1005 are automaticaly created. Can't be rmoved
* Configurations stored on switch flash memory in VLAn database file called vlan.dat
* VLAN trunking protocal (VTP) helps synchronize the VLAN database between switches
## Extended range VLAN
 * Used by service providers to service multiple customers and by global enterprise large enough to need them.
 * Identified by VLAn ID between 1006 and 4094
 * Configurations are saved by default in running configuration
 * support fewer VLAn features than normal range VLAN
 * requries VTP transpartent mode configuration to support extended range VLAN
* 
