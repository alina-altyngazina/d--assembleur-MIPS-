.data
pgm:
        .word   604241926
        .word   202375174
        .word   139297
        .word   604110849
        .word   12
        .word   268500991
        .word   604110849
        .word   -1348206592
        .word   599654396
        .word   8519704
        .word   4114
        .word   545587199
        .word   276889594
        .word   599654396
        .word   -1885077504
        .word   65011720
regName:
        .ascii  "$0\0     "
        .ascii  "$at\0    "
        .ascii  "$v0\0    "
        .ascii  "$v1\0    "
        .ascii  "$a0\0    "
        .ascii  "$a1\0    "
        .ascii  "$a2\0    "
        .ascii  "$a3\0    "
        .ascii  "$t0\0    "
        .ascii  "$t1\0    "
        .ascii  "$t2\0    "
        .ascii  "$t3\0    "
        .ascii  "$t4\0    "
        .ascii  "$t5\0    "
        .ascii  "$t6\0    "
        .ascii  "$t7\0    "
        .ascii  "$s0\0    "
        .ascii  "$s1\0    "
        .ascii  "$s2\0    "
        .ascii  "$s3\0    "
        .ascii  "$s4\0    "
        .ascii  "$s5\0    "
        .ascii  "$s6\0    "
        .ascii  "$s7\0    "
        .ascii  "$t8\0    "
        .ascii  "$t9\0    "
        .ascii  "$k0\0    "
        .ascii  "$k1\0    "
        .ascii  "$gp\0    "
        .ascii  "$sp\0    "
        .ascii  "$fp\0    "
        .ascii  "$ra\0    "
nomImm:
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "j \0     "
        .ascii  "jal \0   "
        .ascii  "beq \0   "
        .ascii  "bne \0   "
        .ascii  "blez \0  "
        .ascii  "bgtz \0  "
        .ascii  "addi \0  "
        .ascii  "addiu \0 "
        .ascii  "slti \0  "
        .ascii  "sltiu \0 "
        .ascii  "andi \0  "
        .ascii  "ori \0   "
        .ascii  "xori \0  "
        .ascii  "lui \0   "
        .ascii  "mfc0 \0  "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "lb \0    "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "lw \0    "
        .ascii  "lbu \0   "
        .ascii  "lhu \0   "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "sb \0    "
        .ascii  "sh \0    "
        .ascii  "?\0      "
        .ascii  "sw \0    "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
nom3reg:
        .ascii  "sll \0   "
        .ascii  "?\0      "
        .ascii  "srl \0   "
        .ascii  "sra \0   "
        .ascii  "sllv \0  "
        .ascii  "?\0      "
        .ascii  "srlv \0  "
        .ascii  "srav \0  "
        .ascii  "jr \0    "
        .ascii  "jalr \0  "
        .ascii  "movz \0  "
        .ascii  "movn \0  "
        .ascii  "syscall\0"
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "mfhi \0  "
        .ascii  "mthi \0  "
        .ascii  "mflo \0  "
        .ascii  "mtlo \0  "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "mult \0  "
        .ascii  "multu \0 "
        .ascii  "div \0   "
        .ascii  "divu \0  "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "add \0   "
        .ascii  "addu \0  "
        .ascii  "sub \0   "
        .ascii  "subu \0  "
        .ascii  "and \0   "
        .ascii  "or \0    "
        .ascii  "xor \0   "
        .ascii  "nor \0   "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "slt \0   "
        .ascii  "sltu \0  "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
        .ascii  "?\0      "
tab:
        .ascii  "0123456789ABCDEF"
tmp:
        .ascii  "#Instruction inconnue\0"
$LC0:
        .ascii  ",\0      "
$LC1:
        .ascii  "(\0      "
$LC2:
        .ascii  ")\0      "
$LC3:
        .ascii  "\n       "

.text
main:
        addiu   $sp,$sp,-1032
        sw      $31,1028($sp)
        sw      $fp,1024($sp)
        move    $fp,$sp
        addiu   $2,$fp,24
        move    $6,$2
        li      $5,16                 # 0x10
        lui     $2,%hi(pgm)
        addiu   $4,$2,%lo(pgm)
        jal     decodePgm
	nop
	
        lw $a0,8($fp)
        li $v0,4
        syscall

        move    $2,$0
        move    $sp,$fp
        lw      $31,1028($sp)
        lw      $fp,1024($sp)
        addiu   $sp,$sp,1032
        #j       $31
	li	$v0,10
        syscall
        nop
