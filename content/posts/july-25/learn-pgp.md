---
title: "Learn PGP"
date: 2025-07-24T00:21:33+06:00
draft: false
tags: ["Linux", "privacy"]
---

Learning PGP is complicated at first attempt. PGP might be a terrifying thing for non-geeks. PGP, or Pretty Good Privacy, just looking at name we can say that it is something about maintaining privacy. PGP is mainly used for encrypting information and making communication secure and also make it authentic.

Consider a situation where you have to make sure that the information only reaches to a certain person. So you have to encrypt it with some algorithm. Here PGP might be helpful.

GnuPG is a tool basing on PGP which will help you to encrypt, decrypt, sign and verify files. Encryption just means that you are converting the file or information into a secret code aka ciphertext. It is way more complex in theory but we should not be bothering much yet. Now encryption can be two types: Symmetric and Asymmetric. 

Symmetric encryption means the tool will give one key. With that key you can lock(encrypt) the file or unlock(decrypt). Here lock and unlock isn't the best word but for the sake of simplicity lets just think in that way.

For Asymmetric encryption you will have two keys. A Private key and a Public key. Here people actually struggle to understand at first. So Private key literally says that it has to be private. Public key has to be shared with the whole world. If you want someone to share a hidden information with you then give him the public key. That someone will encrypt the file with your give public key. Thus he makes a file that only you can access in this world. Once a file is encrypted with a public key then it cannot be viewed, used by anyone other than the person having the private key for the corresponding public key. That means your someone has encrypted the file with your public key, now you are the only one who can access the file. So let him send the file somehow. Doesn't matter how. It can be an email, maybe on usb drive, torrent or whatever. When you get the file you use your private key to unlock the file and view its contents. Thus you and your someone can communicate without facing interference. Hope you have understood that concept of public key and private key. Public key is used to lock a file and private key is used to unlock that locked file. Yeah, once again I used lock and unlock, hahaha.

Now you grab your friends public key and encrypt your text with that and give the file to him. He can use his private key to see its contents. Easy to understand I guess.

Lets make it actualize!

