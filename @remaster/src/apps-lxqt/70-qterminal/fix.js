#!/usr/local/bin/rsp.nodeJS

const RSp = require('rsp-libjscript')

console.log('Running fix.sh')

const rsp = new RSp();

rsp.exec(`
    sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/qterminal 50
`)

process.exit(0);
