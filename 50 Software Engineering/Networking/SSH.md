SSH = Secure Shell

# Process

1. Data gets broken down into packets
    1. Packet Length
    2. Padding Amount
    3. Payload
    4. Padding (Random bits to obscure payload)
    5. Message Authentication Code
    6. Compression (zlib)
2. The whole packet (Except packet length) is encrypted
3. Packet decrypted by the server

# Further Reading

- Web Sockets
- [A Visual Guide to SSH Tunnels: Local and Remote Port Forwarding](https://iximiuz.com/en/posts/ssh-tunnels/)
