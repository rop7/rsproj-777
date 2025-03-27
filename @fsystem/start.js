#!/usr/local/bin/rsp.nodeJS

const RSp = require('rsp-libjscript');

const rsp = new RSp();

const roodir = __dirname,
      packagejson = require('./package.json');
      
console.log("Executing: @fsystem/start.js")

for (const key in packagejson.scripts) {
    rsp.exec(`cd ${roodir} && npm run ${key}`)
}