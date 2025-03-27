#!/usr/local/bin/rsp.nodeJS

const RSp = require('rsp-libjscript');
const rootd = __dirname;

const rsp = new RSp();

console.log('Running fix.sh')

rsp.exec(`rm -rf ${rootd}/proj/aboutdialog/aboutdialog.cpp`)
rsp.exec(`cp -rf ${rootd}/asset/rspaboutdialog.cpp ${rootd}/proj/aboutdialog`)

rsp.exec(`rm -rf ${rootd}/proj/resources/hicolor/scalable/apps/rsp-about.svg`)
rsp.exec(`cp -rf ${rootd}/asset/rsp-about.png ${rootd}/proj/resources/hicolor/scalable/apps`)

rsp.exec(`sudo rm -rf /usr/local/share/icons/hicolor/48x48/apps/rsp-about.png`)
rsp.exec(`sudo cp -rf ${rootd}/asset/rsp-about.png /usr/local/share/icons/hicolor/48x48/apps`)

process.exit(0);