boucle:
	lb $a0,0($t0)
	#lw $a0,8($fp)
	blez $a0,fin
	jal putChar
	addi $t0,$t0,1
	bgtz $a0,boucle
fin:
	blez $a0,fin

putChar:
	sw $t0,0($sp)
	addi $sp,$sp,-4
	lui $t0,0xFFFF
	sw $a0,0xC($t0)
	addi $sp,$sp,4
	lw $t0,0($sp)
	jr $ra

getRegName:
        addiu   $sp,$sp,-24
        sw      $fp,20($sp)
        move    $fp,$sp
        sw      $4,24($fp)
        sw      $5,28($fp)
        lw      $2,24($fp)
        nop
        sltu    $2,$2,33
        bne     $2,$0,$L2
        nop

        li      $2,1                        # 0x1
        b       $L3
        nop

$L2:
        sw      $0,8($fp)
        b       $L4
        nop

$L5:
        lw      $2,8($fp)
        lw      $3,28($fp)
        nop
        addu    $2,$3,$2
        lui     $3,%hi(regName)
        lw      $4,24($fp)
        nop
        sll     $4,$4,2
        addiu   $3,$3,%lo(regName)
        addu    $4,$4,$3
        lw      $3,8($fp)
        nop
        addu    $3,$4,$3
        lb      $3,0($3)
        nop
        sb      $3,0($2)
        lw      $2,8($fp)
        nop
        addiu   $2,$2,1
        sw      $2,8($fp)
$L4:
        lw      $2,8($fp)
        nop
        sltu    $2,$2,4
        bne     $2,$0,$L5
        nop

        lw      $2,24($fp)
        nop
        addiu   $2,$2,4
        sw      $2,12($fp)
        b       $L6
        nop

$L7:
        lw      $2,12($fp)
        lw      $3,28($fp)
        nop
        addu    $2,$3,$2
        sb      $0,0($2)
        lw      $2,12($fp)
        nop
        addiu   $2,$2,1
        sw      $2,12($fp)
$L6:
        lw      $2,12($fp)
        nop
        sltu    $2,$2,4
        bne     $2,$0,$L7
        nop

        move    $2,$0
$L3:
        move    $sp,$fp
        lw      $fp,20($sp)
        addiu   $sp,$sp,24
        j       $31
        nop

getRs:
        addiu   $sp,$sp,-40
        sw      $31,36($sp)
        sw      $fp,32($sp)
        move    $fp,$sp
        sw      $4,40($fp)
        sw      $5,44($fp)
        sw      $6,48($fp)
        lw      $2,40($fp)
        nop
        srl     $2,$2,21
        andi    $2,$2,0x1f
        sw      $2,24($fp)
        lw      $2,44($fp)
        lw      $3,24($fp)
        nop
        sw      $3,0($2)
        lw      $5,48($fp)
        lw      $4,24($fp)
        jal     getRegName
        nop

        move    $sp,$fp
        lw      $31,36($sp)
        lw      $fp,32($sp)
        addiu   $sp,$sp,40
        j       $31
        nop

getRt:
        addiu   $sp,$sp,-40
        sw      $31,36($sp)
        sw      $fp,32($sp)
        move    $fp,$sp
        sw      $4,40($fp)
        sw      $5,44($fp)
        sw      $6,48($fp)
        lw      $2,40($fp)
        nop
        srl     $2,$2,16
        andi    $2,$2,0x1f
        sw      $2,24($fp)
        lw      $2,44($fp)
        lw      $3,24($fp)
        nop
        sw      $3,0($2)
        lw      $5,48($fp)
        lw      $4,24($fp)
        jal     getRegName
        nop

        move    $sp,$fp
        lw      $31,36($sp)
        lw      $fp,32($sp)
        addiu   $sp,$sp,40
        j       $31
        nop

getRd:
        addiu   $sp,$sp,-40
        sw      $31,36($sp)
        sw      $fp,32($sp)
        move    $fp,$sp
        sw      $4,40($fp)
        sw      $5,44($fp)
        sw      $6,48($fp)
        lw      $2,40($fp)
        nop
        srl     $2,$2,11
        andi    $2,$2,0x1f
        sw      $2,24($fp)
        lw      $2,44($fp)
        lw      $3,24($fp)
        nop
        sw      $3,0($2)
        lw      $5,48($fp)
        lw      $4,24($fp)
        jal     getRegName
        nop

        move    $sp,$fp
        lw      $31,36($sp)
        lw      $fp,32($sp)
        addiu   $sp,$sp,40
        j       $31
        nop

