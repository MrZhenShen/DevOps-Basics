# Port forwarding task
* `ssh -A -p 3722 root@yoko.ukrtux.com` - enter to the vm via port
* `ssh -A -D8899 -p 3722 root@yoko.ukrtux.com` - local port forwarding
* `ssh -R 13722:localhost:8080 -p 3722 root@yoko.ukrtux.com` - remote port forwarding
* `bmon` - package trafic

### Links
* [Open remote host in brower](50.31.252.226:13722)
* [Get IP](https://www.getip.org/)