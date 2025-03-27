#!/bin/bash

HERE_WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$HERE_WRAPPER"`"

cd $HERE/proj

/usr/local/bin/rsp.projectRebrandir lxqt rsp
/usr/local/bin/rsp.projectRebrandir Lxqt Rsp
/usr/local/bin/rsp.projectRebrandir LXQt RSp
/usr/local/bin/rsp.projectRebrandir LXQT RSP

/usr/local/bin/rsp.projectRebrandir keepassxc keepassrsp
/usr/local/bin/rsp.projectRebrandir Keepassxc Keepassrsp
/usr/local/bin/rsp.projectRebrandir KEEPASSXC KEEPASSRSP
/usr/local/bin/rsp.projectRebrandir KeePassXC KeePassRSP

exit 0;
