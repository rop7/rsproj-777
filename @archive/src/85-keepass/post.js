#!/usr/local/bin/rsp.nodeJS

const path = require('path');
const RSp = require('rsp-libjscript')

const assetdir = path.join(__dirname, 'asset'),
     projdir = path.join(__dirname, 'proj');

const rsp = new RSp()

rsp.exec(`
    
    sudo rm -rf /usr/local/share/applications/org.keepassrsp.KeePassRSP.desktop
    sudo cp -rf ${assetdir}/file.desktop /usr/local/share/applications/org.keepassrsp.KeePassRSP.desktop
    
`)