Install [GnuPG](https://www.gnupg.org/) on linux, For windows install [GPG4win](https://www.gpg4win.org/). On Android you can use [OpenKeychain](https://f-droid.org/packages/org.sufficientlysecure.keychain/) app or use [Termux](https://f-droid.org/en/packages/com.termux/) and follow the linux based approach.

#### Don't forget to see the help section
```bash
 $ gpg --help
```

#### Generate a key

```bash
 $ gpg --full-gen-key
```

You can go with the default key type. Keep hitting enter till you reach where it asks the time-span of the key. The expiry that is up to you. Then add your name, email and a comment of your liking. Thus you make a key of your choice. Also you can add a password if you want. If you add a password then it will ask for a password before decrypting a file.

#### To list all the public keys on your system
```bash
 $ gpg --list-keys
```

#### To list all the private key of yours
```bash
 $ gpg --list-secret-keys
```

#### Exporting keys
If you want to export you public key and share it to friends so that they can use it to encrypt data and send you then follow this.
```bash
 $ gpg --armor --export 'your-key-id-here' > public.asc
```

For exporting private key.
```bash
 $ gpg --export-secret-keys --armor 'your-key-id-here' > private-key.asc
```

You can even yous the nickname or email assigned to they key instead of the ID. ID can be found listing keys. Consider you want to take your key to a new system then you can export they private key this way.

`--armor` means representing the key in a human readable code. Maybe you should check how it looks without providing the argument?

#### Importing a key
```bash
 $ gpg --import private-key.asc
```

Thus you can import your private or anyone elses public key in your system.

### Encryption

#### Symmetric encryption
Now you know that you can only encrypt a file with someone elses public key. But what if that person doesn't have any public key? What if you have to encrypt a file but you want a group of people it access it? Symmetric encryption just means locking a file with a password in easy words.

```bash
 $ gpg --symmetric data.txt
```
It will ask for a password and giving it will encrypt it the file with your password.

If you don't want to see gibberish then add `--armor` to it

If you want to encrypt with a certain algorithm then add 
```bash
 $ gpg --symmetric --cipher-algo 'your-desired-algorithm-name' data.txt
```
Algorithm names can be find using the command `gpg --version`

#### Asymmetric encryption
That is the best part of PGP! Don't forget to import the recipient's public key before doing this.
```bash
 $ gpg --recipient 'recipient-key-id-name-or-email' --encrypt data.txt 
```

### Decryption

```bash
 $ gpg --decrypt encrypted-file.gpg
```
If it was symmetric encryption then it will ask for a password. If it was asymmetric then it might not ask for a password unless your private key had a password.

### Let us talk about signatures

Consider your site has been hacked and some intruders spread false information on your site. This will highly impact your followers and yourself. But how to ensure the trust and authenticity of an information in such situation? You can do it by signing your info with your private key. When you sign a data with your key then one can verify the authenticity of that info using your public key.

```bash
 $ gpg --clearsign data.txt
``` 
This will create a new file where you can see the actual content of the file and a pgp signature at the bottom. Once you publish the data on the internet then people can copy the whole text and validate its authenticity using your public key.

```bash
 $ gpg --output data.txt.sig --detach-sign data.txt
```
This will create two files. One will contain the data(data.txt) and another will contain the signature(data.txt.sig). So in order to verify you must have both of the files. Without the content you can't verify alone with the signature.

What if you want to encrypt a message and also sign it?
##### For symmetric
```bash
 $ gpg --sign --symmetric data.txt
```
##### For asymmetric
```bash
 $ gpg --sign --encrypt --recipient 'recipient-key-id-name-or-email' data.txt
```

### Time to verify the signatures
As I said you must have the content and signature to verify the content with the signature. That's how it should work right? By default, if file is signed and signature is included in the file then while decrypting the file gpg does verify it automatically.
```bash
 $ gpg --decrypt data.txt.asc
```
But if you like to do things manually then here you go.
```bash
 # If signature is included in the file
 $ gpg --verify data.txt.asc
 # Verify and extract the content to another file
 $ gpg --output data.txt data.txt.asc
 # If signature is in different file
 $ gpg --verify data.txt.sig data.txt
```

So that was it! It wasn't really all the knowledge about PGP. I didn't include pgp connectivity with servers, various algorithms, practical usage etc. But you can do basic tasks using this provided knowledge. Using PGP is necessary in this modern era where our data relies on many third-party. To keep its integrity and our privacy we must use encryptions.

The practice of using PGP is a must. Try learning it if you feel like being a bit safer. You can learn PGP and grasp its usage by sharing encrypted messages. Leaving my public key here, you can sent me messages encrypting with my public key and send it through my social media profiles or email.

Here is my public key!!
{{< rawhtml >}}
<pre style="font-size: 1rem; align-self: center; background-color: #422c2c;padding: 1rem; max-width: 90%; white-space: pre-wrap; word-wrap: break-word;">
-----BEGIN PGP PUBLIC KEY BLOCK-----

mDMEaIEgxxYJKwYBBAHaRw8BAQdA5cL0EOyUG1ES8liSraN/YtoHGhEsmh7gBt2G
HWqMmU60LDhhbWl1bCAoOGFtaXVsLmdpdGh1Yi5pbykgPDhhbWl1bEBnbWFpbC5j
b20+iJMEExYKADsWIQQEzraxy/u0gcwAM4uuqZmDAkQBiQUCaIEgxwIbAwULCQgH
AgIiAgYVCgkICwIEFgIDAQIeBwIXgAAKCRCuqZmDAkQBiQ/2AP0RjH+fMttZU4gd
Tm2xcLC3ZC/IeZysZvJx/D9aVBytCgEAwW/BZFrjqBbJpewj7+ZKEGM/ld63oUOX
bQ5qD0OK5gO4OARogSDHEgorBgEEAZdVAQUBAQdApLwhS3M9qOqtTqzkO2JvanLk
5U8vltB2pyqC5u2FlwADAQgHiHgEGBYKACAWIQQEzraxy/u0gcwAM4uuqZmDAkQB
iQUCaIEgxwIbDAAKCRCuqZmDAkQBiTCJAP4o6qbuoFxnkeRvpHjhO6+yrSAqgydh
GMhnUdYD81pi8gD/Q4W13ngqGfMkgZ7USbsfazX2aAwsB/1On88ayfSj3gI=
=1QOO
-----END PGP PUBLIC KEY BLOCK-----
</pre>
{{< /rawhtml >}}