#!/usr/local/bin/rsp.nodeJS

const RSp = require('rsp-libjscript');
const path = require('path');
const fs = require('fs')

const rsp = new RSp()

const rootDir = path.resolve(__dirname, '..');
const appsDirPath = path.resolve(rootDir, 'src', 'apps');
const depsDir = fs.readdirSync(appsDirPath).filter((dirItem) => {
    return !dirItem.includes('@lxqt');
})

depsDir.forEach((dir) => {

    const appsDir = path.resolve(appsDirPath, dir);
    
    console.log('appsDir', appsDir)
    
    if (fs.existsSync(appsDir + '/proj')) {
        rsp.exec(`cd ${appsDir} && make fix; make make;`)
    } else {
        rsp.exec(`cd ${appsDir} && make fetch && make`)
    }    
});