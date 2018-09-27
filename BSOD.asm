format PE GUI 6.0
entry main

include 'INCLUDE/win32ax.inc'

section '.text' code executable

main:
lea eax, [esp + 20]

section '.idata' data readable import

library kernel32, 'kernel32.dll', \
        ntdll, 'ntdll.dll'

import kernel32, \
       ExitProcess, 'ExitProcess'

import ntdll, \
       RtlAdjustPrivilege, 'RtlAdjustPrivilege'
