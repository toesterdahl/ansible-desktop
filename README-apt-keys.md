# New preferred arrangement of apt repository keys

As of Ubuntu 24.04

From Askubuntu;

https://askubuntu.com/a/1307181/12927
 
 - Storing keys as individual files under /etc/apt/keyrings
 - Adding a reference from individual apt source to individual key files
 - Optionally switch to new apt source format with individual lines

# Example spotify

/etc/apt 08:45:04
torbjorn@sandra > file trusted.gpg.d/spotify.gpg
trusted.gpg.d/spotify.gpg: OpenPGP Public Key Version 4, Created Mon Nov 14 09:55:15 2022, RSA (Encrypt or Sign, 4096 bits); User ID; Signature; OpenPGP Certificate

/etc/apt 08:49:17
torbjorn@sandra > sudo mv trusted.gpg.d/spotify.gpg keyrings/

/etc/apt 08:58:23
torbjorn@sandra > cat sources.list.d/spotify-stable.sources 
Types: deb
URIs: http://repository.spotify.com
Suites: stable
Components: non-free
Signed-By: /etc/apt/keyrings/spotify.gpg

