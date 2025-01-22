## Interfaces
diffrent interfaces support different netowrk technology, purposes, ports
Virtula interface lets you remotely manage switch over network using IPv4/6


# CyberOps: Understanding Defense
* Assets - anything of value to organization, including servers, devices, or data
* Vulnerabilities - weaknesses in system or deisgn that threat actors can expoloit
* Threats - potential danger to asset
## Assets
Collection of devices or informtaion owned/managed by organization is assets
## Vulnerabliities
What are possiblle vulnerablities? Who may want ot exploit those vulnerablities? what are the consequences of exploited?
## Threats

## Defense-in-depth
* Edge Router - first line of defense. Set of rules specifying what traffiic is allowed or denied. passes all connections that are intended for internal LAN to firewall
* Firewall - seconnd like of defnese, check point device performs filterning and track state of connections Denies initiation of connections from untrusted netowrks.
* internal routere - Another line of defense. Apply final filterneing rules on traffic
Other devices include initrusion prevention protection, advanced malware protection, web and email content securitty systems, identity services, netowrk access control
## Security Onion
Threat actor would have to peel away at networks defense layer by layer in mannor similar to onion peeling.
Outer to inner
* Firewall
* intrustion prevention systems
* content filtering
* authentication, authorization, acccounting
* hardened devices
## Security Artichoke
Actors only need to remove certain "artichoke eleaves" the bonus is each leaf of netowrk may reveal sensitive data that is not well secuure. Easier forr actor to compromise inetener computer or server protected by layers of deefense. Each mobile dvvice is leaf, afater leaf it leads hackers to more data. heart of artichoke is where most confidential data is found.
outer to inner
* buffer overflows
* web applications
* databases
* client-side attacks
* passwords
## Business Policies
* Comopany policies - establish rules of conduct and responsibilities of both employees and employers. Polices protect rights of workers and business internet of 
* employee policies - created and maintained by human resources staff to identify employee salary, pay schedule, employee benefits, work schedule, vacations. Provided to new employes to review and sign
* security policy - set of security objectives for company, defines rules of behaviro for usersr and admins. Colleectively ensure security of netowkr and computer system. constnaly evolving
## Security policy
* identification and authentication poicy - specifies authorized persons taht can have access ot network and resources and identtify verification proceedsures
* passowrd polices - ensure passwords meet requirements
* acceptable use poicy - aidentifes netowrk applications and usesthat are  acceptable .
* Remote access policy - how remote users can access a network and via what remote connectivity
* netowrk maintence policy - specifiy network devicee OS and end user application update procedures
* Icident handling - how security incidents are handled
## BYOD Policies
Bring your own device. Increased productivity, reduved IT and operatinig cost, more mobility, greater appeal.
Needs to
* identify what employees can bring device
* what devices
* level of access employees granted when on personal
* rights to access and activityes permitted
* regulations adhere to employee devies
* safeguards incase device compromised
Best Practice
* password portected access
* manual control wireless connectibity - turn off wifi and bluetoot connection not in use
* keep updaated
* back up data
* enable find my device
* provide antivirus
* use mobile device mangagement software
## Evident and data
An example of most volatile to least volatile evidence collection order is as follows:

1. Memory registers, caches
2. Routing table, ARP cache, process table, kernel statistics, RAM
3. Temporary file systems
4. Non-volatile media, fixed and removable
5. Remote logging and monitoring data
6. Physical interconnections and topologies
7. Archival media, tape or other backups
## The Cyber Kill Chain
1. Reconnaissance - research target information
2. weapoonization - pairing remote malware iwth backdoor to create payload
3. delivery - deliver weapon to victim throrugh email or other means 
4. exploitation - execture code on vulnerable system by trigggering the code
5. installation - install backdoor on taget to install malware
6. command and control - outside server command channel is created to manipulate target
7. actions on objectives - attacks use "hands on keyboard" access to achieve objective
## The Diamond Model of Initrusion Analysis
Represents securit incident or event. Event is time-bound and restricted to stecipif step in which adversary uses capability over infrasture to attack a victim
four core features are
* Adversary - the parties responsible for intrusion
* capablitity - tool or technique that adversary uses to attack victim
* infrastructure - netowrk path or papths that adversaries use to establish or maintain command and control over cpaabilties
* victim - target of attack. 
Meta features
* timestamp - start and stop time of event
* phase - analoggous to steps in kill chain. two or more steps exectured in succession to achieve result
* result - adveraries gain something from event.
* direction - direction of events across model. adversary ot infrastucture.
* methodology - general type of event suscha s port scan , phishing, delivery attack
* rsources - one or more external resources used for intrusion. softare, knowledge