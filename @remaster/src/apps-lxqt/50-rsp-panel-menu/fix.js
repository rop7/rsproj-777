#!/usr/local/bin/rsp.nodeJS

const RSp = require('rsp-libjscript')
const path = require('path')
const rootd = __dirname;

console.log('Running fix.sh')

const rsp = new RSp();


rsp.exec(`
	rm ${rootd}/proj/CMakeLists.txt
	cp ${rootd}/asset/CMakeLists.txt ${rootd}/proj
`)

process.exit(0);
