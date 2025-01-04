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
- push, pop: stack

## registers

- bits: rax (64), eax (32), ax (16), ah(1/2) al(2/2) (8 bit)
- rax: principal
- rdi: first argument of function
- rsi: second argument of function
- args: rdi, rsi, rdx, rcx, r8, r9
- rcx: rc is counter by convention
- blx: zzZ

## flags
- Zero Flag (ZF)
- Sign Flag (SF)
- Carry Flag (CF)
- Overflow Flag (OF)

## callee-saved registers
- r12, r13, r14, r15, rbx, rsp, rbp
    - https://stackoverflow.com/questions/18024672/what-registers-are-preserved-through-a-linux-x86-64-function-call 

## syscalls

- https://x64.syscall.sh/

## questions

- malloc change rsi? (error by inconsistent rsi after use malloc)
    - working with valgrind