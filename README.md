# libasm

## instructions

- xor: bitwise XOR (Exclusive OR)
- cmp: compare two values by subtraction (flags: ZF, SF, CF, OF)
- je: jump if equal (ZF)
- inc: increment
- jmp: jump of execution ~ goto
- ret: return rax
- mov: data transfer instruction (destination, source)
- lea: load effective address (destination, source) (not access memory)
- test: bitwise AND (flags: ZF, SF)
- sub: equal of cmp, save result in first arg
- movx: move with sign extension (preserve sign)

## registers

- bits: rax (64), eax (32), ax (16), ah(1/2) al(2/2) (8 bit)
- rax: principal
- rdi: first argument of function
- rsi: second argument of function
- rcx: rc is counter by convention
- blx: zzZ

## flags
- Zero Flag (ZF)
- Sign Flag (SF)
- Carry Flag (CF)
- Overflow Flag (OF)
