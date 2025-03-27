#!/usr/local/bin/rsp.nodeJS

const RSp = require('rsp-libjscript');
const path = require('path')
const assetdir = path.join(__dirname, 'asset')
const srcdir = path.join(__dirname, 'src')

console.log('Running fix.sh')

const rsp = new RSp();

rsp.prin('Installing Window Compositor RSp config center shortcut')

rsp.exec(`

    sudo rm -rf /usr/local/share/applications/compositor*
    sudo cp -rf ${assetdir}/* /usr/local/share/applications
    sudo cat  /usr/local/share/applications/compositor*
    pkill rsp-config
    rsp-config 
`)

process.exit(0);