utoha:
        addiu   $sp,$sp,-32
        sw      $fp,28($sp)
        move    $fp,$sp
        sw      $4,32($fp)
        sw      $5,36($fp)
        li      $2,2                        # 0x2
        sw      $2,8($fp)
        sw      $0,12($fp)
        lw      $2,36($fp)
        li      $3,48                 # 0x30
        sb      $3,0($2)
        lw      $2,36($fp)
        nop
        addiu   $2,$2,1
        li      $3,120                  # 0x78
        sb      $3,0($2)
        sw      $0,16($fp)
        b       $L15
        nop

$L19:
        lw      $2,32($fp)
        nop
        srl     $2,$2,28
        sw      $2,20($fp)
        lw      $2,20($fp)
        nop
        sltu    $2,$2,10
        bne     $2,$0,$L16
        nop

        lw      $2,8($fp)
        nop
        addiu   $3,$2,1
        sw      $3,8($fp)
        move    $3,$2
        lw      $2,36($fp)
        nop
        addu    $2,$2,$3
        lw      $3,20($fp)
        nop
        andi    $3,$3,0x00ff
        addiu   $3,$3,55
        andi    $3,$3,0x00ff
        sll     $3,$3,24
        sra     $3,$3,24
        sb      $3,0($2)
        b       $L17
        nop

$L16:
        lw      $2,20($fp)
        nop
        beq     $2,$0,$L18
        nop

        lw      $2,8($fp)
        nop
        addiu   $3,$2,1
        sw      $3,8($fp)
        move    $3,$2
        lw      $2,36($fp)
        nop
        addu    $2,$2,$3
        lw      $3,20($fp)
        nop
        andi    $3,$3,0x00ff
        addiu   $3,$3,48
        andi    $3,$3,0x00ff
        sll     $3,$3,24
        sra     $3,$3,24
        sb      $3,0($2)
        li      $2,1                        # 0x1
        sw      $2,12($fp)
        b       $L17
        nop

$L18:
        lw      $2,20($fp)
        nop
        bne     $2,$0,$L17
        nop

        lw      $3,12($fp)
        li      $2,1                        # 0x1
        bne     $3,$2,$L17
        nop

        lw      $2,8($fp)
        nop
        addiu   $3,$2,1
        sw      $3,8($fp)
        move    $3,$2
        lw      $2,36($fp)
        nop
        addu    $2,$2,$3
        lw      $3,20($fp)
        nop
        andi    $3,$3,0x00ff
        addiu   $3,$3,48
        andi    $3,$3,0x00ff
        sll     $3,$3,24
        sra     $3,$3,24
        sb      $3,0($2)
$L17:
        lw      $2,32($fp)
        nop
        sll     $2,$2,4
        sw      $2,32($fp)
        lw      $2,16($fp)
        nop
        addiu   $2,$2,1
        sw      $2,16($fp)
$L15:
        lw      $2,16($fp)
        nop
        slt     $2,$2,8
        bne     $2,$0,$L19
        nop

        lw      $2,8($fp)
        lw      $3,36($fp)
        nop
        addu    $2,$3,$2
        sb      $0,0($2)
        nop
        move    $sp,$fp
        lw      $fp,28($sp)
        addiu   $sp,$sp,32
        j       $31
        nop

itoa:
        addiu   $sp,$sp,-40
        sw      $fp,36($sp)
        move    $fp,$sp
        sw      $4,40($fp)
        sw      $5,44($fp)
        sw      $0,8($fp)
        lw      $2,40($fp)
        nop
        sw      $2,12($fp)
        sw      $0,16($fp)
        sw      $0,24($fp)
        sw      $0,20($fp)
        sw      $0,28($fp)
        b       $L21
        nop

$L22:
        lw      $2,8($fp)
        nop
        addiu   $2,$2,1
        sw      $2,8($fp)
        lw      $3,40($fp)
        li      $2,10                 # 0xa

        div     $0,$3,$2

        mfhi    $2
        mflo    $2
        sw      $2,40($fp)
$L21:
        lw      $2,40($fp)
        nop
        bne     $2,$0,$L22
        nop

        lw      $2,8($fp)
        lw      $3,44($fp)
        nop
        addu    $2,$3,$2
        sb      $0,0($2)
        lw      $3,12($fp)
        li      $2,10                 # 0xa

        div     $0,$3,$2

        mfhi    $2
        sw      $2,16($fp)
        lw      $2,16($fp)
        nop
        bgez    $2,$L24
        nop

        lw      $2,44($fp)
        li      $3,45                 # 0x2d
        sb      $3,0($2)
        li      $2,1                        # 0x1
        sw      $2,20($fp)
        lw      $2,8($fp)
        nop
        addiu   $2,$2,1
        lw      $3,44($fp)
        nop
        addu    $2,$3,$2
        sb      $0,0($2)
        b       $L24
        nop

