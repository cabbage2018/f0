'use strict'

var ref = require("ref-napi");
var ffi = require("ffi-napi");

//第一个形参为dll所在位置（dll文件可以不用加.dll），第二个为函数信息
console.log("__dirname:", __dirname)
var libm = ffi.Library(__dirname + '/bin/Win32Dll1.dll', {
    //函数名
    'fun': ['int', ['string', 'string']]
});

//调用
var str1 = "acc";
var str2 = "bionology,,,,bone";
console.log("Result from dll:", libm.fun(str1, str2));