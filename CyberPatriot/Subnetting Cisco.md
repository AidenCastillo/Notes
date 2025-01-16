### 1. **Configuring CustomerRouter**

#### Enter Configuration Mode and Set Up Passwords

bash

Copy code

`enable configure terminal hostname CustomerRouter enable secret Class123 line console 0 password Cisco123 login exit`

#### Configure G0/0 Interface (LAN-A)

bash

Copy code

`interface g0/0 ip address 192.168.0.1 255.255.255.192 no shutdown exit`

#### Configure G0/1 Interface (LAN-B)

bash

Copy code

`interface g0/1 ip address 192.168.0.65 255.255.255.192 no shutdown exit`

#### Save Configuration

bash

Copy code

`end copy running-config startup-config`

---

### 2. **Configuring LAN-A Switch**

#### Enter Configuration Mode

bash

Copy code

`enable configure terminal`

#### Configure VLAN 1 IP and Default Gateway

bash

Copy code

`interface vlan 1 ip address 192.168.0.2 255.255.255.192 no shutdown exit ip default-gateway 192.168.0.1 end`

---

### 3. **Configuring LAN-B Switch**

#### Enter Configuration Mode

bash

Copy code

`enable configure terminal`

#### Configure VLAN 1 IP and Default Gateway

bash

Copy code

`interface vlan 1 ip address 192.168.0.66 255.255.255.192 no shutdown exit ip default-gateway 192.168.0.65 end`

---

### 4. **Configuring PCs**

#### PC-A

1. Open **PC-A** and go to **Desktop > IP Configuration**.
2. Set the following:
    - **IP Address**: `192.168.0.62`
    - **Subnet Mask**: `255.255.255.192`
    - **Default Gateway**: `192.168.0.1`

#### PC-B

1. Open **PC-B** and go to **Desktop > IP Configuration**.
2. Set the following:
    - **IP Address**: `192.168.0.126`
    - **Subnet Mask**: `255.255.255.192`
    - **Default Gateway**: `192.168.0.65`

---

### 5. **Testing the Network with Ping**

After configuring all devices, test connectivity using the **ping** command.

#### From PC-A (in Desktop > Command Prompt)

bash

Copy code

`ping 192.168.0.1        # Test connectivity to default gateway ping 192.168.0.126      # Test connectivity to PC-B`

#### From PC-B (in Desktop > Command Prompt)

bash

Copy code

`ping 192.168.0.65       # Test connectivity to default gateway ping 192.168.0.62       # Test connectivity to PC-A`

If all pings are successful, the network configuration is complete and verified! If any pings fail, double-check the IP addresses, subnet masks, and default gateways on each device.