$L26:
        lw      $2,8($fp)
        nop
        addiu   $2,$2,-1
        sw      $2,8($fp)
        lw      $2,16($fp)
        nop
        bgez    $2,$L25
        nop

        subu    $2,$0,$2
$L25:
        sw      $2,24($fp)
        lui     $2,%hi(tab)
        addiu   $3,$2,%lo(tab)
        lw      $2,24($fp)
        nop
        addu    $2,$3,$2
        lb      $2,0($2)
        nop
        sw      $2,28($fp)
        lw      $3,8($fp)
        lw      $2,20($fp)
        nop
        addu    $2,$3,$2
        move    $3,$2
        lw      $2,44($fp)
        nop
        addu    $2,$2,$3
        lw      $3,28($fp)
        nop
        sll     $3,$3,24
        sra     $3,$3,24
        sb      $3,0($2)
        lw      $3,12($fp)
        li      $2,10                 # 0xa

        div     $0,$3,$2

        mfhi    $2
        mflo    $2
        sw      $2,12($fp)
        lw      $3,12($fp)
        li      $2,10                 # 0xa

        div     $0,$3,$2

        mfhi    $2
        sw      $2,16($fp)
$L24:
        lw      $2,12($fp)
        nop
        bne     $2,$0,$L26
        nop

        nop
        move    $sp,$fp
        lw      $fp,36($sp)
        addiu   $sp,$sp,40
        j       $31
        nop

getImmS16:
        addiu   $sp,$sp,-32
        sw      $31,28($sp)
        sw      $fp,24($sp)
        move    $fp,$sp
        sw      $4,32($fp)
        sw      $5,36($fp)
        sw      $6,40($fp)
        lw      $2,32($fp)
        nop
        andi    $2,$2,0x8000
        srl     $3,$2,15
        li      $2,1                        # 0x1
        bne     $3,$2,$L28
        nop

        lw      $3,32($fp)
        li      $2,-65536             # 0xffffffffffff0000
        or      $2,$3,$2
        move    $3,$2
        lw      $2,36($fp)
        nop
        sw      $3,0($2)
        b       $L29
        nop

$L28:
        lw      $2,32($fp)
        nop
        andi    $2,$2,0x8000
        srl     $2,$2,15
        bne     $2,$0,$L29
        nop

        lw      $2,32($fp)
        nop
        andi    $3,$2,0xffff
        lw      $2,36($fp)
        nop
        sw      $3,0($2)
$L29:
        lw      $2,36($fp)
        nop
        lw      $2,0($2)
        lw      $5,40($fp)
        move    $4,$2
        jal     itoa
        nop

        nop
        move    $sp,$fp
        lw      $31,28($sp)
        lw      $fp,24($sp)
        addiu   $sp,$sp,32
        j       $31
        nop

getImmS16Hexa:
        addiu   $sp,$sp,-32
        sw      $31,28($sp)
        sw      $fp,24($sp)
        move    $fp,$sp
        sw      $4,32($fp)
        sw      $5,36($fp)
        sw      $6,40($fp)
        lw      $2,32($fp)
        nop
        andi    $2,$2,0x8000
        srl     $3,$2,15
        li      $2,1                        # 0x1
        bne     $3,$2,$L31
        nop

        lw      $3,32($fp)
        li      $2,-65536             # 0xffffffffffff0000
        or      $2,$3,$2
        move    $3,$2
        lw      $2,36($fp)
        nop
        sw      $3,0($2)
        b       $L32
        nop

$L31:
        lw      $2,32($fp)
        nop
        andi    $2,$2,0x8000
        srl     $2,$2,15
        bne     $2,$0,$L32
        nop

        lw      $2,32($fp)
        nop
        andi    $3,$2,0xffff
        lw      $2,36($fp)
        nop
        sw      $3,0($2)
$L32:
        lw      $2,36($fp)
        nop
        lw      $2,0($2)
        lw      $5,40($fp)
        move    $4,$2
        jal     utoha
        nop

        nop
        move    $sp,$fp
        lw      $31,28($sp)
        lw      $fp,24($sp)
        addiu   $sp,$sp,32
        j       $31
        nop

