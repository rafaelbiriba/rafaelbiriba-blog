---
layout: post
title: openwrt knoking
---




$ fwknop -A tcp/22 -D rafael.noip.org --key-gen --use-hmac --save-rc-stanza



$ ssh root@rafael.noip.org
ssh: connect to host rafael.noip.org port 22: Connection refused
✔ ~
$
✔ ~
$
✔ ~
$ cat ~/.fwknoprc
[default]

[rafael.noip.org]
ACCESS                      tcp/22
SPA_SERVER                  rafael.noip.org
KEY_BASE64                  d2VyZyB3ZXJnd2VyZyB3ZXJnd2UgcnRn
HMAC_KEY_BASE64             d2ZhZ2Z3ZXJnd2VyZ3dlcmd3ZXJnIHdlcmd3ZXJnIHdlcmd3ZSBydGc=
USE_HMAC                    Y
✔ ~
$
✔ ~
$
✔ ~
$ fwknop -n rafael.noip.org -a 46.189.27.100
✔ ~
$
✔ ~
$
✔ ~
$ ssh root@rafael.noip.org




BusyBox v1.30.1 () built-in shell (ash)

  _______                     ________        __
 |       |.-----.-----.-----.|  |  |  |.----.|  |_
 |   -   ||  _  |  -__|     ||  |  |  ||   _||   _|
 |_______||   __|_____|__|__||________||__|  |____|
          |__| W I R E L E S S   F R E E D O M
 -----------------------------------------------------
 OpenWrt 19.07.1, r10911-c155900f66
 -----------------------------------------------------
root@OpenWrt:~#
root@OpenWrt:~# :)
root@OpenWrt:~#
root@OpenWrt:~#
root@OpenWrt:~# exit
Connection to rafael.noip.org closed.
✔ ~
$ ssh root@rafael.noip.org -p 22
ssh: connect to host rafael.noip.org port 22: Connection refused
