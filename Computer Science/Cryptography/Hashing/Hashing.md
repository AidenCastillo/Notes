Hashing is the process of using a algorithm to convert or map a object into some new numerical value. Hashed values are hard to decode. Given the same input values, the algorithm will always produce the same hash.

# Data Integrity
Hashing is useful when performing data integrity. If data was changed or corrupted during the process of transmission or download, hashing would allow the user to realize this before executing code or using data. 
Algorithms such as [[MD5]] are commonly used to perform these actions. 
On windows run ``certutil -hashfile <filename> MD5`` to perform a MD5 hashing function
# Hash Tables
[[Hash Tables]] allow for quick retrieval and look ups of values in a table. A hash table links a key to a value or indices.
Hashing uses hash tables which have three functions
* insert(key, value)
* get(key)
* delete(key)
# Cryptography
Hash functions are often used in cryptography or encryption such as [[Public Key Encryption]] or message authentication codes.