#!/usr/local/bin/rsp.nodeJS

const path = require('path'),
      RSp = require('rsp-libjscript');


const assetdir = path.join(__dirname, 'asset'),
        projdir = path.join(__dirname, 'proj');

const rsp = new RSp();

rsp.exec(`
    sudo cp -rf /usr/local/bin/rspcloud /usr/local/bin/rspcloud-bin
    sudo cp -rf ${assetdir}/rspcloud.bash /usr/local/bin/rspcloud
`)

rsp.exec(`
    sudo cp -rf /usr/local/bin/rspcloudcmd /usr/local/bin/rspcloudcmd-bin
    sudo cp -rf ${assetdir}/rspcloudcmd.bash /usr/local/bin/rspcloudcmd
`)

rsp.exec(`
    sudo rm -rf /usr/local/share/applications/rspcloud.desktop
    sudo cp -rf ${assetdir}/file.desktop /usr/local/share/applications/rspcloud.desktop
`)