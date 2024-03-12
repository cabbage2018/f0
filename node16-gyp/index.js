'use strict'
// index.js
const addon = require('./build/Release/greet.node')
console.log(addon.greetHello("蔡天后"))
module.exports = addon.greetHello