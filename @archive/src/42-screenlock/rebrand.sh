#!/bin/bash

HERE_WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$HERE_WRAPPER"`"

cd $HERE/proj

/usr/local/bin/rsp.projectRebrandir swaylock screenlock
/usr/local/bin/rsp.projectRebrandir Swaylock Screenlock
/usr/local/bin/rsp.projectRebrandir SWAYLOCK SCREENLOCK

/usr/local/bin/rsp.projectRebrandir sway compify
/usr/local/bin/rsp.projectRebrandir Sway Compify
/usr/local/bin/rsp.projectRebrandir SWAY COMPIFY

/usr/local/bin/rsp.projectRebrandir lxqt rsp
/usr/local/bin/rsp.projectRebrandir Lxqt Rsp
/usr/local/bin/rsp.projectRebrandir LXQt RSp
/usr/local/bin/rsp.projectRebrandir LXQT RSP

exit 0;
