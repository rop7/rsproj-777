#!/usr/local/bin/rsp.nodeJS

const RSp = require('rsp-libjscript');
const path = require('path');
const rootd = __dirname;

const rsp = new RSp();

console.log('Running fix.sh')

rsp.exec(`

    cd ${rootd}

    cd asset

    sudo cp -rf file.desktop /usr/share/applications/pulseeffects.rsp.settings.desktop
`)

process.exit(0);
