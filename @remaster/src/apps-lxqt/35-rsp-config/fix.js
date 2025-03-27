#!/usr/local/bin/rsp.nodeJS

const RSp = require('rsp-libjscript')
const path = require('path')
const rootd = __dirname;

console.log('Running fix.sh')

const rsp = new RSp();

// rsp.util.replacef(path.join(__dirname, `proj`, `CMakeLists.txt`), `set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`, `#set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`)
// rsp.util.replacef(path.join(__dirname, `proj`, `rsp-config-appearance`, `CMakeLists.txt`), `set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`, `#set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`)
// rsp.util.replacef(path.join(__dirname, `proj`, `rsp-config-brightness`, `CMakeLists.txt`), `set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`, `#set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`)
// rsp.util.replacef(path.join(__dirname, `proj`, `rsp-config-file-associations`, `CMakeLists.txt`), `set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`, `#set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`)
// rsp.util.replacef(path.join(__dirname, `proj`, `rsp-config-input`, `CMakeLists.txt`), `set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`, `#set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`)
// rsp.util.replacef(path.join(__dirname, `proj`, `rsp-config-locale`, `CMakeLists.txt`), `set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`, `#set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`)
// rsp.util.replacef(path.join(__dirname, `proj`, `rsp-config-monitor`, `CMakeLists.txt`), "KF6::Screen", "#KF6::Screen")
// rsp.util.replacef(path.join(__dirname, `proj`, `rsp-config-monitor`, `CMakeLists.txt`), "find_package(KF6Screen", "#find_package(KF6Screen")
// rsp.util.replacef(path.join(__dirname, `proj`, `librsp-config-cursor`, `CMakeLists.txt`), `set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`, `#set(KF6SCREEN_MINIMUM_VERSION "6.0.0")`)

rsp.exec(`
    
    rm -rf ${rootd}/proj/rsp-config-brightness/icons/brightnesssettings.png
    cp -rf ${rootd}/asset/brightnesssettings.png ${rootd}/proj/rsp-config-brightness/icons
    
`)

process.exit(0);