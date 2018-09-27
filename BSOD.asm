format PE GUI 6.0
entry main

include 'INCLUDE/win32ax.inc'

section '.text' code executable

main:
lea eax, [esp + 20]
invoke RtlAdjustPrivilege, 19, TRUE, FALSE, eax
lea eax, [esp + 20]
invoke NtRaiseHardError, 0xDEADBEEF, 0, 0, 0, 6, eax
invoke ExitProcess, 0

section '.idata' data readable import

library kernel32, 'kernel32.dll', \
        ntdll, 'ntdll.dll'

import kernel32, \
       ExitProcess, 'ExitProcess'

import ntdll, \
       RtlAdjustPrivilege, 'RtlAdjustPrivilege', \
       NtRaiseHardError, 'NtRaiseHardError'
