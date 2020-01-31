# SHA-256

SHA-256 is the most popular hash function in the SHA-2 family at the time of writing. It provides 128 bits of security for digital signatures and hash-only applications (SHA-1 provides only 80 bits).

Remember that while MD5 and SHA-1 are both popular hash functions, MD5 is considered completely broken, SHA-1 is considered weak. SHA-2 and its variants are to be crowned the new king. If working on US Government projects, remember that NIST has deprecated SHA-1 in since 2010, and that SHA-2 is considered approved for for new projects.

You can use SHA-256 for password hashing, just make sure to use a random salt. Use a new random salt for each password hash to prevent the attacker from being able to pre-compute a single dictionary for all of you passwords. When apply multiple rounds, select a good work factor. For a work factor of 9, apply 2^9 (512) rounds SHA-256 then store the work factor next to the salt along with the hashed password. If you choose, you can modify your work factor later, and because the work factor is stored with the hash, still verify old password hashes.

Compile and Run (in linux):
```
g++ sha256.cpp main.cpp -o sha256_example && ./sha256_example
```
Output
```
sha256('grape'):0f78fcc486f5315418fbf095e71c0675ee07d318e5ac4d150050cd8e57966496
```
