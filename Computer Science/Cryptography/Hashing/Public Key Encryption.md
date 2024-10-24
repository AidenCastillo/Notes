To make data secure from people who aren't supposed to access or read sensitive information as it transmits across networks, we use Public Key Encryption. It turns plain text, into a set of seemingly random letters, symbols, or numbers.
Public Key encryption uses a pair of keys, a public key anyone can see used to encrypt, and a private key kept secret and used to decrypt the encryption

This kind of encryption is used commonly in requests from websites with a HTTPS encryption. It encrypts the data so only the end user can read it, while also using this encryption to prove its authenticity of you being on the correct website.

# Weaknesses
* Vulnerable to man in the middle attacks. Third party can mess with the public key communication then modify the public keys.
* If user loses their private key, the algorithm becomes very insecure and becomes the most vulnerable algorithm.
* Can be broken through brute force, but takes lots of computer power

# RSA Algorithm
Because it is incredibly difficult to factorize large numbers, we create our public key by using the multiples of two large prime numbers. The private key is then created based on the public key. If a computer is able to factor the large multiple then it is able to obtain the private key. The strength of a key is determined by the size of the key. Typical RSA keys are 1024 or 2048 bits long.

Select two prime no's. Suppose ****P = 53 and Q = 59.****  
****Now First part of the Public key  : n = P*Q = 3127.****  
 We also need a small exponent say ****e :****   
****But e Must be****   
****An integer.****  
****Not be a factor of Φ(n).****   
****1 < e <**** [****Φ(n) [Φ(n) is discussed below],****](https://www.geeksforgeeks.org/eulers-totient-function/)   
[****Let us now consider it to be equal to 3.****](https://www.gehttps//www.geeksforgeeks.org/eulers-totient-function/eksforgeeks.org/eulers-totient-function/)  
    Our Public Key is made of n and e  

****>> Generating Private Key:**** 

We need to calculate Φ(n) :  
Such that ****Φ(n) = (P-1)(Q-1)****       
      ****so,  Φ(n) = 3016****  
    Now calculate Private Key, ****d :****   
****d = (k*Φ(n) + 1) / e for some integer k****  
****For k = 2, value of d is 2011.****  

Now we are ready with our – Public Key ( n = 3127 and e = 3) and Private Key(d = 2011) Now we will encrypt ****“HI”****:

Convert letters to numbers : H  = 8 and I = 9  
    Thus ****Encrypted Data c = (89********e********)mod n****   
****Thus our Encrypted Data comes out to be 1394****  
Now we will decrypt ****1394**** :   
    ****Decrypted Data = (c********d********)mod n****  
****Thus our Encrypted Data comes out to be 89****  
****8 = H and I = 9 i.e. "HI".****