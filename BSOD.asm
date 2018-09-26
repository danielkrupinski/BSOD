format PE GUI 6.0
entry main

include 'INCLUDE/win32ax.inc'

section '.text' code executable

main:


section '.idata' data readable import

library kernel32, 'kernel32.dll', \
        ntdll, 'ntdll.dll'
