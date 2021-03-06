; # ADC

    ; Add with carry.

    ; edx:eax += ebx:ecx

%include "lib/asm_io.inc"

ENTRY
    mov eax, 0x80000000
    mov ecx, 0x80000000
    mov ebx, 0
    mov edx, 0
    add eax, ecx
    adc edx, ebx
    ; edx:eax += ebx:ecx
    ASSERT_EQ 0
    ASSERT_EQ edx, 1
    EXIT
