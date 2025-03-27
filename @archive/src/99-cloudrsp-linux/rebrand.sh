#!/bin/bash

HERE_WRAPPER="`readlink -f "$0"`"
HERE="`dirname "$HERE_WRAPPER"`"

cd $HERE/proj

/usr/local/bin/rsp.projectRebrandir lxqt rsp
/usr/local/bin/rsp.projectRebrandir Lxqt Rsp
/usr/local/bin/rsp.projectRebrandir LXQt RSp
/usr/local/bin/rsp.projectRebrandir LXQT RSP

/usr/local/bin/rsp.projectRebrandir nextcloud rspcloud
/usr/local/bin/rsp.projectRebrandir Nextcloud Rspcloud
/usr/local/bin/rsp.projectRebrandir NextCloud RspCloud
/usr/local/bin/rsp.projectRebrandir nextCloud rspCloud
/usr/local/bin/rsp.projectRebrandir NEXTCLOUD RSPCLOUD

exit 0;
