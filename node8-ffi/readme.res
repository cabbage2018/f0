
PS H:\ffi8> npm install
Active code page: 65001

> ref@1.3.5 install H:\ffi8\node_modules\ref
> node-gyp rebuild


H:\ffi8\node_modules\ref>if not defined npm_config_node_gyp (node "C:\Program Files (x86)\nodejs\node_modules\npm\node_modules\npm-lifecycle\node-gyp-bin\\..\..\node_modules\node-gyp\bin\node-gyp.js" rebuild )  else (node "C:\Program Files (x86)\nodejs\node_modules\npm\node_modules\node-gyp\bin\node-gyp.js" rebuild )
Building the projects in this solution one at a time. To enable parallel build, please add the "/m" switch.
  binding.cc
  win_delay_load_hook.cc
..\src\binding.cc(643): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ref\build\binding.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\binding.cc(644): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ref\build\binding.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???



  binding.vcxproj -> H:\ffi8\node_modules\ref\build\Release\\binding.node
  binding.vcxproj -> H:\ffi8\node_modules\ref\build\Release\binding.pdb (Full PDB)

> ffi@2.3.0 install H:\ffi8\node_modules\ffi
> node-gyp rebuild


H:\ffi8\node_modules\ffi>if not defined npm_config_node_gyp (node "C:\Program Files (x86)\nodejs\node_modules\npm\node_modules\npm-lifecycle\node-gyp-bin\\..\..\node_modules\node-gyp\bin\node-gyp.js" rebuild )  else (node "C:\Program Files (x86)\nodejs\node_modules\npm\node_modules\node-gyp\bin\node-gyp.js" rebuild )
Building the projects in this solution one at a time. To enable parallel build, please add the "/m" switch.
  Building assembly file ..\..\..\deps\libffi\src\x86\win32.asm
   Assembling: ..\..\..\deps\libffi\src\x86\win32.asm
  prep_cif.c
  types.c
  raw_api.c
  java_raw_api.c
  closures.c
  ffi.c
  win_delay_load_hook.cc
  ffi.vcxproj -> H:\ffi8\node_modules\ffi\build\Release\\libffi.lib
  ffi.cc
  callback_info.cc
  threaded_callback_invokation.cc
  win32-dlfcn.cc
  win_delay_load_hook.cc
..\src\ffi.cc(58): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(59): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(60): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(63): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\callback_info.cc(63): warning C4996: 'Nan::Callback::Call': ???????..\src\ffi.cc(64): warning C4996: 'Nan::ForceSet': ????
??? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]

  H:\ffi8\node_modules\nan\nan.h(1748): note: ??"Nan::Callback::Call"???
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\callback_info.cc(73): warning C4996: 'Nan::Callback::Call': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
..\src\ffi.cc(65): warning C4996: 'Nan::ForceSet': ???????H:\ffi8\node_modules\nan\nan.h(1748): note: ??"Nan::Callback::Call"??? 
[H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]

  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\callback_info.cc(78): warning C4996: 'Nan::Callback::Call': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
..\src\ffi.cc(72): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  H:\ffi8\node_modules\nan\nan.h(1748): note: ??"Nan::Callback::Call"???
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(73): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(74): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(75): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(76): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(88): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(91): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(94): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(97): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(111): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(114): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(123): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(124): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(125): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(126): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(132): warning C4996: 'Nan::ForceSet': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  h:\ffi8\node_modules\nan\nan_maybe_43_inl.h(117): note: ??"Nan::ForceSet"???
..\src\ffi.cc(367): warning C4996: 'Nan::Callback::Call': ??????? [H:\ffi8\node_modules\ffi\build\ffi_bindings.vcxproj]
  H:\ffi8\node_modules\nan\nan.h(1748): note: ??"Nan::Callback::Call"???



  ffi_bindings.vcxproj -> H:\ffi8\node_modules\ffi\build\Release\\ffi_bindings.node
  ffi_bindings.vcxproj -> H:\ffi8\node_modules\ffi\build\Release\ffi_bindings.pdb (Full PDB)

> es5-ext@0.10.64 postinstall H:\ffi8\node_modules\es5-ext
>  node -e "try{require('./_postinstall')}catch(e){}" || exit 0

npm notice created a lockfile as package-lock.json. You should commit this file.
npm WARN ffi_call@1.2.3 No repository field.

added 58 packages in 18.736s
PS H:\ffi8> node .\program.js
__dirname: H:\ffi8
Result from dll: 16
PS H:\ffi8>