getImmNs16:
        addiu   $sp,$sp,-32
        sw      $31,28($sp)
        sw      $fp,24($sp)
        move    $fp,$sp
        sw      $4,32($fp)
        sw      $5,36($fp)
        sw      $6,40($fp)
        lw      $2,32($fp)
        nop
        andi    $3,$2,0xffff
        lw      $2,36($fp)
        nop
        sw      $3,0($2)
        lw      $2,36($fp)
        nop
        lw      $2,0($2)
        lw      $5,40($fp)
        move    $4,$2
        jal     utoha
        nop

        nop
        move    $sp,$fp
        lw      $31,28($sp)
        lw      $fp,24($sp)
        addiu   $sp,$sp,32
        j       $31
        nop

getImmNs26:
        addiu   $sp,$sp,-32
        sw      $31,28($sp)
        sw      $fp,24($sp)
        move    $fp,$sp
        sw      $4,32($fp)
        sw      $5,36($fp)
        sw      $6,40($fp)
        lw      $3,32($fp)
        li      $2,67043328       # 0x3ff0000
        ori     $2,$2,0xffff
        and     $2,$3,$2
        sll     $3,$2,2
        lw      $2,36($fp)
        nop
        sw      $3,0($2)
        lw      $2,36($fp)
        nop
        lw      $2,0($2)
        lw      $5,40($fp)
        move    $4,$2
        jal     utoha
        nop

        nop
        move    $sp,$fp
        lw      $31,28($sp)
        lw      $fp,24($sp)
        addiu   $sp,$sp,32
        j       $31
        nop

getShamt:
        addiu   $sp,$sp,-40
        sw      $31,36($sp)
        sw      $fp,32($sp)
        move    $fp,$sp
        sw      $4,40($fp)
        sw      $5,44($fp)
        sw      $6,48($fp)
        lw      $2,40($fp)
        nop
        srl     $2,$2,6
        andi    $2,$2,0x1f
        sw      $2,24($fp)
        lw      $2,44($fp)
        lw      $3,24($fp)
        nop
        sw      $3,0($2)
        lw      $2,24($fp)
        lw      $5,48($fp)
        move    $4,$2
        jal     itoa
        nop

        nop
        move    $sp,$fp
        lw      $31,36($sp)
        lw      $fp,32($sp)
        addiu   $sp,$sp,40
        j       $31
        nop

getInstructionName:
        addiu   $sp,$sp,-24
        sw      $fp,20($sp)
        move    $fp,$sp
        sw      $4,24($fp)
        sw      $5,28($fp)
        sw      $6,32($fp)
        sw      $7,36($fp)
        lw      $2,24($fp)
        nop
        srl     $3,$2,26
        lw      $2,28($fp)
        nop
        sw      $3,0($2)
        lw      $3,24($fp)
        li      $2,-2147483648                  # 0xffffffff80000000
        ori     $2,$2,0x3f
        and     $3,$3,$2
        lw      $2,32($fp)
        nop
        sw      $3,0($2)
        sw      $0,8($fp)
$L39:
        lw      $2,28($fp)
        nop
        lw      $2,0($2)
        nop
        beq     $2,$0,$L37
        nop

        lw      $2,8($fp)
        lw      $3,36($fp)
        nop
        addu    $2,$3,$2
        lw      $3,28($fp)
        nop
        lw      $4,0($3)
        lui     $3,%hi(nomImm)
        sll     $4,$4,3
        addiu   $3,$3,%lo(nomImm)
        addu    $4,$4,$3
        lw      $3,8($fp)
        nop
        addu    $3,$4,$3
        lb      $3,0($3)
        nop
        sb      $3,0($2)
        lw      $2,24($fp)
        nop
        andi    $2,$2,0x3f
        srl     $2,$2,5
        move    $3,$2
        lw      $2,32($fp)
        nop
        sw      $3,0($2)
        lw      $2,32($fp)
        nop
        lw      $2,0($2)
        nop
        subu    $3,$0,$2
        lw      $2,32($fp)
        nop
        sw      $3,0($2)
        b       $L38
        nop

$L37:
        lw      $2,32($fp)
        nop
        lw      $2,0($2)
        nop
        bltz    $2,$L38
        nop

        lw      $2,8($fp)
        lw      $3,36($fp)
        nop
        addu    $2,$3,$2
        lw      $3,32($fp)
        nop
        lw      $4,0($3)
        lui     $3,%hi(nom3reg)
        sll     $4,$4,3
        addiu   $3,$3,%lo(nom3reg)
        addu    $4,$4,$3
        lw      $3,8($fp)
        nop
        addu    $3,$4,$3
        lb      $3,0($3)
        nop
        sb      $3,0($2)
