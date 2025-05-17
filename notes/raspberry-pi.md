## SETUP

### SSH

- I've enabled ssh using `~/.ssh/id_rsa.pub`
    - which ssh key is presented when sshing is defined in `~/.ssh/config`
- To find the pi on my local network, I rely on mDNS
```
> ping raspberry.local
PING raspberrypi.local (192.168.0.200): 56 data bytes
> ssh 192.168.0.200
```

### GIT

