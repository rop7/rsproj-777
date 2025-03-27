#!/usr/local/bin/rsp.nodeJS

const RSp = require('rsp-libjscript');
const rootd = __dirname;

const rsp = new RSp();

console.log('Running fix.sh')

rsp.exec(`sudo rm -rf /usr/local/share/applications/rsp-config-globalkeyshortcuts.desktop`)

process.exit(0);