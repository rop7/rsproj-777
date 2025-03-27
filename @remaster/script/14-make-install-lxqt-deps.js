#!/usr/local/bin/rsp.nodeJS

const RSp = require('rsp-libjscript');
const path = require('path');
const fs = require('fs')

const rsp = new RSp()

const rootDir = path.resolve(__dirname, '..');
const depsLxqtDirPath = path.resolve(rootDir, 'src', 'deps-lxqt');
const depsLxqtDir = fs.readdirSync(depsLxqtDirPath)

depsLxqtDir.forEach((dir) => {

    const lxqtDepDir = path.resolve(depsLxqtDirPath, dir);

    console.log('lxqtDepDir', lxqtDepDir)

    if (fs.existsSync(lxqtDepDir + '/proj')) {
        rsp.exec(`cd ${lxqtDepDir} && make fix; make make;`)
    } else {
        rsp.exec(`cd ${lxqtDepDir} && make fetch && make`)
    }

});