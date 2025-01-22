World wide cyberattack in May 2017. The [ransomware](Ransomware.md) [cryptoworm](Cryptoworm.md) targeted [[Windows]] by encrypting files and data on the victims machine and ransoming payments through [[Bitcoin]]. 

## How Did it Work
The ransomware used a exploit called [EternalBlue] which is a [[SMB]] [[exploit]] and is similar to [[DoublePulsar]]. It spread by searching the network for other vulnerable systems to copy its code to and execute over and over.

The data on the computers was encrypted and infected users only hope for access to the files again was to pay a ransom in [[Bitcoin]]. Users who paid the ransom sadly found that the hackers did not give back the data.

After researcher Marcus Hutchins looked into the code, they found the program searched for a unregistered [domain](Domain) name. It was a [kill switch](Kill Switch) hardcoded into the program. When the [domain](Domain) was registered, the program was no longer able to continue to infect new computers. Any computer already inflected were still under ransom but this severely slowed the spread.