$L38:
        lw      $2,8($fp)
        nop
        addiu   $2,$2,1
        sw      $2,8($fp)
        lw      $2,8($fp)
        nop
        slt     $2,$2,8
        bne     $2,$0,$L39
        nop

        move    $2,$0
        move    $sp,$fp
        lw      $fp,20($sp)
        addiu   $sp,$sp,24
        j       $31
        nop

strCpy:
        addiu   $sp,$sp,-24
        sw      $fp,20($sp)
        move    $fp,$sp
        sw      $4,24($fp)
        sw      $5,28($fp)
        sw      $0,8($fp)
$L44:
        lw      $2,8($fp)
        lw      $3,28($fp)
        nop
        addu    $2,$3,$2
        lw      $3,8($fp)
        lw      $4,24($fp)
        nop
        addu    $3,$4,$3
        lb      $3,0($3)
        nop
        sb      $3,0($2)
        lw      $2,8($fp)
        lw      $3,24($fp)
        nop
        addu    $2,$3,$2
        lb      $2,0($2)
        nop
        beq     $2,$0,$L45
        nop

        lw      $2,8($fp)
        nop
        addiu   $2,$2,1
        sw      $2,8($fp)
        lw      $2,8($fp)
        nop
        bne     $2,$0,$L44
        nop

        b       $L43
        nop

$L45:
        nop
$L43:
        nop
        move    $sp,$fp
        lw      $fp,20($sp)
        addiu   $sp,$sp,24
        j       $31
        nop

strAdd:
        addiu   $sp,$sp,-24
        sw      $fp,20($sp)
        move    $fp,$sp
        sw      $4,24($fp)
        sw      $5,28($fp)
        sw      $0,8($fp)
        sw      $0,12($fp)
$L51:
        lw      $2,8($fp)
        lw      $3,28($fp)
        nop
        addu    $2,$3,$2
        lb      $2,0($2)
        nop
        bne     $2,$0,$L47
        nop

        lw      $2,12($fp)
        nop
        bne     $2,$0,$L47
        nop

        lw      $2,8($fp)
        nop
        sw      $2,12($fp)
$L47:
        lw      $2,12($fp)
        nop
        blez    $2,$L48
        nop

        lw      $2,8($fp)
        lw      $3,28($fp)
        nop
        addu    $2,$3,$2
        lw      $4,8($fp)
        lw      $3,12($fp)
        nop
        subu    $3,$4,$3
        move    $4,$3
        lw      $3,24($fp)
        nop
        addu    $3,$3,$4
        lb      $3,0($3)
        nop
        sb      $3,0($2)
$L48:
        lw      $2,8($fp)
        lw      $3,28($fp)
        nop
        addu    $2,$3,$2
        lb      $2,0($2)
        nop
        bne     $2,$0,$L49
        nop

        lw      $2,12($fp)
        nop
        bne     $2,$0,$L52
        nop

$L49:
        lw      $2,8($fp)
        nop
        addiu   $2,$2,1
        sw      $2,8($fp)
        lw      $2,8($fp)
        nop
        bne     $2,$0,$L51
        nop

        b       $L50
        nop

$L52:
        nop
$L50:
        nop
        move    $sp,$fp
        lw      $fp,20($sp)
        addiu   $sp,$sp,24
        j       $31
        nop

decodeInstruction:
        addiu   $sp,$sp,-192
        sw      $31,188($sp)
        sw      $fp,184($sp)
        move    $fp,$sp
        sw      $4,192($fp)
        sw      $5,196($fp)
        addiu   $2,$fp,28
        lw      $7,196($fp)
        move    $6,$2
        addiu   $2,$fp,24
        move    $5,$2
        lw      $4,192($fp)
        jal     getInstructionName
        nop

        addiu   $3,$fp,32
        addiu   $2,$fp,172
        move    $6,$3
        move    $5,$2
        lw      $4,192($fp)
        jal     getRs
        nop

        addiu   $3,$fp,48
        addiu   $2,$fp,176
        move    $6,$3
        move    $5,$2
        lw      $4,192($fp)
        jal     getRt
        nop

        addiu   $3,$fp,64
        addiu   $2,$fp,180
        move    $6,$3
        move    $5,$2
        lw      $4,192($fp)
        jal     getRd
        nop

        addiu   $3,$fp,80
        addiu   $2,$fp,160
        move    $6,$3
        move    $5,$2
        lw      $4,192($fp)
        jal     getImmS16
        nop

        addiu   $3,$fp,96
        addiu   $2,$fp,160
        move    $6,$3
        move    $5,$2
        lw      $4,192($fp)
        jal     getImmS16Hexa
        nop

        addiu   $3,$fp,112
        addiu   $2,$fp,164
        move    $6,$3
        move    $5,$2
        lw      $4,192($fp)
        jal     getImmNs16
        nop

        addiu   $3,$fp,128
        addiu   $2,$fp,160
        move    $6,$3
        move    $5,$2
        lw      $4,192($fp)
        jal     getImmNs26
        nop

        addiu   $3,$fp,144
        addiu   $2,$fp,168
        move    $6,$3
        move    $5,$2
        lw      $4,192($fp)
        jal     getShamt
        nop

        lw      $3,24($fp)
        li      $2,3                        # 0x3
        bne     $3,$2,$L54
        nop

        addiu   $2,$fp,128
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        b       $L55
        nop

