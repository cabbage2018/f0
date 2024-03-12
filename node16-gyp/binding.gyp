
{
  "targets": [
    {
      "target_name": "greet",               
      "cflags!": [ "-fno-exceptions" ],     
      "cflags_cc!": [ "-fno-exceptions" ],
       "dependencies": [
      ],
      "sources": [                         
        "./src/greeting.cpp",
        "./src/index.cpp"
      ],
      "include_dirs": [                    
        "<!@(node -p \"require('node-addon-api').include\")",
          "./src"
      ],
      'defines': [ 
        'NAPI_DISABLE_CPP_EXCEPTIONS'      
      ],
      
      "conditions": [
            ["OS=='linux' or OS=='freebsd'", {
                "cflags_cc": ["-fPIC", "-pedantic", "-fexceptions"],
                "cflags_cc!": ["-fno-exceptions"]
            }],
            ["OS=='win'", {
                "msvs_settings": {
                    "VCCLCompilerTool": {
                        "ExceptionHandling": 1,
                        "AdditionalOptions": ["/EHsc"] 
                    }
                },
                "defines!": ["_HAS_EXCEPTIONS=0"],
                "defines": ["_WINSOCK_DEPRECATED_NO_WARNINGS"]
            }],
            ["OS=='mac'", {
                "xcode_settings": {
                    "GCC_ENABLE_CPP_EXCEPTIONS": "YES",
                    "GCC_DYNAMIC_NO_PIC": "NO",
                    "OTHER_CFLAGS": ["-pedantic"]
                }
            }]
        ]
    }
  ]
}