$L54:
        lw      $3,28($fp)
        li      $2,8                        # 0x8
        beq     $3,$2,$L56
        nop

        lw      $3,28($fp)
        li      $2,11                 # 0xb
        beq     $3,$2,$L56
        nop

        lw      $3,28($fp)
        li      $2,13                 # 0xd
        bne     $3,$2,$L57
        nop

$L56:
        addiu   $2,$fp,32
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        b       $L55
        nop

$L57:
        lw      $3,24($fp)
        li      $2,4                        # 0x4
        beq     $3,$2,$L58
        nop

        lw      $3,24($fp)
        li      $2,5                        # 0x5
        bne     $3,$2,$L59
        nop

$L58:
        addiu   $2,$fp,32
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,48
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,80
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        b       $L55
        nop

$L59:
        lw      $3,24($fp)
        li      $2,7                        # 0x7
        beq     $3,$2,$L60
        nop

        lw      $3,24($fp)
        li      $2,6                        # 0x6
        beq     $3,$2,$L60
        nop

        lw      $3,24($fp)
        li      $2,1                        # 0x1
        bne     $3,$2,$L61
        nop

$L60:
        addiu   $2,$fp,32
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,80
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        b       $L55
        nop

$L61:
        lw      $3,24($fp)
        li      $2,8                        # 0x8
        beq     $3,$2,$L62
        nop

        lw      $3,24($fp)
        li      $2,10                 # 0xa
        bne     $3,$2,$L63
        nop

$L62:
        addiu   $2,$fp,48
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,32
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,80
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        b       $L55
        nop

$L63:
        lw      $3,24($fp)
        li      $2,9                        # 0x9
        beq     $3,$2,$L64
        nop

        lw      $3,24($fp)
        li      $2,11                 # 0xb
        bne     $3,$2,$L65
        nop

$L64:
        addiu   $2,$fp,48
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,32
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,96
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        b       $L55
        nop

$L65:
        lw      $3,24($fp)
        li      $2,13                 # 0xd
        beq     $3,$2,$L66
        nop

        lw      $3,24($fp)
        li      $2,14                 # 0xe
        beq     $3,$2,$L66
        nop

        lw      $3,24($fp)
        li      $2,12                 # 0xc
        bne     $3,$2,$L67
        nop

$L66:
        addiu   $2,$fp,48
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,32
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,112
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        b       $L55
        nop

$L67:
        lw      $3,24($fp)
        li      $2,15                 # 0xf
        bne     $3,$2,$L68
        nop

        addiu   $2,$fp,48
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,96
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        b       $L55
        nop

$L68:
        lw      $3,24($fp)
        li      $2,35                 # 0x23
        beq     $3,$2,$L69
        nop

        lw      $3,24($fp)
        li      $2,32                 # 0x20
        beq     $3,$2,$L69
        nop

        lw      $3,24($fp)
        li      $2,36                 # 0x24
        beq     $3,$2,$L69
        nop

        lw      $3,24($fp)
        li      $2,43                 # 0x2b
        beq     $3,$2,$L69
        nop

        lw      $3,24($fp)
        li      $2,40                 # 0x28
        bne     $3,$2,$L70
        nop

$L69:
        addiu   $2,$fp,48
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,80
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC1)
        addiu   $4,$2,%lo($LC1)
        jal     strAdd
        nop

        addiu   $2,$fp,32
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC2)
        addiu   $4,$2,%lo($LC2)
        jal     strAdd
        nop

        b       $L55
        nop

$L70:
        lw      $2,24($fp)
        nop
        bne     $2,$0,$L71
        nop

        lw      $2,28($fp)
        nop
        beq     $2,$0,$L72
        nop

$L71:
        lw      $3,28($fp)
        li      $2,2                        # 0x2
        beq     $3,$2,$L72
        nop

        lw      $3,28($fp)
        li      $2,3                        # 0x3
        bne     $3,$2,$L73
        nop

$L72:
        addiu   $2,$fp,64
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,48
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,144
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        b       $L55
        nop

$L73:
        lw      $3,28($fp)
        li      $2,16                 # 0x10
        beq     $3,$2,$L74
        nop

        lw      $3,28($fp)
        li      $2,18                 # 0x12
        bne     $3,$2,$L75
        nop

$L74:
        addiu   $2,$fp,64
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        b       $L55
        nop

$L75:
        lw      $3,28($fp)
        li      $2,24                 # 0x18
        beq     $3,$2,$L76
        nop

        lw      $3,28($fp)
        li      $2,26                 # 0x1a
        beq     $3,$2,$L76
        nop

        lw      $3,28($fp)
        li      $2,27                 # 0x1b
        beq     $3,$2,$L76
        nop

        lw      $3,28($fp)
        li      $2,25                 # 0x19
        bne     $3,$2,$L77
        nop

$L76:
        addiu   $2,$fp,32
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,48
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        b       $L55
        nop

$L77:
        lw      $2,28($fp)
        nop
        slt     $2,$2,32
        bne     $2,$0,$L78
        nop

        lw      $2,28($fp)
        nop
        slt     $2,$2,40
        bne     $2,$0,$L79
        nop

$L78:
        lw      $3,28($fp)
        li      $2,42                 # 0x2a
        beq     $3,$2,$L79
        nop

        lw      $3,28($fp)
        li      $2,43                 # 0x2b
        beq     $3,$2,$L79
        nop

        lw      $3,28($fp)
        li      $2,10                 # 0xa
        beq     $3,$2,$L79
        nop

        lw      $3,28($fp)
        li      $2,11                 # 0xb
        bne     $3,$2,$L80
        nop

$L79:
        addiu   $2,$fp,64
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,32
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,196($fp)
        lui     $2,%hi($LC0)
        addiu   $4,$2,%lo($LC0)
        jal     strAdd
        nop

        addiu   $2,$fp,48
        lw      $5,196($fp)
        move    $4,$2
        jal     strAdd
        nop

        b       $L55
        nop

$L80:
        lw      $3,28($fp)
        li      $2,12                 # 0xc
        beq     $3,$2,$L55
        nop

        lw      $5,196($fp)
        lui     $2,%hi(tmp)
        addiu   $4,$2,%lo(tmp)
        jal     strCpy
        nop

        li      $2,1                        # 0x1
        b       $L82
        nop

$L55:
        move    $2,$0
$L82:
        move    $sp,$fp
        lw      $31,188($sp)
        lw      $fp,184($sp)
        addiu   $sp,$sp,192
        j       $31
        nop

decodePgm:
        addiu   $sp,$sp,-136
        sw      $31,132($sp)
        sw      $fp,128($sp)
        move    $fp,$sp
        sw      $4,136($fp)
        sw      $5,140($fp)
        sw      $6,144($fp)
        lw      $2,136($fp)
        nop
        lw      $2,0($2)
        addiu   $3,$fp,28
        move    $5,$3
        move    $4,$2
        jal     decodeInstruction
        nop

        addiu   $2,$fp,28
        lw      $5,144($fp)
        move    $4,$2
        jal     strCpy
        nop

        lw      $5,144($fp)
        lui     $2,%hi($LC3)
        addiu   $4,$2,%lo($LC3)
        jal     strAdd
        nop

        li      $2,1                        # 0x1
        sw      $2,24($fp)
        b       $L84
        nop

$L85:
        lw      $2,24($fp)
        nop
        sll     $2,$2,2
        lw      $3,136($fp)
        nop
        addu    $2,$3,$2
        lw      $2,0($2)
        addiu   $3,$fp,28
        move    $5,$3
        move    $4,$2
        jal     decodeInstruction
        nop

        addiu   $2,$fp,28
        lw      $5,144($fp)
        move    $4,$2
        jal     strAdd
        nop

        lw      $5,144($fp)
        lui     $2,%hi($LC3)
        addiu   $4,$2,%lo($LC3)
        jal     strAdd
        nop

        lw      $2,24($fp)
        nop
        addiu   $2,$2,1
        sw      $2,24($fp)
$L84:
        lw      $3,24($fp)
        lw      $2,140($fp)
        nop
        sltu    $2,$3,$2
        bne     $2,$0,$L85
        nop

        nop
        move    $sp,$fp
        lw      $31,132($sp)
        lw      $fp,128($sp)
        addiu   $sp,$sp,136
        j       $31
        nop
