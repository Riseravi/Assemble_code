.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x18, 0x40001104
                  csrw 0x301, x18
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 0
                  csrw 0x305, x18 # MTVEC

mepc_setup:       
                  la x18, init
                  csrw 0x341, x18

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x18, 0x1800
                  csrw 0x300, x18 # MSTATUS
                  li x18, 0x0
                  csrw 0x304, x18 # MIE
                  mret
init:             
                  li x0, 0xf1b0ea1f
                  li x1, 0xfea23c14
                  li x2, 0xbac28bf8
                  li x3, 0xe
                  li x4, 0x1624842d
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0xf7caf781
                  li x8, 0xff57ca9a
                  li x9, 0xf230bd05
                  li x10, 0x80000000
                  li x11, 0x4f8b5c46
                  li x12, 0x0
                  li x14, 0x80000000
                  li x15, 0xe
                  li x16, 0xf6844dab
                  li x17, 0xf3c0dd95
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x21, 0xf5c0f8aa
                  li x22, 0xb97096d5
                  li x23, 0x80000000
                  li x24, 0xf8dce091
                  li x25, 0xd5fcd4c6
                  li x26, 0xe
                  li x27, 0xe5aebf74
                  li x28, 0x80000000
                  li x29, 0xce2a50aa
                  li x30, 0xd
                  li x31, 0xcf21efa9
                  la x20, user_stack_end
main:             li           ra, 0x0 #start riscv_int_numeric_corner_stream_22
                  li           tp, 0x80000000
                  li           s6, 0x853fae42
                  li           s11, 0x2047fce6
                  li           a0, 0x80000000
                  li           sp, 0x80000000
                  li           a4, 0x0
                  li           t6, 0x80000000
                  li           s7, 0xffffffff
                  li           a2, 0x80000000
                  add          tp, s11, sp
                  mulhsu       a2, a2, sp
                  add          a0, a2, sp
                  addi         t6, a4, -865
                  remu         t6, a0, ra
                  auipc        s7, 828146
                  sub          tp, sp, a4
                  rem          ra, t6, t6
                  auipc        s7, 803356
                  lui          s11, 123373
                  sub          ra, sp, s6
                  add          s11, a0, a4
                  div          a2, ra, t6
                  add          a4, s7, tp
                  mulhu        t6, t6, a4
                  nop
                  auipc        s7, 825114
                  addi         s11, ra, -1555 #end riscv_int_numeric_corner_stream_22
                  li           s7, 0xffffffff #start riscv_int_numeric_corner_stream_15
                  li           a0, 0xffffffff
                  li           t1, 0x80000000
                  li           t3, 0x80000000
                  li           s6, 0xefe031bb
                  li           s8, 0x0
                  li           s2, 0x4db4cfb1
                  li           a2, 0x80000000
                  li           tp, 0x969f09d0
                  li           gp, 0x80000000
                  remu         s7, gp, tp
                  auipc        gp, 938975
                  addi         t3, tp, 154
                  add          a0, a2, t1
                  lui          a0, 800600
                  div          a2, s7, s7
                  lui          tp, 763608
                  mul          s8, a2, t1
                  remu         gp, gp, tp
                  mulhu        t1, tp, a0
                  remu         s7, gp, t3
                  add          s6, a2, s8
                  sub          t1, a2, s7
                  mul          tp, a0, gp
                  lui          gp, 482422
                  auipc        s6, 67883
                  addi         s8, s2, -1917
                  lui          t1, 14110
                  auipc        s8, 887637
                  lui          s7, 56860
                  mulh         tp, s2, s7
                  mul          s2, tp, t3
                  mulhsu       s7, tp, t1
                  sub          a0, a0, s2
                  mulhsu       t1, s7, a2 #end riscv_int_numeric_corner_stream_15
                  li           a2, 0x2faf0148 #start riscv_int_numeric_corner_stream_14
                  li           s2, 0x7835f752
                  li           tp, 0x0
                  li           a4, 0x0
                  li           s11, 0xffffffff
                  li           s6, 0xffffffff
                  li           a6, 0x80000000
                  li           s8, 0xffffffff
                  li           gp, 0xffffffff
                  li           sp, 0x0
                  mulhsu       s6, a6, a6
                  lui          a4, 742637
                  addi         a6, gp, -259
                  rem          a2, sp, s2
                  rem          a6, a6, s2
                  auipc        s6, 663901
                  nop
                  rem          s8, a2, s2
                  auipc        gp, 331360
                  sub          a4, s8, sp
                  lui          s2, 919999
                  mulhu        a4, gp, tp
                  remu         a6, tp, a4
                  nop
                  remu         s2, s11, a6
                  mulh         sp, sp, s8
                  divu         s8, s8, s6
                  add          gp, a2, a2 #end riscv_int_numeric_corner_stream_14
                  li           s11, 0x0 #start riscv_int_numeric_corner_stream_29
                  li           s8, 0x0
                  li           gp, 0xffffffff
                  li           t0, 0x0
                  li           s6, 0x0
                  li           t6, 0x705b8c0b
                  li           t5, 0xf54de247
                  li           a7, 0xe8ac3216
                  li           s10, 0xb4654be7
                  li           a0, 0xffffffff
                  rem          a7, t0, s6
                  remu         s10, t5, s11
                  mulhu        s10, a0, a7
                  rem          gp, gp, a0
                  lui          t6, 762376
                  mulhsu       s6, s10, s8
                  mulhu        s6, s6, t0
                  divu         s11, t6, s8
                  addi         s8, s11, -378
                  mulhsu       s6, t6, s11
                  nop
                  divu         s6, t6, a0
                  remu         t0, s11, t0
                  remu         a7, t6, a0
                  divu         t6, s11, t5
                  mulh         t6, t0, t0
                  add          s8, gp, t6
                  sub          t0, s10, gp
                  auipc        s6, 53408
                  mulhu        t5, a0, t0
                  add          s10, s6, s10
                  div          s6, t5, s11
                  sub          t5, s10, s10
                  add          t6, s11, t5 #end riscv_int_numeric_corner_stream_29
                  li           a0, 0x80000000 #start riscv_int_numeric_corner_stream_16
                  li           t2, 0x80000000
                  li           t0, 0x0
                  li           gp, 0x0
                  li           s11, 0xffffffff
                  li           s6, 0xa2639ecd
                  li           s1, 0x283c20cc
                  li           a2, 0x918d3f3
                  li           s8, 0x0
                  li           t1, 0xe8a68953
                  rem          s6, a0, s8
                  nop
                  mulh         s6, a2, gp
                  auipc        gp, 859636
                  lui          a2, 697699
                  mul          s8, t0, gp
                  mulhu        t1, gp, s6
                  remu         s11, t1, s11
                  auipc        s1, 562064
                  nop
                  addi         s11, gp, -237
                  mulhsu       gp, t0, a2
                  add          gp, t0, s1
                  sub          s6, s6, s11
                  rem          s6, gp, s6
                  divu         t2, t0, t1
                  mulhu        gp, s11, a2
                  nop
                  addi         t2, s6, -191
                  divu         s1, s11, a2
                  mulhu        s11, t1, s11
                  mulh         s1, s8, a0
                  mulhsu       t2, s11, t1
                  sub          t2, s6, s6
                  mulhu        a0, s1, s8
                  mulhu        t0, a2, t2 #end riscv_int_numeric_corner_stream_16
                  li           gp, 0xffffffff #start riscv_int_numeric_corner_stream_24
                  li           s5, 0xffffffff
                  li           t3, 0x0
                  li           ra, 0x0
                  li           s8, 0xffffffff
                  li           a0, 0xc15d536a
                  li           t6, 0x0
                  li           s9, 0x80000000
                  li           a2, 0x0
                  li           a7, 0x80000000
                  divu         ra, t3, s9
                  mulh         a2, t6, t3
                  mul          t3, gp, a7
                  lui          t3, 417106
                  div          gp, s9, ra
                  lui          a7, 78199
                  mulhu        gp, a0, s9
                  mulhu        ra, a7, s8
                  remu         a7, t3, s5
                  mulhu        s5, a0, s5
                  mulh         gp, t6, a7
                  mulh         a0, ra, ra
                  auipc        ra, 808902
                  mulhu        t6, ra, a2
                  mulhsu       s5, t3, a2
                  add          gp, t6, s8
                  addi         s8, s8, 410
                  sub          s5, s5, a2
                  divu         s5, t3, s5
                  mulhsu       t3, ra, s8
                  remu         s5, s9, s5
                  addi         ra, a0, -1333
                  remu         t6, s8, ra
                  mul          a0, s9, s5
                  mulhsu       a2, s8, a7
                  addi         ra, t6, -573 #end riscv_int_numeric_corner_stream_24
                  li           t1, 0x0 #start riscv_int_numeric_corner_stream_26
                  li           t3, 0x5c5fbd0b
                  li           s6, 0xa618572e
                  li           a5, 0xffffffff
                  li           t0, 0x0
                  li           gp, 0xffffffff
                  li           s10, 0x0
                  li           s7, 0x0
                  li           a0, 0x80000000
                  li           a7, 0xecb0f9f
                  div          t1, a7, t3
                  div          t1, t3, s6
                  nop
                  div          s6, a0, s6
                  div          gp, gp, gp
                  mulhsu       a5, a0, s7
                  remu         s6, t1, gp
                  addi         gp, t3, -1822
                  div          a0, a7, t1
                  sub          s6, s7, t1
                  lui          t1, 641589
                  auipc        t1, 104607
                  mulhu        s10, a5, s10
                  sub          a0, s7, a0
                  rem          a0, t0, a5
                  mulhu        a0, s6, t1
                  nop #end riscv_int_numeric_corner_stream_26
                  li           s0, 0xd3ab3756 #start riscv_int_numeric_corner_stream_13
                  li           s5, 0xffffffff
                  li           a6, 0xb20b69d8
                  li           s6, 0x479149d0
                  li           t3, 0xffffffff
                  li           t1, 0x80000000
                  li           s10, 0x77f98183
                  li           ra, 0xac65c719
                  li           sp, 0x80000000
                  li           t0, 0xffffffff
                  mulhsu       s10, ra, s10
                  add          ra, sp, s0
                  addi         a6, ra, -1071
                  mulhu        s5, s0, t3
                  remu         t3, t3, s0
                  div          ra, s10, s6
                  remu         s6, a6, s0
                  add          s5, t0, sp
                  lui          t0, 426297
                  auipc        sp, 259715
                  mulh         t1, a6, ra
                  lui          a6, 612803
                  mul          s5, t0, sp
                  divu         s6, t1, ra
                  divu         t1, s10, s6
                  mulhsu       s5, t3, s5
                  addi         t3, s10, -891
                  divu         s0, a6, a6
                  nop
                  remu         t1, s10, s6
                  mulh         s5, a6, a6
                  div          t1, sp, t3
                  add          t3, t0, t0
                  lui          a6, 699999
                  mul          sp, t1, s0
                  mul          t3, ra, s10
                  addi         t0, t0, -450
                  mul          t0, s5, sp
                  remu         t3, sp, t0
                  addi         sp, s6, 973 #end riscv_int_numeric_corner_stream_13
                  li           s8, 0xffffffff #start riscv_int_numeric_corner_stream_32
                  li           s6, 0x8f6b7450
                  li           tp, 0x80000000
                  li           s10, 0x9db4d05d
                  li           s3, 0x80000000
                  li           s9, 0x80000000
                  li           gp, 0xffffffff
                  li           s0, 0xffffffff
                  li           a5, 0x80000000
                  li           a2, 0xffffffff
                  lui          gp, 885573
                  add          a5, s3, gp
                  auipc        s9, 876178
                  mulh         s8, s8, s8
                  nop
                  mulhu        gp, s8, a5
                  divu         s6, tp, gp
                  add          s6, s10, s9
                  mul          gp, tp, s9
                  div          a5, tp, s8
                  add          s8, s3, tp
                  mulh         s0, a5, s10
                  addi         s10, a2, -740
                  rem          tp, tp, s6
                  lui          a5, 848334
                  remu         a5, s0, s3
                  addi         s0, s8, -1653
                  mulh         s8, s0, s10
                  addi         s6, a2, -1477
                  mulh         s8, s10, s9 #end riscv_int_numeric_corner_stream_32
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_19
                  li           a0, 0x11b79619
                  li           t6, 0x80000000
                  li           s10, 0x0
                  li           a5, 0x80000000
                  li           s9, 0xffffffff
                  li           ra, 0xe73da84a
                  li           t1, 0x0
                  li           sp, 0x80000000
                  li           s2, 0x0
                  remu         sp, a0, s9
                  nop
                  auipc        a5, 358086
                  auipc        gp, 644723
                  mulhsu       gp, a0, sp
                  mulhu        s10, a5, ra
                  addi         t6, t1, -938
                  nop
                  mul          a5, s9, t6
                  mulh         s9, a5, s9
                  mulhsu       ra, sp, s9
                  lui          gp, 971562
                  mulhsu       a5, ra, ra
                  auipc        a5, 319857
                  mulhu        a0, s2, s9
                  rem          sp, t6, s2
                  nop
                  mulhsu       s9, t6, s2
                  divu         gp, gp, ra
                  addi         sp, a5, 627
                  add          s9, s2, gp
                  mulh         gp, ra, a0
                  rem          t1, s9, ra #end riscv_int_numeric_corner_stream_19
                  li           sp, 0x80000000 #start riscv_int_numeric_corner_stream_8
                  li           s2, 0x9aa4c44
                  li           s1, 0xffffffff
                  li           t0, 0x80000000
                  li           gp, 0x80000000
                  li           t1, 0x80000000
                  li           s9, 0x79392a4c
                  li           s6, 0xffffffff
                  li           s11, 0x80000000
                  li           t5, 0x0
                  mul          t1, t5, sp
                  mulh         t1, sp, s1
                  remu         t5, gp, t0
                  mulhu        t1, s11, s2
                  mul          sp, s9, s2
                  mulhsu       s2, sp, t5
                  rem          s9, gp, t0
                  add          s2, s9, t5
                  auipc        s6, 315801
                  mul          s6, s2, s11
                  rem          sp, sp, t1
                  div          s1, t5, gp
                  mul          s9, sp, s6
                  lui          t1, 808738
                  sub          gp, t5, s1
                  remu         t1, s11, gp
                  lui          gp, 560090
                  mulhsu       s9, s6, s1
                  remu         s1, sp, s1
                  rem          s2, s1, t1
                  addi         s9, s2, 0
                  mulhsu       s1, t0, t0
                  auipc        gp, 693777
                  addi         t5, t1, 934
                  auipc        s6, 837287
                  add          sp, t1, t5
                  auipc        s11, 827496
                  remu         s1, t1, t1
                  rem          s2, t0, s1
                  add          s1, t5, s1 #end riscv_int_numeric_corner_stream_8
                  li           t6, 0x0 #start riscv_int_numeric_corner_stream_4
                  li           a4, 0x7625d739
                  li           s10, 0x0
                  li           gp, 0xa1fc9241
                  li           ra, 0xffffffff
                  li           a6, 0x0
                  li           s11, 0x80000000
                  li           s3, 0x80000000
                  li           s1, 0xffffffff
                  li           s9, 0x46b599f3
                  mulhsu       s11, gp, gp
                  mulh         s11, s3, s10
                  mul          s1, s1, a6
                  lui          a4, 408824
                  add          a6, gp, gp
                  rem          t6, t6, s10
                  rem          ra, t6, s1
                  mulh         a6, s3, s9
                  sub          s10, s10, t6
                  add          s10, s9, gp
                  divu         s10, s11, s1
                  mul          a6, s9, s9
                  mul          s11, a6, s3
                  remu         s10, t6, ra
                  divu         s11, s1, s11
                  nop
                  mulhsu       ra, s3, s1
                  rem          a4, t6, s11
                  nop
                  divu         a4, t6, s11
                  div          s1, s3, s10
                  sub          s3, ra, t6
                  sub          a6, a4, s11 #end riscv_int_numeric_corner_stream_4
                  li           s6, 0x80000000 #start riscv_int_numeric_corner_stream_39
                  li           t1, 0x0
                  li           a4, 0x9836b9e5
                  li           a0, 0xffffffff
                  li           t5, 0x17daa5a4
                  li           a5, 0xaa51a35f
                  li           t2, 0xffffffff
                  li           s1, 0x0
                  li           tp, 0x0
                  li           a1, 0x0
                  addi         a4, s1, 1759
                  auipc        s6, 143287
                  mulh         tp, t1, a0
                  rem          s6, s1, t1
                  add          a5, s1, t5
                  auipc        s1, 848644
                  addi         s1, a4, -869
                  div          s6, t1, a1
                  add          a1, a4, t2
                  mul          t1, s6, t5
                  mulh         a4, s1, tp
                  divu         a5, a1, t2
                  remu         s6, a4, a0
                  add          s1, t1, a4
                  rem          a5, a5, t5
                  lui          t5, 751739 #end riscv_int_numeric_corner_stream_39
                  li           a4, 0x80000000 #start riscv_int_numeric_corner_stream_5
                  li           s2, 0xffffffff
                  li           a6, 0x0
                  li           s5, 0x87b90764
                  li           t6, 0xea0fb2d0
                  li           t0, 0xffffffff
                  li           a0, 0x80000000
                  li           a7, 0x0
                  li           s7, 0xffffffff
                  li           t1, 0xffffffff
                  add          a6, t6, a6
                  mulhsu       a4, t1, s7
                  lui          a6, 34963
                  remu         a4, t1, t6
                  mul          t0, a7, s7
                  lui          a4, 993656
                  divu         t6, a7, a7
                  remu         t0, s7, a6
                  nop
                  addi         s7, a7, -1604
                  divu         s2, t0, a6
                  divu         t6, a6, t6
                  sub          t1, s7, t1
                  mulhu        t0, a7, a6
                  mulh         t6, t6, a7
                  div          a4, a4, t1
                  mulhu        t6, a7, a4
                  divu         s2, s5, s7
                  mul          t1, t1, a0
                  rem          s7, a4, a6
                  rem          a6, s2, t1 #end riscv_int_numeric_corner_stream_5
                  li           s10, 0x1dbdc1e #start riscv_int_numeric_corner_stream_27
                  li           tp, 0x80000000
                  li           s1, 0xffffffff
                  li           s6, 0xffffffff
                  li           t1, 0x80000000
                  li           a4, 0x0
                  li           t0, 0x80000000
                  li           a5, 0x7639eacc
                  li           s8, 0x0
                  li           t2, 0xffffffff
                  lui          a4, 887378
                  mulhsu       a4, a4, t0
                  mul          s10, s10, t2
                  mul          a4, t1, a5
                  mulhu        t2, t2, a4
                  div          t1, s1, s10
                  divu         s8, a5, s10
                  addi         s6, s10, 1398
                  div          s8, s6, t1
                  mulh         t0, a4, s6
                  mulhu        s10, s1, a4
                  mulh         t1, a4, s10
                  rem          t2, a4, s8
                  rem          s6, s10, tp
                  nop
                  addi         t1, tp, 57
                  divu         a4, s8, s8
                  sub          s1, t2, t0
                  mulh         s8, s8, t0
                  lui          s6, 467676
                  auipc        s1, 501600 #end riscv_int_numeric_corner_stream_27
                  li           t0, 0x0 #start riscv_int_numeric_corner_stream_21
                  li           s6, 0x0
                  li           ra, 0x80000000
                  li           t5, 0x80000000
                  li           s10, 0x51b715f1
                  li           s9, 0x80000000
                  li           a7, 0x80000000
                  li           s5, 0x471d4b83
                  li           s2, 0x28dbd84f
                  li           s7, 0xffffffff
                  addi         t5, s10, -172
                  lui          a7, 323608
                  div          s2, t0, s7
                  mul          s9, s10, s5
                  div          s7, t5, s9
                  lui          t5, 809237
                  mulh         t5, s6, s2
                  add          t0, ra, s2
                  divu         s9, s9, s6
                  div          a7, s9, s5
                  nop
                  nop
                  mul          s9, s9, s9
                  divu         s9, s10, s2
                  auipc        s10, 780728
                  auipc        s7, 398757 #end riscv_int_numeric_corner_stream_21
                  li           t1, 0x80000000 #start riscv_int_numeric_corner_stream_28
                  li           t6, 0xffffffff
                  li           s8, 0x80000000
                  li           a6, 0x76372627
                  li           s11, 0x80000000
                  li           a5, 0x19bce5d0
                  li           s7, 0x80000000
                  li           t5, 0x0
                  li           t2, 0x0
                  li           ra, 0x80000000
                  mulhu        t5, a6, t6
                  mulh         s7, t5, t6
                  mulh         t5, a5, s7
                  addi         a6, s11, -1643
                  sub          s7, t1, t2
                  addi         s7, a5, -1250
                  mul          t6, t6, a5
                  div          t5, a6, s11
                  mulh         t1, a5, s8
                  auipc        a5, 977670
                  mul          t6, ra, ra
                  nop
                  add          ra, a6, t6
                  mulhu        t2, s8, s8
                  auipc        ra, 676429
                  lui          t1, 63380
                  mulh         a5, a6, s11
                  mulhu        s7, t1, a6
                  div          s11, a6, ra
                  divu         s7, ra, t1
                  add          s8, t2, s8
                  lui          s11, 262473
                  mul          t1, t2, s11
                  mulh         t5, t6, s11
                  div          a6, t6, t2
                  remu         a5, s8, s8
                  mulh         s11, a6, t6 #end riscv_int_numeric_corner_stream_28
                  li           s1, 0x956b4e6f #start riscv_int_numeric_corner_stream_9
                  li           a5, 0x0
                  li           s7, 0x80000000
                  li           a1, 0x8f15988f
                  li           a0, 0x7b81b415
                  li           s9, 0x63f59ac3
                  li           t0, 0x0
                  li           a4, 0x5ae19654
                  li           gp, 0x80000000
                  li           tp, 0x80000000
                  lui          a0, 204137
                  mulh         a1, a0, a5
                  nop
                  mul          a4, tp, s9
                  mul          a5, s7, a0
                  addi         gp, a1, 2013
                  auipc        s1, 626191
                  nop
                  rem          a4, gp, a1
                  mulhsu       t0, t0, a1
                  div          gp, a5, s7
                  remu         tp, a0, a4
                  div          a1, s1, s1
                  remu         a1, gp, s7
                  addi         a5, t0, 2045
                  nop
                  addi         a0, tp, 1909 #end riscv_int_numeric_corner_stream_9
                  li           s1, 0x584b25d6 #start riscv_int_numeric_corner_stream_31
                  li           s5, 0x0
                  li           s8, 0xac2cacb3
                  li           s6, 0x0
                  li           s11, 0x87327498
                  li           t3, 0x0
                  li           ra, 0xffffffff
                  li           a7, 0x80000000
                  li           t0, 0xffffffff
                  li           s9, 0x0
                  mulh         t3, t0, s6
                  mulh         s9, t0, s1
                  rem          s5, s6, s8
                  lui          s5, 643394
                  lui          a7, 232526
                  nop
                  mulhsu       t0, s11, ra
                  nop
                  add          s9, ra, t0
                  lui          s9, 209457
                  div          s9, s8, t0
                  nop
                  mulh         s9, t3, s5
                  addi         a7, ra, -1370
                  mulhsu       s6, s6, s8
                  remu         a7, s9, s9
                  mulh         s1, t0, s8
                  divu         s9, s6, t3
                  remu         t0, s5, s9
                  divu         s5, s8, t3
                  divu         ra, s5, t0
                  rem          s6, s5, t3
                  mulhsu       a7, ra, s5
                  nop
                  addi         s11, t3, 228
                  mulhsu       ra, s6, ra
                  addi         s5, s8, 1528
                  addi         s5, s6, 523
                  remu         ra, s1, s1 #end riscv_int_numeric_corner_stream_31
                  srl          a0, a5, s6
                  srai         s6, s4, 16
                  sltu         a6, a4, t3
                  xor          tp, s4, s3
                  c.li         ra, -1
                  remu         s1, gp, t2
                  c.addi       a6, 7
                  mul          s0, a5, zero
                  srli         ra, s6, 23
                  c.li         a4, 7
                  c.andi       a2, 1
                  c.srai       a2, 3
                  auipc        s2, 694220
                  and          zero, s1, a0
                  mulhsu       s9, s1, s0
                  and          s3, s1, zero
                  c.lui        s5, 19
                  or           sp, a5, a4
                  c.lui        a1, 3
                  xori         a5, a5, -1221
                  andi         a0, a0, -1794
                  mulhu        a5, a7, s3
                  addi         s10, s8, -1134
                  c.sub        a2, a1
                  lui          s9, 1048114
                  srai         t2, gp, 5
                  lui          ra, 344795
                  addi         tp, a3, 1029
                  c.addi4spn   a4, sp, 992
                  c.addi       s10, 25
                  sra          a1, a2, a4
                  c.srai       a0, 18
                  c.slli       s9, 17
                  and          t6, a5, tp
                  mulh         s8, a2, s8
                  srli         zero, ra, 6
                  sra          gp, a2, zero
                  c.slli       a6, 29
                  c.lui        s2, 15
                  mulh         a0, zero, s0
                  c.lui        a1, 13
                  slt          s10, s9, s2
                  sll          s2, gp, zero
                  c.add        s3, t6
                  nop
                  c.srli       a0, 12
                  mulhu        s5, s9, a2
                  c.nop
                  div          a5, t2, t2
                  c.sub        s1, s0
                  sra          a5, a5, s6
                  nop
                  c.andi       a5, 6
                  mul          s3, a4, s0
                  remu         t3, t1, s8
                  remu         t2, s9, s7
                  remu         s1, t1, t2
                  c.nop
                  sra          a4, t4, s6
                  slti         a1, t0, -1054
                  div          zero, s3, s4
                  or           a4, s7, t1
                  c.srai       s0, 28
                  slti         zero, s0, 2043
                  c.li         s8, -1
                  nop
                  sll          t1, a7, sp
                  auipc        a7, 327012
                  sltiu        t6, s9, 1650
                  rem          s9, zero, t6
                  c.srai       s0, 24
                  remu         s11, a1, a6
                  srli         a0, t6, 16
                  mulh         t3, s10, sp
                  c.srai       a2, 30
                  c.li         a5, -1
                  c.addi4spn   a2, sp, 784
                  c.nop
                  mulh         sp, s0, t0
                  addi         a2, gp, -896
                  c.add        a5, s6
                  slti         a7, s5, -892
                  c.nop
                  addi         t3, ra, 1570
                  c.add        t2, tp
                  c.and        s1, a3
                  c.lui        a6, 26
                  slti         t5, s1, 1399
                  c.addi       a5, 13
                  sra          a6, gp, zero
                  mulh         s2, a3, a7
                  slli         ra, a0, 6
                  mulhu        s9, a7, a4
                  c.andi       a4, 19
                  srli         a1, zero, 23
                  c.srai       s1, 2
                  c.srli       a2, 6
                  sra          zero, s7, a6
                  c.srai       a0, 14
                  c.addi16sp   sp, -16
                  sll          a6, t5, a7
                  c.andi       s1, -1
                  lui          t6, 156675
                  c.andi       a2, -1
                  c.add        ra, s10
                  c.addi4spn   s0, sp, 624
                  sltu         a6, s10, t5
                  c.lui        a2, 25
                  sll          a4, s4, a4
                  mul          s9, zero, s3
                  c.srai       a4, 5
                  c.or         a2, a5
                  sltiu        a5, a0, -112
                  mulhsu       a0, s1, s2
                  or           gp, s5, s2
                  mulhsu       tp, s0, s0
                  ori          a1, s6, -261
                  xor          s5, t3, s10
                  remu         gp, a7, a3
                  c.srli       a0, 14
                  rem          s3, a7, tp
                  c.nop
                  and          s7, a5, t1
                  c.xor        s1, a4
                  c.nop
                  c.addi4spn   a1, sp, 592
                  c.andi       a1, 3
                  ori          t6, zero, -1036
                  c.xor        a1, a0
                  c.addi       s1, -1
                  addi         ra, s10, -657
                  xor          tp, a6, s3
                  c.addi16sp   sp, 288
                  srl          s11, sp, t6
                  c.nop
                  ori          s2, s3, -604
                  xori         s1, a6, -2031
                  ori          s6, s11, 1668
                  c.andi       s1, -1
                  c.xor        a0, a5
                  rem          a1, t0, a5
                  div          t2, a4, a4
                  c.andi       s1, 12
                  and          t6, t3, gp
                  c.xor        s1, a4
                  add          gp, s0, s1
                  divu         s10, gp, s6
                  ori          t6, a5, -1533
                  ori          t1, s10, 1172
                  c.addi4spn   a0, sp, 192
                  c.xor        a0, a5
                  c.add        s6, t1
                  remu         s0, a5, t4
                  c.andi       a4, -1
                  ori          a6, s2, -1833
                  divu         t1, a7, a0
                  c.srli       s1, 18
                  slt          a0, ra, s11
                  c.srai       a1, 17
                  nop
                  slti         s10, s4, 387
                  srai         a4, t2, 23
                  xori         s9, s8, -531
                  sltu         s5, ra, a1
                  addi         ra, a1, -1730
                  srl          t5, s10, a7
                  c.andi       a5, -1
                  divu         t1, s8, t5
                  mulhu        s0, s5, s9
                  c.sub        a0, s0
                  xori         s3, zero, -376
                  xori         a0, s2, 524
                  div          t2, s4, t4
                  mul          a2, t0, s1
                  mulhu        s5, a1, t0
                  slt          s10, a4, t1
                  c.sub        a2, a0
                  lui          s5, 494177
                  div          s3, a4, ra
                  c.add        t3, a2
                  c.li         t3, 16
                  rem          a4, a6, t0
                  c.add        ra, sp
                  srl          gp, s5, t3
                  srl          s6, s0, t5
                  c.li         s5, -1
                  andi         s3, a5, -178
                  slli         t2, s0, 13
                  and          a5, s11, tp
                  xori         s6, s10, 542
                  c.sub        a0, s1
                  c.or         a4, a4
                  or           t5, a5, s1
                  c.addi4spn   a5, sp, 944
                  c.xor        a4, a2
                  sll          a2, s2, t5
                  c.slli       t0, 25
                  andi         s10, s3, 1632
                  slt          gp, a3, s8
                  srai         s9, a6, 6
                  slt          a2, a0, s7
                  mulh         t0, s4, s10
                  slti         s1, s8, -773
                  sltiu        s10, a7, -1888
                  slt          t0, gp, s3
                  c.nop
                  add          a2, s5, a2
                  sltu         s6, a4, t1
                  c.addi4spn   a5, sp, 640
                  sltu         a4, a0, s4
                  c.addi4spn   s0, sp, 240
                  sra          t5, s6, s10
                  sltiu        s7, a3, -1383
                  c.xor        a4, a0
                  div          a5, a1, t6
                  divu         t5, t4, s7
                  mulh         a0, s1, s11
                  ori          s8, sp, 132
                  c.addi4spn   s1, sp, 304
                  xori         t2, a0, 1027
                  add          s0, a4, t5
                  sltu         a4, s7, tp
                  mulh         a6, s3, t0
                  c.add        t1, s9
                  slt          a7, s0, a4
                  srl          s2, t1, s9
                  c.lui        a0, 23
                  lui          t5, 166264
                  sltiu        t5, s8, -1871
                  c.add        s5, s8
                  c.and        s0, s1
                  slli         s6, t1, 16
                  slti         a6, t1, 938
                  slli         t1, t1, 13
                  ori          a7, a4, -2039
                  c.lui        s2, 2
                  and          a5, s5, a4
                  add          s3, s10, a4
                  mulhsu       s1, t0, s3
                  c.addi16sp   sp, 352
                  c.addi4spn   a1, sp, 1008
                  slti         ra, a7, -722
                  srli         s5, s1, 13
                  mulh         t0, t5, s2
                  c.nop
                  c.or         s1, a0
                  c.andi       a1, -1
                  sltiu        a1, s7, -1377
                  c.xor        a5, a1
                  sltiu        s2, s5, -1384
                  sub          s7, t1, a6
                  divu         s7, s1, t1
                  mulh         t1, ra, sp
                  andi         a6, t1, 1272
                  sltu         t0, t2, a2
                  sra          tp, zero, a0
                  mulhu        s0, s5, a5
                  mul          a4, s2, a3
                  addi         t0, a5, -887
                  auipc        s3, 968881
                  nop
                  c.lui        a6, 7
                  sra          a4, ra, s4
                  srai         a2, ra, 25
                  slli         a7, a7, 16
                  xori         t0, a2, -1858
                  c.slli       a1, 12
                  c.and        a5, a4
                  mulhu        s8, t6, a6
                  c.xor        a1, s0
                  c.srai       s0, 13
                  c.sub        a4, s0
                  sll          sp, a4, t3
                  auipc        a5, 614905
                  c.nop
                  c.nop
                  sltiu        a6, t2, -1298
                  c.xor        a4, s0
                  sub          s8, t2, a2
                  xori         s9, s6, 599
                  c.mv         s0, s7
                  xor          a5, s5, t5
                  sra          zero, t0, s9
                  mulhsu       s2, s4, s1
                  c.addi16sp   sp, -16
                  mulhu        t6, s2, s2
                  srl          s0, a0, s1
                  add          t0, s4, gp
                  xori         sp, a3, -53
                  add          a2, s9, s0
                  rem          t6, s4, t3
                  mul          s5, s7, s9
                  addi         s7, t6, -582
                  ori          a5, sp, 694
                  xor          t5, ra, zero
                  mul          s11, sp, s0
                  c.or         a0, a2
                  auipc        t1, 985466
                  div          a7, s8, s8
                  c.nop
                  xori         s3, s5, -272
                  remu         t0, s3, t3
                  rem          gp, s11, t3
                  div          s8, tp, s11
                  and          t5, s10, sp
                  add          a6, s2, a5
                  c.and        a1, a0
                  c.mv         s7, a2
                  ori          s9, ra, -1367
                  slli         s6, s9, 16
                  c.add        s10, t3
                  mul          t0, t4, s9
                  ori          t1, t1, 1067
                  auipc        s0, 328030
                  c.xor        a5, a4
                  xori         s10, s8, -1549
                  auipc        s8, 298594
                  mulhsu       a6, s1, s4
                  or           s9, s0, a4
                  slli         t3, t5, 3
                  c.slli       a7, 16
                  c.slli       s10, 11
                  ori          ra, t3, -425
                  c.nop
                  mulh         a2, t0, a0
                  srli         s5, a7, 11
                  c.srai       a0, 22
                  rem          s2, t0, s3
                  c.and        s0, s1
                  addi         zero, s7, 821
                  sra          s6, t5, a5
                  andi         a4, t1, -1583
                  c.lui        s5, 16
                  auipc        t6, 617799
                  c.srli       a5, 28
                  lui          s10, 583424
                  mul          s8, s4, s6
                  and          sp, zero, s9
                  nop
                  c.srai       a1, 17
                  c.or         a0, a1
                  mulh         s2, t2, t6
                  c.nop
                  slt          a0, s9, a4
                  add          t0, s8, t3
                  remu         a1, s8, s3
                  lui          a5, 714789
                  c.add        s2, s0
                  ori          ra, t0, 607
                  c.srai       a1, 22
                  and          tp, a3, s5
                  xori         a1, a5, -392
                  c.and        a4, a0
                  ori          t6, t1, -156
                  c.sub        s0, s1
                  xor          s2, t5, s11
                  ori          a7, a4, -1385
                  c.add        gp, t3
                  or           s1, s8, a7
                  srai         sp, a7, 1
                  c.sub        a5, s1
                  and          t2, t5, t0
                  c.addi16sp   sp, -16
                  c.srai       s0, 23
                  remu         a7, t6, s0
                  c.li         a1, -1
                  c.addi16sp   sp, 496
                  c.nop
                  sll          a5, a5, a0
                  sub          s5, s6, s6
                  xor          s7, s6, s0
                  andi         t0, s0, 604
                  add          t3, a0, zero
                  c.lui        a7, 13
                  rem          s5, s10, t1
                  c.andi       a2, -1
                  c.nop
                  andi         a2, t1, 565
                  add          t5, s3, t6
                  sltiu        a4, s3, -1459
                  addi         tp, t0, 1963
                  c.li         a0, 17
                  c.and        a5, a5
                  slli         ra, t5, 27
                  sltiu        s2, s2, 1823
                  addi         ra, t1, 1702
                  c.add        a4, s0
                  c.add        t6, s8
                  c.li         s6, 22
                  xor          ra, a4, t0
                  c.addi4spn   s1, sp, 608
                  srl          s8, s3, s9
                  slti         t1, sp, -1664
                  addi         a5, t3, -635
                  srai         s6, s6, 0
                  c.slli       s9, 22
                  mulh         a0, a2, s6
                  c.addi16sp   sp, -16
                  sll          s11, s9, s7
                  slli         sp, a1, 23
                  c.li         s3, 9
                  c.or         a1, a3
                  add          a2, s0, t5
                  sub          t1, a2, t1
                  c.and        s0, a5
                  remu         t6, tp, a7
                  rem          a7, a2, t0
                  c.addi       s6, -1
                  mulh         a0, a1, s2
                  divu         t0, t3, a6
                  slti         zero, s2, -1063
                  mulhsu       s3, s9, s1
                  c.andi       a4, 29
                  srli         s6, t5, 20
                  auipc        s9, 971443
                  slt          a6, t0, s10
                  addi         t3, s2, -688
                  ori          s5, s9, 1807
                  mulh         a2, a6, t0
                  c.add        t1, a3
                  addi         t3, t1, 2046
                  lui          s2, 902230
                  mulhsu       sp, t5, a0
                  xori         tp, s2, -1930
                  and          s2, t5, a2
                  mulh         s7, s2, t5
                  c.or         a0, s1
                  sub          a7, tp, t0
                  c.andi       a5, -1
                  sub          a4, t4, s11
                  ori          t3, a2, -1344
                  sll          t3, s6, s3
                  add          s11, a2, s0
                  sltiu        t6, a7, 1105
                  slti         s7, s6, -935
                  c.sub        a5, s1
                  or           s7, ra, ra
                  xor          a0, s1, s9
                  c.srli       a5, 23
                  sll          a1, a5, s2
                  c.srai       a4, 25
                  srl          s0, s3, a3
                  slt          s5, s11, s9
                  sltu         a6, s0, a0
                  c.add        a4, a1
                  nop
                  nop
                  rem          s2, s4, s2
                  c.and        a1, a2
                  div          s6, zero, a5
                  sub          s8, t6, a2
                  c.li         gp, -1
                  c.slli       t1, 29
                  c.xor        a5, s1
                  sltu         t6, s5, s6
                  lui          tp, 897970
                  c.li         t2, -1
                  c.or         a0, a3
                  srai         a0, t6, 27
                  sltu         s10, t0, s9
                  mulh         a4, t6, tp
                  c.addi4spn   a5, sp, 944
                  slti         a5, s10, 1009
                  xori         t0, a1, 460
                  c.add        gp, a3
                  or           s9, a0, s7
                  and          s2, t2, a4
                  c.addi4spn   s0, sp, 624
                  c.or         s1, a3
                  c.addi4spn   a0, sp, 208
                  c.addi       s3, 15
                  c.srai       a0, 2
                  c.nop
                  auipc        t2, 445755
                  xori         a4, s3, 1240
                  slti         t3, t3, 1838
                  mulhu        a0, a2, a6
                  and          s8, s6, a1
                  c.andi       a5, -1
                  mulh         a2, s1, s3
                  c.slli       t3, 28
                  c.srai       a0, 9
                  c.srli       s1, 17
                  slli         t2, t2, 1
                  xori         s8, t0, 1009
                  c.slli       s10, 1
                  sub          a2, s4, t6
                  xor          s1, s3, s7
                  c.srai       s1, 9
                  c.li         s0, -1
                  ori          s1, t3, -449
                  slli         s5, t6, 21
                  mulh         s11, t6, t0
                  div          ra, t6, gp
                  c.or         a0, a5
                  c.mv         a7, s1
                  slt          s8, s4, s10
                  c.or         a2, a4
                  c.andi       s1, 10
                  c.lui        s5, 30
                  c.xor        s1, a2
                  xori         s7, a5, -1981
                  c.add        s5, a5
                  slt          t1, s4, a2
                  ori          zero, a3, 486
                  c.li         t3, -1
                  divu         s8, a5, s7
                  mulhu        s9, gp, gp
                  srli         s9, a4, 24
                  srli         t2, t6, 14
                  slt          s0, t0, a4
                  xori         s7, s2, -562
                  div          a5, a2, ra
                  c.li         t2, 11
                  c.srli       a4, 3
                  srli         sp, a1, 30
                  c.slli       a5, 22
                  srai         s3, t5, 14
                  sll          tp, a3, s1
                  sltu         s11, t5, sp
                  slti         s7, t4, -595
                  xori         s10, sp, -1636
                  c.slli       s0, 15
                  srli         sp, t6, 30
                  div          s1, s11, s2
                  rem          s0, ra, t3
                  srl          s7, a3, gp
                  nop
                  mulhsu       s11, s10, a6
                  c.li         ra, 15
                  c.addi4spn   a4, sp, 896
                  c.mv         s0, a1
                  c.srli       a2, 3
                  c.and        s1, a2
                  c.addi       s11, 27
                  ori          t3, a6, -1836
                  divu         a4, a1, s7
                  rem          tp, t0, tp
                  c.srai       a1, 7
                  c.andi       a5, 8
                  mul          a4, s11, a6
                  mulhsu       s3, t6, s3
                  ori          a6, t3, 1145
                  c.addi4spn   a2, sp, 80
                  c.andi       a1, -1
                  c.andi       a5, -1
                  sltiu        s6, s4, 1179
                  mulhu        tp, t4, a0
                  c.addi16sp   sp, 384
                  srli         t2, s11, 27
                  xori         s8, s3, 1401
                  remu         a7, s3, s3
                  mulhsu       s0, gp, a6
                  slti         a0, a4, -1188
                  ori          t1, t0, 1302
                  c.lui        a0, 10
                  c.andi       a5, 6
                  c.lui        tp, 25
                  c.and        a0, a5
                  xori         s1, s3, -713
                  xori         a7, t3, -588
                  sub          tp, tp, a3
                  slli         a1, s7, 4
                  rem          s10, a6, t4
                  rem          a5, a6, t5
                  mulhsu       a7, a1, s3
                  sltu         a0, gp, t4
                  c.addi4spn   a1, sp, 784
                  remu         s0, a5, s6
                  sll          ra, tp, t2
                  slli         tp, s11, 2
                  slti         s1, a4, -1247
                  remu         tp, sp, s9
                  c.li         t5, -1
                  mulhu        t5, a4, s1
                  c.xor        a1, a3
                  sub          a4, s4, a1
                  or           tp, a6, a6
                  c.or         a4, a1
                  sltiu        a0, zero, -1299
                  sub          a1, a0, gp
                  ori          s5, t3, -1358
                  div          a5, t0, tp
                  sltu         t5, s3, a2
                  addi         tp, s6, -265
                  slt          s6, a0, a4
                  c.nop
                  c.xor        s0, a3
                  c.addi16sp   sp, 416
                  c.addi16sp   sp, 496
                  c.li         a2, -1
                  and          s11, s3, a5
                  c.addi16sp   sp, -16
                  nop
                  remu         a4, s11, t1
                  sub          tp, ra, s4
                  c.or         a4, a1
                  mulhu        s10, s6, tp
                  nop
                  c.sub        s0, a5
                  remu         s10, s10, s10
                  divu         s6, s6, tp
                  c.or         s0, a4
                  ori          s2, zero, -628
                  srai         t2, t4, 11
                  xor          a2, a1, s7
                  slt          ra, s10, a6
                  srai         t3, s3, 16
                  sltiu        t5, zero, -1100
                  slti         t2, t2, -1341
                  sra          s1, ra, a7
                  and          ra, a3, s3
                  srai         a0, s0, 2
                  slti         t1, gp, -1705
                  and          a7, a2, t1
                  c.slli       t3, 15
                  mulhsu       s9, t4, a3
                  mul          s10, t6, t1
                  nop
                  c.slli       s0, 27
                  c.addi4spn   a5, sp, 928
                  c.add        a0, gp
                  srl          a2, a6, s2
                  auipc        gp, 303528
                  c.nop
                  remu         t0, s5, s3
                  lui          s3, 697597
                  divu         s5, t0, t4
                  remu         a7, s2, s10
                  c.addi16sp   sp, -16
                  add          s10, t0, a2
                  c.lui        a4, 12
                  c.and        a2, a2
                  c.li         s5, 8
                  c.lui        t1, 20
                  sltiu        a4, s7, -1026
                  c.sub        a1, a2
                  slt          zero, sp, a5
                  c.srli       a1, 29
                  and          a0, s3, a4
                  divu         t2, s3, a2
                  c.andi       a0, 7
                  sltiu        t1, t3, -1833
                  addi         s8, t4, 1547
                  srai         a6, a3, 27
                  c.or         a0, a5
                  c.and        a5, a0
                  c.srai       s0, 9
                  xori         a2, s10, -1445
                  c.or         s0, s0
                  sub          t2, s6, a3
                  sub          t0, s1, sp
                  andi         gp, a1, -871
                  c.srli       s1, 1
                  andi         t3, a3, -1693
                  sltu         t5, a4, s3
                  c.add        s1, ra
                  srl          s5, a1, a4
                  nop
                  c.or         a4, s0
                  c.srai       a0, 31
                  sltiu        s7, sp, -606
                  addi         s10, a3, 803
                  c.or         s0, a3
                  c.add        s8, s8
                  c.mv         a5, t3
                  add          s0, a2, s5
                  addi         t3, t0, 1215
                  c.or         a0, a4
                  slti         tp, a4, 1029
                  mulhsu       s2, t1, s1
                  mulhsu       s5, s2, a5
                  c.add        t6, s11
                  add          s2, s5, s8
                  rem          t3, a7, s6
                  c.mv         a4, s2
                  srai         s7, zero, 30
                  add          zero, s11, t1
                  c.lui        gp, 4
                  slli         a0, tp, 24
                  div          s6, a2, t0
                  slt          t2, a0, s3
                  xori         s0, sp, -1145
                  mul          a7, a4, t0
                  mulh         a6, zero, s4
                  slti         t1, s3, 870
                  sub          a1, a1, s8
                  sub          s3, ra, s11
                  xori         s6, s2, 1292
                  sltu         s5, s8, a1
                  c.addi16sp   sp, 432
                  xor          s1, a3, ra
                  xori         gp, s4, -395
                  c.add        t2, a1
                  lui          t0, 385606
                  sll          a5, a5, a1
                  mulhsu       s1, t2, s7
                  slti         s2, t2, 1715
                  sll          t1, t6, a4
                  mul          a4, t2, s11
                  and          s10, a1, t2
                  c.sub        a1, a1
                  c.lui        t2, 24
                  c.addi       s10, -1
                  c.lui        ra, 1
                  andi         a0, a0, 1036
                  c.slli       s0, 7
                  remu         tp, a7, zero
                  or           s1, s1, s0
                  c.addi16sp   sp, -16
                  srai         ra, s10, 21
                  sra          s5, s6, s2
                  mulhsu       a0, a4, t1
                  c.andi       s0, 25
                  sra          a5, s9, a6
                  srli         gp, s3, 2
                  c.mv         t0, a0
                  xori         t1, t4, 1394
                  sub          s3, t0, a3
                  auipc        t6, 265432
                  c.li         a4, 12
                  c.addi4spn   s1, sp, 480
                  c.addi       s8, 26
                  slti         tp, a7, -1126
                  c.srai       a2, 18
                  mul          s2, t3, s4
                  c.li         s3, -1
                  or           t5, s5, s9
                  and          s10, a3, s1
                  xor          s2, s8, s3
                  sra          s11, a2, t6
                  andi         t5, t2, 1154
                  mul          a6, sp, tp
                  sll          t1, zero, zero
                  add          t6, t6, t2
                  c.lui        a6, 14
                  li           s1, 0xffffffff #start riscv_int_numeric_corner_stream_23
                  li           s10, 0x0
                  li           a7, 0x0
                  li           s3, 0xffffffff
                  li           s6, 0x80000000
                  li           s5, 0x0
                  li           s11, 0xffffffff
                  li           a2, 0xffffffff
                  li           t0, 0x9365fcae
                  li           s7, 0xffffffff
                  div          s3, s11, s7
                  auipc        s5, 238538
                  divu         a2, s11, s3
                  divu         a2, s7, s6
                  div          s7, s1, s6
                  auipc        s5, 574848
                  add          t0, s10, a2
                  sub          s10, s5, s7
                  sub          a7, s7, s6
                  sub          s6, s7, s11
                  sub          s5, a7, s5
                  auipc        s1, 267343
                  mul          s7, s7, s10
                  sub          s5, s10, s1
                  lui          t0, 949868
                  lui          s10, 162605
                  mulh         s1, s7, s5 #end riscv_int_numeric_corner_stream_23
                  sll          a7, a3, tp
                  slti         a2, a5, -1511
                  sra          tp, s10, s10
                  sltu         a1, a5, s1
                  c.or         a4, s0
                  addi         s5, s9, 1977
                  auipc        sp, 300133
                  mulhu        s10, s11, s1
                  c.lui        a5, 17
                  or           t5, a1, t6
                  andi         zero, t2, -1604
                  srai         ra, t2, 16
                  c.and        a2, s1
                  c.srli       a5, 19
                  srai         s3, t1, 0
                  xori         zero, t2, 1438
                  xor          a0, s8, a5
                  divu         t0, a7, t2
                  xor          a1, t6, t6
                  divu         t2, s3, a1
                  xori         a1, t2, -413
                  c.addi4spn   a4, sp, 576
                  mul          s8, ra, ra
                  c.li         s1, -1
                  or           ra, t4, a6
                  c.or         a1, a5
                  mulhsu       tp, a2, t0
                  lui          t5, 68698
                  xori         s3, t5, 1644
                  slti         s6, s7, -1665
                  nop
                  add          t3, sp, s0
                  and          s7, s7, s0
                  ori          a5, t2, 1234
                  sra          t3, a3, a6
                  srli         s1, s4, 9
                  slt          s7, s0, zero
                  mulh         s9, a4, a3
                  slti         s5, a1, -573
                  c.mv         s2, t6
                  divu         s10, s0, s9
                  sltu         t0, t2, t4
                  slt          gp, a2, a6
                  ori          gp, a4, 1233
                  mulhu        s10, t4, a0
                  c.addi16sp   sp, 256
                  c.slli       a1, 31
                  slt          t5, a5, s1
                  c.add        sp, t3
                  mulh         t2, s7, sp
                  auipc        tp, 329730
                  rem          a7, gp, s8
                  c.xor        a4, s0
                  lui          t1, 358464
                  and          s0, s3, s11
                  mul          s9, gp, a3
                  divu         s5, a4, a0
                  c.xor        a1, s1
                  c.or         s0, a5
                  c.and        a1, a1
                  c.addi16sp   sp, 416
                  c.nop
                  c.sub        a5, s0
                  c.mv         s2, a3
                  auipc        a2, 657935
                  srli         ra, s1, 3
                  c.lui        t3, 10
                  c.add        s1, t2
                  c.andi       a0, -1
                  mul          a1, a5, t0
                  c.srli       a0, 26
                  auipc        a4, 697593
                  andi         t1, s10, 525
                  sltu         s1, s9, t0
                  c.srli       a4, 10
                  c.addi       ra, 20
                  xori         t3, s7, 861
                  remu         t0, a6, s4
                  addi         t1, s11, -191
                  and          t0, s0, sp
                  mulhu        s9, s4, t6
                  slli         tp, a0, 31
                  nop
                  c.srli       a1, 31
                  mulh         s0, t4, s11
                  sra          t5, t3, t1
                  slli         a5, s7, 27
                  c.addi16sp   sp, -16
                  andi         s2, s5, 1317
                  srai         s1, a4, 18
                  slli         t5, s9, 15
                  c.add        s11, s7
                  addi         a7, a4, 68
                  ori          t1, s3, 1677
                  ori          a5, s7, 86
                  ori          s0, zero, -126
                  slt          s1, s5, zero
                  and          s7, tp, s9
                  add          ra, s3, sp
                  auipc        t0, 792595
                  c.srai       s1, 6
                  and          t6, s4, t0
                  mulhsu       t0, s2, a4
                  sltiu        t5, t3, 764
                  c.or         a4, a1
                  slt          t1, s5, t0
                  mulhu        a0, t6, s1
                  c.sub        a5, s1
                  sltiu        a1, t4, 1709
                  srai         a1, s10, 19
                  and          t5, a3, sp
                  srl          a2, s6, t0
                  c.addi16sp   sp, -16
                  ori          s1, a1, 24
                  slti         t6, t3, 921
                  sltiu        t3, s10, -317
                  sra          s11, t3, t1
                  srai         s10, zero, 20
                  and          tp, s1, s1
                  auipc        t6, 997385
                  c.andi       a2, -1
                  srai         a1, t0, 10
                  xori         tp, tp, 1469
                  divu         zero, t2, t1
                  c.addi       t3, -1
                  c.mv         sp, a4
                  rem          t2, s8, s5
                  sltu         s2, ra, a2
                  or           s1, ra, s11
                  xor          s1, a4, a6
                  xor          s0, a2, t2
                  c.addi16sp   sp, -16
                  sltiu        s11, s9, 178
                  xori         t0, s11, -1673
                  mulh         a1, s5, t5
                  sub          s3, tp, t3
                  sub          a5, t2, s3
                  lui          s7, 309167
                  sltiu        s7, a5, -1609
                  slli         s1, s7, 9
                  srai         a7, t0, 15
                  c.add        s7, tp
                  sltu         s11, t5, t1
                  c.addi4spn   s0, sp, 192
                  div          s7, s1, ra
                  mulhu        a7, s3, t5
                  sub          s9, s5, s4
                  c.slli       s3, 29
                  srli         a4, s2, 18
                  srai         s1, s10, 22
                  mul          a4, t5, a7
                  srli         s2, a1, 25
                  c.slli       tp, 11
                  sltiu        s8, t5, -1524
                  c.li         ra, 0
                  c.and        a5, a4
                  c.addi4spn   s0, sp, 384
                  c.srli       a5, 10
                  sll          a1, a6, a5
                  sltu         t1, t1, a2
                  c.srai       a4, 26
                  c.add        a6, tp
                  mul          s0, s5, t0
                  mul          t6, s9, s2
                  c.sub        a1, a1
                  and          t6, t0, sp
                  c.lui        s7, 17
                  srli         s7, s11, 7
                  slt          t1, s10, s4
                  mul          t6, sp, s4
                  addi         a0, s7, -1842
                  c.andi       s1, 6
                  sll          s10, s8, s1
                  ori          a2, s0, 1580
                  nop
                  mulh         a4, tp, s10
                  lui          a7, 560614
                  andi         a0, s5, 814
                  c.xor        a4, a1
                  andi         t2, s7, -423
                  mul          t2, t4, a0
                  c.add        s0, sp
                  or           t3, a6, s4
                  srli         s10, a6, 15
                  slt          t5, a7, s10
                  or           s7, a5, t4
                  c.slli       ra, 17
                  slt          t3, s5, t5
                  srai         s3, a3, 9
                  auipc        t5, 959644
                  c.xor        a4, a2
                  srli         s2, s9, 0
                  andi         t0, ra, 1284
                  divu         s11, a4, t1
                  auipc        s10, 570344
                  auipc        t6, 718660
                  sub          s6, a7, a2
                  sub          s11, t2, a4
                  divu         s10, s8, tp
                  sub          s0, t4, s1
                  remu         zero, t0, a4
                  div          a6, t3, a3
                  or           t2, s4, a2
                  sltiu        a5, t5, 1128
                  sra          s3, t3, s4
                  c.and        a4, s0
                  c.slli       t6, 13
                  remu         a7, s6, t2
                  slli         t5, s5, 22
                  srai         t6, s9, 31
                  slli         s3, a1, 7
                  sra          s3, s5, a6
                  rem          ra, a7, sp
                  div          a7, a2, t6
                  or           a1, sp, a5
                  sll          gp, tp, s0
                  lui          zero, 115158
                  c.lui        s5, 7
                  srai         s10, s1, 21
                  c.li         s5, 8
                  sra          t0, s4, s8
                  or           tp, s8, a7
                  c.addi4spn   a4, sp, 400
                  sll          a6, a1, zero
                  sll          t2, t4, a4
                  lui          t5, 691306
                  c.addi4spn   a5, sp, 272
                  andi         zero, sp, -1746
                  c.addi4spn   a0, sp, 928
                  slli         s10, s9, 24
                  slli         a7, s4, 11
                  c.srli       a2, 31
                  mulh         t2, a3, gp
                  sub          t5, s11, t6
                  mulh         t1, t5, gp
                  slt          a7, s0, s6
                  c.addi       s10, 26
                  srl          t1, t2, s4
                  rem          a6, sp, t3
                  xor          gp, gp, t1
                  slli         t1, s5, 15
                  srai         a0, t4, 15
                  c.or         a5, a1
                  c.xor        a4, a4
                  c.slli       t0, 29
                  c.sub        a2, a0
                  andi         s11, sp, 563
                  lui          t0, 409076
                  mulhu        a1, zero, s4
                  c.srai       a5, 23
                  nop
                  c.add        s3, s4
                  mul          s2, a3, s7
                  c.and        a2, s1
                  sra          a1, zero, gp
                  srli         s5, s0, 4
                  sltu         t5, a2, t6
                  c.sub        a5, s0
                  andi         t2, zero, -1902
                  c.slli       t5, 8
                  remu         ra, t4, tp
                  xori         t2, zero, 700
                  auipc        t5, 923969
                  c.add        a1, t1
                  divu         s7, gp, t6
                  c.or         s0, a3
                  div          s2, a6, s8
                  mulh         a0, s7, t1
                  c.andi       s1, -1
                  c.addi       s8, 19
                  sub          sp, a5, s0
                  c.add        s5, s2
                  rem          t6, s0, ra
                  divu         tp, a6, t0
                  slt          a2, s6, s9
                  c.srli       s0, 19
                  slti         t2, t5, -1982
                  addi         a2, s8, -1751
                  xor          a4, s1, a6
                  c.add        a6, s2
                  c.nop
                  slli         s1, s7, 23
                  add          s2, s3, zero
                  and          a4, zero, t1
                  c.lui        ra, 26
                  c.srai       a0, 5
                  nop
                  c.addi16sp   sp, 192
                  c.or         a2, a3
                  nop
                  mulh         s11, a3, s6
                  lui          s8, 362572
                  nop
                  srai         a0, a3, 12
                  c.srai       a4, 18
                  c.or         s1, a0
                  remu         s7, sp, t3
                  sltu         s2, a4, s3
                  andi         a6, a2, -918
                  sra          s3, gp, s8
                  c.xor        a5, s0
                  c.addi       s8, 2
                  rem          ra, a1, gp
                  c.add        ra, t5
                  sub          s10, t3, tp
                  lui          s0, 135542
                  c.addi       s2, -1
                  lui          a1, 1023669
                  c.li         t5, -1
                  c.addi       s9, 30
                  c.nop
                  c.slli       ra, 29
                  srai         s3, s7, 18
                  c.srai       a1, 26
                  div          a7, t4, s7
                  c.andi       s1, 4
                  c.nop
                  c.slli       a2, 23
                  sltiu        t0, s2, 830
                  c.sub        a2, s0
                  andi         s7, s6, 597
                  c.lui        s0, 15
                  slti         s9, t1, -813
                  mul          t2, zero, a7
                  and          a2, s8, zero
                  mulhu        a2, s9, s4
                  nop
                  c.addi16sp   sp, 368
                  xor          sp, gp, s7
                  rem          t2, s1, s10
                  slli         a6, a1, 14
                  auipc        s3, 353697
                  c.addi4spn   a5, sp, 944
                  sra          ra, sp, a2
                  c.mv         a0, s7
                  c.andi       s1, -1
                  mulh         s9, t1, a0
                  c.andi       a2, -1
                  sub          a1, s7, s7
                  add          a2, s2, s2
                  sltiu        ra, t5, 542
                  sltu         a5, t0, a6
                  c.li         a7, -1
                  and          s1, a6, s0
                  mulh         a0, s11, s10
                  div          t0, s5, ra
                  sub          s10, s1, s10
                  sra          t0, a5, zero
                  xori         s3, s3, -595
                  nop
                  xori         a5, s11, -1410
                  c.mv         a5, t5
                  sltiu        t6, ra, 1150
                  c.srai       s1, 1
                  c.li         s5, -1
                  c.xor        s1, a1
                  c.addi4spn   a2, sp, 624
                  slt          a4, a1, t5
                  mulhu        t1, tp, s9
                  c.or         a1, a5
                  c.add        a7, a5
                  srli         s1, a4, 12
                  div          a6, s4, a2
                  nop
                  slt          s10, s11, s5
                  c.nop
                  div          sp, t1, zero
                  divu         t5, a3, t3
                  add          s0, s8, s7
                  rem          s2, a0, s5
                  srl          s6, zero, a6
                  rem          s2, sp, s11
                  sltiu        a6, a4, -492
                  auipc        sp, 514709
                  c.addi4spn   a4, sp, 528
                  c.slli       ra, 21
                  c.slli       s9, 6
                  c.srli       a0, 21
                  lui          zero, 373283
                  nop
                  c.srli       s0, 17
                  mul          a0, a4, a6
                  sltu         zero, a1, s0
                  nop
                  andi         s0, t6, -1100
                  c.mv         a5, t6
                  andi         ra, t5, -1265
                  sltiu        a4, ra, -817
                  c.andi       s0, 5
                  xori         ra, a7, -13
                  c.and        a4, a4
                  div          ra, s2, s0
                  c.nop
                  sub          a0, tp, s10
                  sll          gp, a0, a1
                  and          a0, a6, t3
                  sra          t5, a7, s2
                  c.or         a4, s0
                  xori         s6, s3, -1133
                  div          a0, a5, s7
                  c.xor        s0, a3
                  sub          t2, a0, t1
                  add          s5, s7, s4
                  c.lui        s5, 23
                  remu         tp, t0, s0
                  c.addi16sp   sp, -16
                  c.sub        a5, a3
                  c.or         a5, a2
                  or           a2, t3, s11
                  rem          s8, s8, s0
                  mul          t1, t1, t6
                  li           t1, 0xd0ec793d #start riscv_int_numeric_corner_stream_38
                  li           a4, 0x80000000
                  li           t5, 0x19697562
                  li           s10, 0x47a30ec0
                  li           s2, 0x80000000
                  li           s7, 0x3a390836
                  li           t0, 0x9f06c47e
                  li           t2, 0xffffffff
                  li           a6, 0x80000000
                  li           a1, 0xffffffff
                  rem          t2, t1, s7
                  lui          s10, 64780
                  divu         a4, a1, a6
                  div          t5, t5, t1
                  lui          s2, 199169
                  mul          t1, t2, t2
                  div          s2, t0, s10
                  rem          t1, t5, t1
                  addi         s7, t1, -300
                  mulhu        a6, a4, a6
                  divu         t2, t2, a1
                  div          t0, t1, a6
                  mulh         a1, t2, t2
                  nop
                  lui          s2, 599568
                  auipc        t0, 189782
                  addi         a4, s2, -497
                  mul          s7, s10, s2 #end riscv_int_numeric_corner_stream_38
                  c.addi       s9, -1
                  divu         s3, s6, s0
                  srli         s8, s7, 25
                  slt          t1, a7, s3
                  addi         s8, a1, 1191
                  and          s2, s3, t0
                  xori         a0, tp, -619
                  divu         t0, s5, s5
                  slt          s10, a2, t1
                  srl          t1, s4, t6
                  slli         s3, gp, 26
                  xor          s11, s10, a6
                  sltu         a7, a5, t6
                  c.addi16sp   sp, 480
                  sltiu        t0, a2, -1801
                  slti         a5, s8, -1629
                  mulhsu       zero, ra, a5
                  srai         a6, tp, 23
                  c.li         t6, 29
                  c.xor        s0, a4
                  c.xor        s0, a3
                  rem          s2, t3, s5
                  ori          s3, s7, 20
                  sltu         a5, t5, t1
                  auipc        s2, 602584
                  remu         s8, s11, s4
                  srl          a1, s3, t4
                  add          gp, a1, a6
                  mulhsu       a2, t2, s8
                  remu         ra, a4, s4
                  c.add        s2, t5
                  xori         a4, tp, -1719
                  sltiu        s10, t5, 880
                  c.slli       s2, 8
                  div          a7, s1, s0
                  c.addi4spn   a0, sp, 800
                  c.lui        s7, 25
                  remu         s0, t2, ra
                  c.slli       ra, 5
                  c.and        a2, a0
                  c.srai       a5, 2
                  c.srai       a0, 30
                  mul          a4, t4, t4
                  c.slli       a4, 27
                  c.lui        t6, 1
                  c.mv         s3, s6
                  divu         a4, a5, a7
                  sltu         a4, t1, a7
                  or           a6, s4, s2
                  sll          a2, tp, gp
                  remu         t1, s4, a2
                  c.addi16sp   sp, -16
                  c.nop
                  add          t6, gp, a2
                  and          s9, s10, zero
                  c.addi4spn   a0, sp, 800
                  andi         zero, a2, 1498
                  slti         s1, s11, -1813
                  srl          a7, a7, t3
                  auipc        zero, 656651
                  sltiu        sp, s1, 510
                  andi         t1, s10, -354
                  mulhsu       s9, sp, s0
                  c.xor        a4, s1
                  c.addi       s8, 18
                  mul          a2, t5, s3
                  mulhu        zero, s2, t2
                  c.mv         t1, a7
                  c.and        a2, a4
                  c.lui        a5, 1
                  c.addi4spn   s0, sp, 576
                  slli         tp, a7, 18
                  slt          s5, t0, tp
                  xori         s8, a7, 1037
                  and          s1, s4, s6
                  add          s10, s5, a6
                  c.mv         s6, a6
                  slt          tp, a6, s6
                  sltiu        t3, s4, 555
                  sub          gp, s3, ra
                  c.or         s0, a1
                  mulh         s1, s10, t6
                  mulhu        t5, a3, zero
                  c.addi4spn   a5, sp, 144
                  sltiu        a6, gp, -346
                  c.srai       a2, 3
                  rem          s6, s7, a5
                  sub          t3, t5, t0
                  c.or         s0, a3
                  c.li         a1, 9
                  c.slli       sp, 6
                  mulh         s11, s2, s8
                  rem          t0, tp, s2
                  c.and        a0, a1
                  c.addi       sp, -1
                  c.slli       t3, 3
                  andi         a7, t0, -1201
                  c.addi4spn   a0, sp, 848
                  mulh         sp, a7, sp
                  c.lui        t3, 15
                  and          a0, s6, a3
                  mulhu        t0, s4, s9
                  c.nop
                  srai         a5, s10, 8
                  c.lui        a7, 15
                  srl          a6, a3, sp
                  c.or         a0, a4
                  div          s8, a5, a2
                  mulhsu       a0, s10, s0
                  divu         a1, s6, a3
                  remu         s2, s6, a2
                  or           s6, t3, t6
                  ori          a7, a1, 523
                  lui          s1, 130014
                  sltu         zero, s9, t4
                  c.xor        a4, a4
                  c.addi       t1, 5
                  srl          s0, gp, s11
                  c.and        a5, s1
                  remu         s11, s8, a7
                  c.or         a4, s0
                  srai         a5, sp, 4
                  xori         s0, s3, 36
                  mulhu        s6, t3, s1
                  div          a4, t6, a1
                  xori         a6, sp, 640
                  or           s0, sp, s5
                  divu         s9, s8, t0
                  and          zero, a4, t6
                  and          ra, s6, a5
                  slli         s10, t5, 13
                  c.or         a4, s1
                  mulhsu       t6, gp, s2
                  slli         s10, s4, 22
                  and          sp, s1, s11
                  c.mv         t6, t3
                  c.srli       s0, 31
                  mulhsu       s7, s1, s9
                  or           t3, zero, a0
                  sub          zero, a6, sp
                  c.lui        a1, 25
                  slti         s10, a5, 2033
                  div          t5, a7, a0
                  divu         tp, s0, a0
                  sll          ra, t2, s3
                  c.and        a2, a4
                  and          tp, t0, s0
                  mulhu        s11, s3, s3
                  c.nop
                  xor          s9, s3, t5
                  c.xor        a0, a4
                  and          s6, a1, gp
                  sltiu        t2, t5, 592
                  lui          a4, 363817
                  c.add        t2, tp
                  c.lui        a5, 24
                  c.lui        s11, 3
                  or           a0, s11, tp
                  srl          t0, s11, a0
                  c.addi4spn   a0, sp, 352
                  c.xor        a5, a1
                  c.lui        s8, 13
                  c.addi4spn   a1, sp, 384
                  srli         s3, t6, 0
                  nop
                  mulhu        s1, s2, s0
                  sltiu        ra, t1, -626
                  c.nop
                  slti         a0, t0, -402
                  c.srli       a1, 18
                  sll          s5, t2, s3
                  mul          a2, s0, a1
                  srai         a2, s1, 5
                  rem          a2, a0, s2
                  xor          s3, t5, a6
                  sra          s7, ra, a0
                  c.addi16sp   sp, -16
                  sra          a2, s2, t5
                  nop
                  or           t5, s1, t2
                  c.addi       s5, 3
                  div          s5, s3, s6
                  divu         t0, s2, t3
                  sltiu        s1, s7, -620
                  ori          s3, t0, 573
                  sra          t2, a5, a6
                  sltu         ra, t4, t3
                  c.srli       s0, 9
                  auipc        s0, 17813
                  c.li         s7, -1
                  andi         s9, a6, -1795
                  ori          s5, s11, -740
                  srli         t1, s10, 25
                  andi         s7, a3, -1474
                  add          s0, tp, a7
                  sll          gp, s6, s6
                  c.addi4spn   a0, sp, 272
                  slt          tp, t6, zero
                  or           t6, a0, s2
                  c.addi       s11, 29
                  xori         tp, a2, -169
                  remu         tp, t4, s10
                  remu         s9, s7, t2
                  c.lui        a1, 11
                  c.addi16sp   sp, 480
                  sra          t5, t0, t4
                  c.xor        s0, a1
                  c.add        a4, t2
                  c.lui        s9, 21
                  c.addi16sp   sp, -16
                  and          zero, s1, s7
                  mul          t1, gp, sp
                  slli         s11, s2, 10
                  srli         t1, tp, 4
                  sra          a6, a1, s3
                  c.addi4spn   a4, sp, 720
                  mul          s3, ra, s4
                  c.srli       s0, 8
                  xor          gp, t4, s3
                  c.or         a5, a2
                  remu         t5, s2, a4
                  auipc        ra, 624189
                  c.lui        s1, 27
                  c.li         s3, 0
                  c.srai       a1, 31
                  mulhsu       t6, t6, s3
                  nop
                  mulhu        s1, a4, s6
                  c.andi       a4, 23
                  c.or         a5, a2
                  xori         s1, t3, 1030
                  or           a4, s5, s10
                  mulhu        t1, t0, t2
                  c.li         t0, -1
                  and          s10, tp, s4
                  c.sub        s1, s0
                  srai         t2, s6, 14
                  srli         gp, a7, 29
                  srai         s2, a2, 3
                  divu         s0, t2, s11
                  c.li         a4, 5
                  c.addi16sp   sp, 496
                  mulhsu       t0, zero, t0
                  c.lui        s8, 30
                  sltu         s0, s8, gp
                  c.srai       s0, 8
                  ori          s11, s0, -612
                  auipc        s0, 584755
                  c.slli       s10, 18
                  lui          s3, 827775
                  srli         t2, t4, 27
                  sub          ra, t2, a3
                  slt          s7, a7, a1
                  c.srli       a1, 26
                  sra          s0, s11, s0
                  c.or         a4, s1
                  c.andi       s0, 16
                  or           s9, s3, t4
                  rem          a2, a2, t2
                  slt          a5, a0, t4
                  sltiu        tp, s1, 952
                  slt          a7, s7, a3
                  mulhsu       t5, s1, t4
                  rem          s11, s6, t4
                  sub          s5, a7, s11
                  c.sub        s1, a2
                  mulh         s0, s8, s5
                  mulh         s5, s10, s5
                  auipc        t6, 647155
                  c.and        a5, a3
                  ori          t2, zero, -4
                  auipc        s7, 798017
                  sll          a6, s0, s1
                  c.addi16sp   sp, -16
                  srai         a6, a1, 6
                  mulh         s6, a0, s7
                  xor          gp, t5, a4
                  div          s9, s8, s8
                  c.or         a4, a2
                  c.li         s2, -1
                  c.or         a0, a3
                  or           t1, ra, t6
                  sll          a0, s7, s9
                  c.addi4spn   s0, sp, 880
                  srl          a0, a7, s9
                  nop
                  xori         a6, s6, 1680
                  c.li         s9, 19
                  xori         sp, tp, -1063
                  c.nop
                  nop
                  c.xor        s1, s0
                  c.andi       a4, -1
                  srl          t3, a0, t3
                  add          sp, t2, t2
                  c.addi4spn   a2, sp, 720
                  srai         s0, s8, 6
                  add          s2, s0, zero
                  divu         gp, t0, t2
                  srli         t2, a3, 28
                  c.addi16sp   sp, -16
                  srli         t3, s9, 24
                  srai         s5, s1, 15
                  srli         t6, a7, 17
                  slli         t5, t4, 14
                  c.and        a5, s0
                  mulhsu       gp, s9, t5
                  c.andi       s1, 29
                  sll          t2, t4, t2
                  sra          a4, t0, t4
                  andi         t2, t6, -1625
                  c.or         s1, a1
                  mulhsu       s10, s3, t1
                  slli         s8, t3, 0
                  c.xor        s1, a5
                  slt          s5, t2, a5
                  auipc        a7, 278753
                  addi         s6, a4, -1431
                  add          sp, sp, s2
                  c.addi4spn   a4, sp, 656
                  xor          t0, a4, s5
                  sub          t3, a1, t4
                  xori         zero, a6, -1461
                  c.addi16sp   sp, -16
                  auipc        t2, 79079
                  auipc        a4, 711970
                  mul          ra, s11, t5
                  sltiu        t0, t6, 683
                  add          s5, s10, s10
                  mulhsu       t0, gp, t2
                  c.nop
                  c.or         a4, a0
                  c.slli       s8, 13
                  mulhu        zero, s3, a0
                  c.addi       t3, -1
                  c.andi       a2, 5
                  div          s11, s8, a4
                  c.andi       s1, -1
                  slli         s11, s2, 0
                  c.mv         a6, t1
                  c.sub        s0, a3
                  c.xor        a2, a1
                  c.li         t3, 6
                  mulh         s7, s9, t3
                  c.li         t5, -1
                  sub          a1, a3, a5
                  rem          t3, a2, s10
                  c.andi       a0, -1
                  c.sub        s1, s1
                  divu         s7, t4, sp
                  c.and        a5, s0
                  c.li         t1, 19
                  div          a4, t5, s4
                  srai         a4, zero, 9
                  c.sub        a5, a1
                  mulhu        tp, sp, a0
                  xor          a6, tp, sp
                  add          s6, sp, s7
                  sltu         s2, a2, gp
                  sub          a6, s9, s7
                  add          s2, t5, a0
                  mulhu        t6, a3, a7
                  sltu         t1, s10, t4
                  c.li         a1, -1
                  c.xor        s1, s1
                  c.and        a0, a4
                  andi         zero, a4, 1277
                  sltiu        s10, s1, -1285
                  xori         sp, t0, -1538
                  mulh         s11, a6, s10
                  nop
                  addi         zero, s10, 1049
                  remu         s1, a3, a5
                  c.xor        a4, s0
                  c.addi16sp   sp, -16
                  remu         s11, s8, s10
                  c.addi4spn   a0, sp, 112
                  xori         a4, t3, -803
                  sub          s0, s5, t0
                  remu         a7, t6, sp
                  c.nop
                  slli         s5, s8, 19
                  mulhu        a4, s10, t6
                  sltu         sp, t2, s10
                  mulhu        t2, t3, t1
                  c.add        t6, gp
                  auipc        a7, 72660
                  or           t0, s4, a6
                  ori          ra, t2, -1141
                  rem          s1, s7, t6
                  srai         t0, zero, 23
                  c.xor        a0, a4
                  or           a0, s7, sp
                  c.nop
                  sll          a1, s8, t6
                  addi         s5, a4, -944
                  or           s1, t4, s11
                  c.or         a5, a1
                  sltu         t2, t0, s7
                  andi         a2, s2, 1247
                  sll          s5, s8, a0
                  mul          t1, s3, ra
                  div          a0, a5, s3
                  slti         ra, s3, -12
                  c.and        a2, a2
                  xori         s10, a2, 1008
                  and          s9, a7, s1
                  sra          a5, ra, s0
                  addi         zero, s11, 1258
                  or           s5, s8, ra
                  auipc        a1, 508372
                  c.nop
                  auipc        tp, 986163
                  slt          s9, s11, s1
                  c.add        sp, a3
                  srai         tp, a7, 15
                  sltu         t5, s7, s6
                  c.li         t3, 16
                  c.add        a2, t1
                  ori          gp, s3, -327
                  c.lui        s1, 13
                  add          a1, sp, s8
                  remu         s0, a4, a6
                  rem          s0, s1, a2
                  c.li         s2, 15
                  div          s3, a2, s4
                  c.andi       a4, -1
                  srli         a1, tp, 12
                  c.xor        a0, a3
                  sltiu        a7, s4, -2012
                  sltiu        ra, a2, -965
                  mulh         s9, zero, t4
                  andi         gp, s2, -1353
                  c.add        sp, s2
                  ori          sp, s8, -472
                  srl          s10, t1, tp
                  and          t2, s6, ra
                  c.addi       t6, -1
                  and          s5, s7, s8
                  sll          a4, sp, a1
                  slli         s5, a1, 2
                  slli         a5, a6, 2
                  divu         a2, a4, a3
                  c.add        a0, t3
                  div          a7, t4, t0
                  c.lui        a5, 12
                  remu         a2, s2, gp
                  mul          s3, s6, gp
                  or           s10, s7, a6
                  slli         t2, t5, 12
                  mulh         tp, s2, t2
                  add          s2, s1, t4
                  c.addi4spn   a2, sp, 240
                  sltiu        a1, a5, -2006
                  remu         a1, s7, t1
                  c.lui        a6, 6
                  or           t5, s4, s3
                  ori          t1, s3, 523
                  nop
                  div          s6, t3, s5
                  addi         a2, s1, -574
                  c.mv         t0, t5
                  mulhsu       a6, a5, zero
                  c.li         t2, -1
                  rem          s6, t3, gp
                  c.addi       a6, -1
                  c.slli       s11, 22
                  c.addi       a5, -1
                  c.sub        a4, a1
                  mulh         zero, a5, t2
                  add          t5, tp, tp
                  c.and        a5, a5
                  or           t3, s3, a3
                  c.sub        s1, s0
                  mulhu        s3, s10, a1
                  sll          s6, gp, t3
                  c.lui        a6, 10
                  slli         a0, s8, 12
                  c.lui        s5, 3
                  xori         gp, t5, 289
                  c.lui        s1, 8
                  slti         s6, sp, -570
                  c.lui        t2, 21
                  mul          a5, zero, a6
                  mulhsu       s5, s1, t4
                  auipc        a2, 649653
                  divu         a5, s6, a2
                  c.li         t5, -1
                  mulhu        a1, a6, s10
                  add          a0, t2, sp
                  srli         s7, s1, 13
                  auipc        tp, 701756
                  or           a0, s10, tp
                  nop
                  c.slli       tp, 10
                  ori          s3, s10, 1951
                  slli         t3, s4, 6
                  c.addi4spn   s1, sp, 576
                  nop
                  auipc        t5, 220308
                  mul          s9, zero, t2
                  c.slli       a1, 19
                  or           t6, t6, t5
                  mulh         s1, s1, a7
                  c.sub        a2, a3
                  slti         s2, s3, -708
                  andi         sp, a4, 2037
                  mul          a1, a6, sp
                  mulh         t2, tp, s1
                  rem          s9, s4, a1
                  c.srli       s0, 8
                  or           s9, a4, a6
                  c.li         s6, 14
                  c.and        s0, a4
                  c.slli       a5, 16
                  c.srai       a4, 3
                  xori         s1, s1, 930
                  c.andi       s0, -1
                  mulh         tp, t4, s4
                  c.addi16sp   sp, 96
                  mulhsu       t2, ra, a5
                  divu         s9, a3, a7
                  c.mv         ra, t2
                  lui          t1, 111960
                  mul          sp, a7, s3
                  c.andi       s0, 10
                  c.addi4spn   a0, sp, 96
                  mulhsu       t6, sp, t3
                  c.sub        s1, a2
                  srli         s6, s7, 0
                  sltu         gp, t3, t1
                  sltiu        a7, a5, -1072
                  auipc        s1, 153650
                  c.mv         s10, s8
                  c.addi       t2, -1
                  auipc        a6, 246662
                  c.andi       s1, -1
                  addi         tp, s0, 73
                  andi         s8, t4, -1972
                  c.or         a1, a1
                  mulhu        s3, s5, t6
                  c.addi4spn   s0, sp, 912
                  sltu         a5, s0, a5
                  sra          t6, t3, t1
                  srl          a1, a6, t5
                  c.srai       a2, 1
                  c.or         s1, a0
                  remu         s11, a0, s5
                  c.mv         a7, s10
                  xori         t2, sp, 940
                  lui          a1, 1002508
                  c.xor        a1, s1
                  or           t3, s1, s0
                  xor          tp, a6, s7
                  c.srli       a2, 5
                  c.nop
                  or           s3, s1, t2
                  div          s9, t1, s8
                  div          s11, s0, s3
                  c.andi       s0, 19
                  c.li         t5, -1
                  c.li         a7, -1
                  c.addi16sp   sp, -16
                  sra          t3, s8, tp
                  rem          t5, t0, gp
                  xori         gp, a3, -1786
                  c.slli       s9, 6
                  slti         ra, s3, 829
                  c.mv         t3, a4
                  lui          a5, 698273
                  remu         t0, s7, a0
                  div          s3, a0, t0
                  slt          s11, s7, a1
                  c.slli       s7, 18
                  srai         t5, t0, 24
                  mulh         t5, s11, a6
                  sra          s6, t6, t5
                  c.addi4spn   a4, sp, 752
                  or           sp, s0, ra
                  and          t5, t0, a1
                  sltu         ra, zero, a6
                  mulhsu       a0, zero, s8
                  or           s3, s6, s9
                  c.addi4spn   a1, sp, 688
                  add          a1, s5, sp
                  c.addi4spn   a2, sp, 384
                  sll          sp, s5, zero
                  c.sub        s1, a4
                  andi         a4, a4, 1917
                  sltiu        t3, s0, 510
                  srai         a2, t0, 12
                  sltiu        a6, s5, 815
                  mulhu        t1, a0, a4
                  sra          s9, gp, s11
                  mul          s0, t5, t4
                  c.xor        a1, s1
                  mul          a2, a3, a0
                  addi         s11, gp, 396
                  auipc        t2, 847401
                  srl          s1, s8, a5
                  remu         s0, sp, s10
                  slt          a7, t5, s2
                  sll          s5, zero, a2
                  slli         s6, a5, 2
                  and          a6, s6, s0
                  c.mv         t1, t6
                  c.li         s7, 29
                  c.sub        a0, a0
                  c.sub        a5, a4
                  c.srai       a2, 30
                  c.slli       s2, 16
                  c.li         t1, 17
                  andi         a0, s6, -554
                  mul          s7, a6, s5
                  or           a2, t1, s3
                  c.slli       a1, 23
                  or           s11, s8, t4
                  c.addi       s7, 24
                  c.slli       a2, 1
                  slti         s5, t6, 1215
                  c.xor        a0, s1
                  mulh         a0, gp, zero
                  andi         a0, t5, 1728
                  c.mv         s11, a4
                  or           s5, s4, s6
                  srli         t6, t5, 10
                  c.srli       a2, 18
                  slt          s3, s5, a3
                  ori          a7, t1, 1074
                  c.andi       s0, 26
                  srli         a0, t0, 29
                  c.mv         s10, sp
                  nop
                  ori          s8, s6, 286
                  or           s5, t1, s4
                  rem          t2, s4, tp
                  c.xor        a5, a3
                  nop
                  mulhsu       a6, t4, a3
                  srai         s7, a6, 31
                  c.lui        s5, 20
                  remu         t3, sp, s2
                  c.xor        a1, a2
                  divu         a6, t3, t0
                  c.or         a0, a0
                  c.srli       s1, 11
                  c.mv         a0, s9
                  c.sub        a4, s0
                  c.andi       a1, 31
                  divu         gp, t4, t5
                  sra          t6, t6, s0
                  sra          t5, s9, a4
                  mulh         t0, t5, s4
                  xor          t1, s6, s10
                  li           a5, 0x80000000 #start riscv_int_numeric_corner_stream_33
                  li           t0, 0xa66f88ef
                  li           a0, 0xffffffff
                  li           s7, 0xe07c7b32
                  li           s8, 0xff27f231
                  li           s2, 0xffffffff
                  li           s10, 0x80000000
                  li           t5, 0x80000000
                  li           s3, 0x80000000
                  li           t3, 0x0
                  nop
                  mulhu        s2, s8, a0
                  mul          t5, s2, a5
                  mul          a5, t5, a0
                  auipc        a0, 690690
                  div          t0, s7, t0
                  mulhsu       s10, s10, t5
                  remu         t0, t5, s7
                  mul          s3, t0, s3
                  addi         t3, s3, -1426
                  mulhu        s2, s7, a0
                  mulhu        s2, s7, t3
                  auipc        s8, 846203
                  auipc        s3, 1027566
                  remu         s2, s2, s3
                  addi         s2, a5, -512
                  mulhsu       a0, s7, t0
                  mulh         s7, a5, a0
                  divu         s2, s2, s8
                  lui          s7, 744207
                  nop
                  mul          s10, t5, t3
                  mul          t5, t0, s10
                  rem          a0, s10, t0 #end riscv_int_numeric_corner_stream_33
                  srai         a6, t3, 1
                  c.add        s5, gp
                  c.addi4spn   a1, sp, 16
                  srl          sp, t2, a7
                  lui          gp, 312370
                  mulh         a7, zero, gp
                  c.srai       a0, 31
                  slti         ra, s0, 1952
                  srl          a1, a0, a2
                  slli         s5, a5, 13
                  sra          a5, tp, a5
                  mulhsu       s10, a6, s1
                  mulh         t2, s2, t0
                  add          a5, t5, s11
                  mulh         s8, s6, a4
                  divu         t0, s2, a5
                  addi         t2, t2, -1193
                  c.slli       s11, 26
                  lui          tp, 611405
                  c.sub        a0, s0
                  remu         s3, s11, a2
                  c.li         tp, -1
                  mulhsu       a7, s3, sp
                  lui          a4, 361087
                  sltu         a1, s11, s6
                  slt          a5, a2, t6
                  sltu         a0, t5, s9
                  c.srai       a2, 20
                  ori          a0, s1, 2035
                  divu         t6, a5, s10
                  srl          s11, a1, sp
                  lui          a2, 695813
                  nop
                  c.addi4spn   a5, sp, 896
                  mulhu        a1, t6, t1
                  sll          a4, zero, sp
                  c.li         t0, 22
                  c.addi       ra, -1
                  div          a6, ra, zero
                  slli         ra, sp, 4
                  c.mv         t2, a0
                  c.addi       s9, 27
                  sltu         s11, a4, a0
                  divu         s5, a4, a3
                  c.sub        s0, a1
                  c.andi       s1, -1
                  rem          s9, tp, s10
                  c.xor        a5, s1
                  c.lui        s11, 30
                  c.mv         t2, a0
                  c.andi       a4, 8
                  andi         s7, s6, 1011
                  c.li         a4, 2
                  c.or         a2, s0
                  c.addi16sp   sp, 304
                  srl          s5, gp, zero
                  xor          a0, s9, a0
                  andi         a6, a2, 1559
                  c.sub        a4, a2
                  or           t2, s6, tp
                  sll          s9, a3, s7
                  xor          tp, s2, zero
                  c.li         s8, 1
                  c.lui        s11, 7
                  c.sub        a5, a4
                  sra          s0, a6, s10
                  nop
                  xor          s9, s0, t5
                  c.andi       s0, -1
                  xor          a7, s0, s9
                  mulhsu       a0, s9, a6
                  c.sub        a4, s0
                  sltu         s5, s7, t3
                  c.andi       s0, 6
                  c.srai       a5, 24
                  c.mv         s2, t1
                  c.slli       t1, 10
                  sltiu        ra, s0, 1988
                  c.xor        s0, a3
                  sub          a7, s6, s2
                  sra          s0, a1, t3
                  c.mv         a7, s10
                  c.addi4spn   a0, sp, 608
                  ori          s10, s6, -1846
                  mulh         gp, ra, a4
                  rem          zero, a1, t0
                  or           a5, s2, s7
                  c.lui        s3, 23
                  srai         ra, s9, 2
                  and          s7, a3, t2
                  li           a4, 0xffffffff #start riscv_int_numeric_corner_stream_37
                  li           s8, 0xffffffff
                  li           a6, 0x599659bf
                  li           s0, 0x0
                  li           a0, 0xffffffff
                  li           s6, 0x80000000
                  li           a2, 0xcdefdbb7
                  li           a1, 0x80000000
                  li           ra, 0x0
                  li           tp, 0x4a5af1b6
                  div          s6, ra, ra
                  sub          a0, a0, tp
                  remu         s6, a2, s8
                  mul          s8, s0, a4
                  mulh         a2, a6, tp
                  lui          a4, 529765
                  mulhu        a0, a4, a2
                  mul          a0, a4, a1
                  add          a1, s6, a1
                  addi         s6, s6, -29
                  remu         a0, a0, a4
                  auipc        a0, 414728
                  rem          tp, tp, a4
                  mulh         s6, s0, ra
                  sub          ra, s6, a2
                  remu         a2, a0, a6 #end riscv_int_numeric_corner_stream_37
                  c.nop
                  divu         s0, t0, tp
                  c.slli       s1, 20
                  sltu         t6, s1, a0
                  rem          a2, zero, t4
                  c.li         s9, 23
                  mulhsu       s6, ra, s0
                  and          s9, t6, a1
                  sra          a7, s8, zero
                  c.mv         t6, a2
                  c.nop
                  c.slli       s9, 18
                  c.slli       s3, 17
                  mul          gp, s1, ra
                  slt          a2, s9, a0
                  sub          s9, a5, s1
                  c.slli       a0, 28
                  c.slli       a4, 16
                  c.and        a4, a2
                  sll          a2, s0, s7
                  sub          ra, s4, s0
                  c.xor        a2, s1
                  c.sub        s1, a5
                  div          t2, t2, t5
                  lui          a2, 973179
                  rem          s6, t4, t0
                  sltiu        t2, a6, -1321
                  auipc        s3, 825051
                  sltu         s1, a3, a2
                  c.and        s1, a1
                  slt          s1, t1, s7
                  c.slli       s10, 15
                  divu         ra, s2, s2
                  lui          s8, 989065
                  mulhu        s6, t3, a5
                  srl          t6, s0, s8
                  c.slli       s10, 21
                  c.slli       a6, 20
                  sub          s7, s2, t0
                  slti         s0, s11, 1080
                  lui          t2, 452457
                  add          s6, s6, a5
                  c.sub        a1, a2
                  srli         zero, s10, 27
                  c.andi       a5, 31
                  slti         t6, s3, 1367
                  auipc        a5, 853493
                  c.slli       a0, 11
                  div          s6, a2, ra
                  sll          s5, tp, a2
                  c.srai       s1, 23
                  sub          s10, tp, s0
                  c.slli       a5, 23
                  nop
                  srli         gp, tp, 12
                  remu         t6, tp, s7
                  c.srai       a5, 2
                  mulhsu       s6, t4, gp
                  c.li         tp, -1
                  xor          sp, a6, s6
                  c.lui        a4, 2
                  c.li         a1, 30
                  xor          s8, s2, a0
                  sub          s2, t5, s8
                  slti         a7, tp, 387
                  c.add        t3, t2
                  and          s5, a5, s1
                  divu         ra, s5, a1
                  slti         ra, a1, 1001
                  auipc        s7, 690676
                  c.addi16sp   sp, 464
                  slli         zero, s0, 21
                  srai         s2, a7, 10
                  sra          s5, t6, s10
                  c.addi16sp   sp, 144
                  srai         ra, s6, 19
                  c.and        s1, a2
                  srli         s2, gp, 18
                  sub          a1, t6, a7
                  sltiu        t2, sp, 1978
                  slli         t0, t5, 9
                  slt          s6, t1, s2
                  c.srli       s0, 9
                  c.nop
                  lui          gp, 770237
                  c.addi       tp, -1
                  srai         t3, s7, 12
                  c.sub        a4, a1
                  slt          s5, t4, a4
                  divu         s2, a6, a0
                  rem          t5, a2, a5
                  ori          ra, t6, 591
                  auipc        s0, 334148
                  xori         t6, gp, -1961
                  ori          s1, ra, -180
                  c.srai       a5, 11
                  xor          a2, sp, s0
                  sra          t3, s0, a2
                  c.and        s1, a0
                  divu         a5, t4, t3
                  c.or         a5, a0
                  c.or         a4, a4
                  xori         s2, a3, -1541
                  rem          t2, a5, a5
                  srl          a7, s1, a1
                  c.srli       a5, 17
                  c.mv         t1, a3
                  remu         a0, a1, t5
                  c.addi4spn   a0, sp, 848
                  c.mv         t1, gp
                  ori          s8, s5, -1059
                  c.srli       a0, 12
                  nop
                  slli         t1, s7, 0
                  addi         t0, a0, -805
                  c.srai       a4, 7
                  div          t5, t3, a4
                  srai         s7, t3, 1
                  srl          a6, t0, a7
                  add          a2, s3, s2
                  addi         s5, t5, -1325
                  addi         s3, s3, -932
                  remu         a0, t5, t2
                  c.li         a0, -1
                  slt          s1, s0, s7
                  slli         sp, a5, 26
                  sltiu        tp, sp, 751
                  xori         sp, s10, 1985
                  c.addi       t6, -1
                  li           gp, 0x0 #start riscv_int_numeric_corner_stream_17
                  li           s7, 0x80000000
                  li           t5, 0x80000000
                  li           a1, 0x0
                  li           a2, 0xffffffff
                  li           s8, 0xaebbba9d
                  li           s11, 0xffffffff
                  li           t1, 0x0
                  li           t3, 0xffffffff
                  li           tp, 0x0
                  mulhu        a2, a1, t5
                  div          t1, a1, tp
                  div          a1, s8, t5
                  mulh         a2, t3, t3
                  mulhu        tp, t3, t5
                  divu         t3, t3, tp
                  mulhu        a2, s7, s11
                  add          a1, a1, a2
                  lui          a1, 297675
                  sub          s8, t3, s8
                  mulhsu       t1, s11, s11
                  nop
                  sub          a2, t5, t5
                  divu         t1, s7, gp
                  sub          a1, a1, tp
                  sub          a2, a1, s8
                  nop
                  nop
                  addi         a2, s11, 1771
                  sub          t5, tp, a2
                  mulhu        s7, t1, s11 #end riscv_int_numeric_corner_stream_17
                  and          s6, gp, a2
                  c.sub        s1, s0
                  c.srli       s0, 23
                  add          tp, t0, s9
                  sub          s7, t4, a2
                  slli         tp, s3, 30
                  srli         s3, t0, 10
                  mulhsu       sp, a5, t1
                  div          s5, a4, s5
                  div          s9, s11, s4
                  sub          a6, a4, s9
                  addi         gp, s8, 168
                  c.li         t0, -1
                  sltu         ra, s7, a6
                  mulhsu       a0, a1, t0
                  slli         s10, sp, 6
                  c.andi       s0, -1
                  c.nop
                  c.addi16sp   sp, -16
                  xor          a6, s11, a7
                  mul          t2, sp, a7
                  nop
                  c.lui        a7, 8
                  c.srli       a2, 10
                  rem          a4, t0, s0
                  xor          s11, zero, t2
                  c.addi4spn   a1, sp, 240
                  div          tp, tp, s8
                  c.or         a2, s1
                  nop
                  rem          s7, zero, t4
                  c.addi4spn   a4, sp, 592
                  slli         tp, s1, 4
                  mulh         t3, s4, t6
                  xori         s1, a0, -420
                  slli         a4, t5, 1
                  c.addi16sp   sp, 240
                  slli         s1, t2, 4
                  c.add        s8, t4
                  li           ra, 0x6daba2ce #start riscv_int_numeric_corner_stream_7
                  li           t0, 0x80000000
                  li           s11, 0x0
                  li           s8, 0x80000000
                  li           s6, 0x0
                  li           t5, 0x80000000
                  li           tp, 0x80000000
                  li           s2, 0x9545bcc2
                  li           s10, 0xffffffff
                  li           s7, 0x0
                  addi         s7, t5, 29
                  mul          t0, s11, tp
                  div          ra, tp, t5
                  remu         t0, t5, s8
                  mul          t5, s2, t5
                  rem          s6, s11, tp
                  add          tp, s7, t5
                  mulh         ra, s2, s7
                  mulh         s10, s8, s11
                  mulh         s6, ra, tp
                  addi         t5, s6, 1063
                  addi         ra, t5, 997
                  remu         s10, s8, s2
                  rem          s2, t0, s11
                  mulhsu       s11, s11, s6 #end riscv_int_numeric_corner_stream_7
                  srli         t0, t3, 28
                  rem          t3, a6, a7
                  sub          t5, s2, s6
                  srl          a2, s4, a2
                  and          a2, s2, a5
                  srai         zero, s10, 28
                  divu         a5, gp, s9
                  slti         t6, sp, 880
                  slti         t0, ra, 122
                  div          a7, t6, s9
                  add          gp, t6, t5
                  c.and        s0, a5
                  slti         t0, s10, 983
                  mulhsu       a6, t5, s8
                  slt          a7, s8, s11
                  sra          t1, a6, s1
                  mul          s9, s6, t2
                  c.lui        s3, 12
                  sll          tp, zero, s11
                  c.srai       a0, 30
                  rem          s0, s7, s2
                  mulhu        a5, s7, sp
                  sltiu        t2, t0, 1261
                  c.nop
                  lui          s5, 152969
                  auipc        t6, 403352
                  or           s9, s9, ra
                  sltiu        gp, s7, -823
                  mulhu        zero, zero, a5
                  sll          s11, a7, a1
                  slli         s5, sp, 29
                  rem          a1, a7, a2
                  c.mv         s2, s8
                  c.andi       a1, 3
                  or           a2, a7, sp
                  ori          t6, a2, -1484
                  add          t2, t6, t2
                  slli         s0, s5, 8
                  xori         s11, t5, 2040
                  xor          a2, s3, s4
                  c.xor        s1, a5
                  mulhu        t3, t5, a0
                  or           s5, sp, s7
                  c.add        s9, t1
                  andi         a0, a0, -1537
                  slti         a7, s4, -1969
                  srli         sp, s0, 16
                  c.andi       a1, 25
                  slli         a0, a7, 26
                  remu         gp, s2, zero
                  and          t3, s7, s10
                  andi         a7, s11, -1202
                  c.srai       a5, 11
                  xori         t0, s0, -801
                  divu         s9, s10, t1
                  c.and        s1, a0
                  andi         a0, a3, 1743
                  c.and        a2, s0
                  sra          a1, s2, s7
                  srl          t3, a5, s4
                  mul          s8, s1, sp
                  c.addi16sp   sp, 256
                  c.lui        s9, 1
                  c.andi       a4, -1
                  sra          s6, s2, a6
                  c.srai       a5, 27
                  c.xor        a0, a4
                  divu         a6, t2, s3
                  mul          t1, sp, t3
                  or           s1, s5, s0
                  add          a5, tp, zero
                  xori         t0, s3, -853
                  divu         ra, s3, s10
                  sub          t2, a2, s7
                  divu         a5, t1, sp
                  slt          a6, s7, t3
                  sra          t3, t1, t1
                  c.srai       s0, 17
                  c.xor        a5, s0
                  sra          t6, a7, t0
                  or           a7, s2, a1
                  c.nop
                  c.li         s2, -1
                  c.addi16sp   sp, 224
                  slt          t1, tp, a3
                  c.addi16sp   sp, -16
                  mulh         t1, tp, s9
                  c.mv         t2, t2
                  addi         s5, t5, 1960
                  ori          zero, t6, 1254
                  xor          t0, s8, a0
                  mulhsu       s1, a3, tp
                  c.xor        a1, s0
                  mulhsu       a5, a5, a6
                  c.andi       s0, -1
                  remu         t3, t0, a6
                  c.nop
                  sll          a6, tp, a6
                  ori          s11, a3, -673
                  and          gp, a1, t1
                  mulhsu       a6, s7, a2
                  c.add        a0, gp
                  c.nop
                  auipc        s2, 591788
                  add          s1, s10, a5
                  c.and        a1, a4
                  remu         a6, a2, t2
                  slti         tp, tp, 1595
                  slli         a4, s11, 2
                  xor          t3, s11, t2
                  c.nop
                  nop
                  sll          s10, s0, a0
                  c.li         a5, -1
                  and          s11, zero, s11
                  mulhu        a7, t0, a4
                  slti         s6, s8, 1684
                  srli         s0, a1, 9
                  sltiu        t5, s11, -144
                  slti         t0, ra, -883
                  srai         t0, gp, 17
                  addi         s2, a3, -749
                  slti         a5, a0, -465
                  add          tp, a4, a7
                  c.xor        s0, a4
                  auipc        s1, 217012
                  ori          a7, s10, -1120
                  nop
                  auipc        a0, 105657
                  mulhsu       t0, t0, s8
                  ori          t1, a2, 1235
                  srl          a2, a3, sp
                  sltu         s9, s5, ra
                  rem          s3, t3, s6
                  div          s7, a0, a4
                  c.lui        t1, 10
                  c.srli       s1, 24
                  c.or         s0, a1
                  srl          a6, sp, t0
                  c.mv         gp, s3
                  sub          s3, s4, s4
                  mulhu        s11, a7, s10
                  mulh         t6, a1, t6
                  remu         tp, a3, t3
                  srl          t5, tp, t0
                  c.srli       a2, 30
                  c.slli       a1, 24
                  mulhu        s10, t0, tp
                  c.xor        a4, a3
                  sll          s6, a5, s6
                  c.sub        a2, a2
                  srai         ra, s6, 16
                  sll          s9, s7, s8
                  c.addi4spn   a2, sp, 720
                  andi         a4, s4, 1868
                  srai         s3, a0, 17
                  or           s11, a0, s0
                  and          s9, s7, a7
                  c.li         sp, 23
                  mul          a7, t0, zero
                  sub          a4, tp, a0
                  mulhu        ra, a1, gp
                  c.slli       gp, 20
                  sll          s5, gp, t4
                  c.add        s1, s5
                  sll          t1, s11, t3
                  auipc        a6, 410582
                  c.srli       a0, 4
                  nop
                  sub          s1, t5, s8
                  divu         s3, zero, t5
                  c.sub        a1, a2
                  xor          t0, tp, a0
                  rem          a4, s9, s1
                  c.xor        a2, a2
                  and          a0, s10, t0
                  div          a7, a2, a4
                  and          t1, s9, a7
                  mulhsu       s3, s9, zero
                  c.and        a0, a3
                  xori         s10, s2, -1702
                  sll          a5, t0, s11
                  srli         t3, s11, 19
                  and          s7, s4, gp
                  slt          a2, a3, s1
                  mul          s11, a0, ra
                  c.add        a1, t3
                  srai         s11, s1, 16
                  andi         s3, s2, -1308
                  c.srli       a0, 31
                  c.srli       s0, 14
                  c.sub        s1, a2
                  c.addi4spn   s0, sp, 368
                  c.andi       a5, -1
                  slt          s1, gp, a1
                  xor          s1, s9, a5
                  lui          s10, 992748
                  c.sub        a4, a2
                  andi         s8, t1, -568
                  divu         s5, s3, a7
                  addi         s10, a3, 1720
                  c.addi4spn   a5, sp, 240
                  c.addi16sp   sp, 144
                  c.sub        a0, a4
                  srli         s8, a5, 30
                  c.mv         a2, a2
                  slti         a4, s5, 1419
                  c.addi       s2, -1
                  sra          s3, s0, s11
                  add          s6, t5, a4
                  srl          a4, sp, s5
                  addi         s11, gp, -229
                  mul          ra, t0, t3
                  add          s10, s9, s0
                  slli         s2, gp, 28
                  c.addi16sp   sp, -16
                  andi         t5, s6, -1201
                  c.add        ra, tp
                  rem          s2, s5, s7
                  xor          t0, s1, s2
                  add          s6, zero, a0
                  c.srli       a0, 11
                  c.and        a1, s1
                  c.nop
                  c.andi       s0, 11
                  c.or         a5, a3
                  c.addi       t6, 2
                  c.or         s0, a3
                  nop
                  sltiu        s9, t0, -341
                  slt          s6, t5, zero
                  auipc        a0, 88597
                  and          t3, s9, s2
                  mulh         s6, t0, s1
                  c.lui        s9, 6
                  mulhu        a1, ra, sp
                  addi         s2, ra, -1833
                  and          a5, s11, s7
                  c.add        s7, s1
                  c.sub        s1, a4
                  rem          t3, a2, s9
                  slli         s1, a4, 22
                  slt          s6, a7, zero
                  rem          t6, s8, a7
                  mulhsu       a6, s4, t2
                  slli         s9, a4, 27
                  srli         s2, a5, 26
                  c.sub        a5, a2
                  slli         s5, a1, 21
                  c.srli       a2, 17
                  c.add        t3, t3
                  mulhsu       s7, s5, s4
                  c.or         s0, a1
                  c.li         s10, 29
                  rem          ra, a6, t2
                  ori          s8, s8, -975
                  srl          a1, t2, s11
                  c.slli       s1, 3
                  srl          sp, s11, s4
                  mulhu        s6, a4, s4
                  c.sub        s0, a4
                  mul          s1, s10, s1
                  xor          t2, tp, s6
                  nop
                  srli         s7, a4, 27
                  c.add        s7, s4
                  c.lui        s7, 22
                  rem          t2, t2, zero
                  sltu         s8, a2, ra
                  remu         zero, zero, s1
                  sll          a6, a1, t1
                  slli         a1, a7, 0
                  andi         t6, a4, -1654
                  remu         zero, s4, s3
                  c.li         t1, -1
                  srl          t1, a7, t6
                  slti         s3, t3, 372
                  addi         t1, sp, -1859
                  sltu         s1, a1, t3
                  sll          tp, t2, s7
                  sltu         s1, a7, s0
                  sltu         a2, zero, a3
                  ori          s1, t5, 831
                  mulh         s0, zero, ra
                  srli         tp, s7, 16
                  nop
                  andi         sp, sp, -216
                  mulhsu       s9, s11, sp
                  c.andi       a0, -1
                  and          ra, a2, a4
                  c.andi       s1, 3
                  xor          zero, t0, t1
                  slt          ra, a1, sp
                  andi         s6, a4, 1429
                  srli         s1, tp, 7
                  mulhu        s7, sp, t1
                  slli         t6, t3, 8
                  c.addi4spn   a0, sp, 688
                  c.slli       s6, 17
                  or           t1, tp, t0
                  c.xor        s0, a1
                  sub          a0, a6, s2
                  mulhu        a0, a0, t3
                  c.addi16sp   sp, -16
                  auipc        a7, 754817
                  srli         s6, s1, 14
                  sltu         s2, gp, a7
                  sltiu        t5, a5, 879
                  c.mv         gp, s5
                  rem          t5, a2, t2
                  remu         s11, s3, t2
                  andi         s6, t5, -580
                  ori          a5, s5, 825
                  c.addi4spn   s0, sp, 304
                  or           s6, s2, a3
                  mulh         a7, s7, sp
                  slli         s7, tp, 0
                  srl          s7, gp, s10
                  c.slli       s8, 29
                  slt          tp, a2, a5
                  rem          s10, a7, a0
                  rem          a7, a2, a4
                  srl          zero, s9, ra
                  c.nop
                  xori         t1, t3, 325
                  sltiu        t3, s1, 1443
                  xori         a6, zero, 1347
                  div          s1, s10, s3
                  c.srai       a0, 8
                  auipc        a2, 801296
                  c.add        a4, t3
                  c.or         s1, s0
                  c.li         s11, -1
                  mulh         t6, s3, s11
                  lui          t2, 388569
                  srl          s11, t0, zero
                  c.srai       a2, 7
                  c.xor        a4, s1
                  c.sub        a2, a1
                  xori         s9, t5, -1344
                  and          s2, a3, s11
                  mulhu        a2, zero, s6
                  c.srli       a0, 9
                  div          s2, a6, t4
                  sltu         a5, tp, s2
                  sll          s10, a1, s1
                  srai         ra, s3, 7
                  srai         a0, sp, 23
                  sub          a0, s9, ra
                  srai         sp, s5, 3
                  slli         s11, s9, 3
                  c.li         a0, -1
                  mulh         sp, a1, t6
                  rem          t6, zero, sp
                  lui          s3, 225574
                  srl          a5, gp, s10
                  ori          zero, s5, -1169
                  srai         s6, s1, 19
                  c.srai       s1, 28
                  or           a7, sp, a7
                  c.srai       s0, 23
                  c.addi16sp   sp, 224
                  c.sub        s0, a2
                  ori          a7, s1, 516
                  c.slli       s6, 13
                  sra          t0, t4, s9
                  sltu         s3, a7, a2
                  c.addi4spn   a2, sp, 416
                  mulhsu       tp, s7, s5
                  mulhsu       t3, a4, ra
                  andi         a1, t3, 1500
                  c.or         a5, a3
                  lui          a2, 300981
                  sub          a2, a7, t0
                  c.nop
                  div          s5, t0, a0
                  mulh         tp, a0, s6
                  or           a0, s3, t0
                  nop
                  add          sp, s1, s4
                  auipc        t0, 315528
                  xor          s1, s9, s1
                  c.mv         s1, s1
                  c.add        s0, a7
                  add          s5, s0, t3
                  div          a1, s9, s8
                  rem          sp, tp, s7
                  div          zero, s6, t2
                  srli         t1, s1, 9
                  mul          a0, s2, ra
                  c.mv         a5, sp
                  addi         s2, s2, 757
                  slt          sp, t3, s10
                  c.andi       s0, 13
                  nop
                  rem          s9, a6, s4
                  andi         t0, s8, -1076
                  c.addi       s0, 5
                  mulh         a5, a0, ra
                  c.addi       a6, 23
                  sltu         zero, a5, s11
                  c.slli       s5, 23
                  rem          s5, a7, t0
                  slli         sp, s10, 11
                  c.addi4spn   s1, sp, 784
                  rem          s0, s7, s10
                  andi         gp, a6, 1977
                  c.mv         s3, t2
                  slt          zero, a2, s1
                  c.xor        a4, s1
                  c.nop
                  mulhsu       a1, tp, s9
                  c.andi       s1, -1
                  mulh         s5, gp, sp
                  c.addi16sp   sp, 496
                  srli         tp, s4, 20
                  add          a6, a1, a6
                  sll          s7, s7, a1
                  xori         t2, gp, 254
                  sll          tp, s2, a5
                  mulhu        a0, t4, a4
                  c.or         s1, a3
                  c.nop
                  xori         sp, gp, 175
                  c.slli       s10, 23
                  mulhu        zero, t3, t1
                  and          a0, t5, t0
                  slli         s9, a1, 17
                  c.and        s1, s0
                  addi         sp, s6, 2045
                  mulhu        s5, t4, t6
                  xori         s0, s10, 1870
                  c.slli       t6, 18
                  c.addi16sp   sp, -16
                  c.li         ra, 4
                  divu         a5, a1, s2
                  srli         a0, s6, 11
                  srl          s0, zero, t4
                  sub          t3, sp, s7
                  sll          t6, s2, s7
                  srl          s7, t6, t3
                  c.sub        s1, a5
                  c.xor        s1, s1
                  auipc        t2, 966023
                  srli         a4, s4, 10
                  sll          s2, a0, t0
                  lui          a5, 391965
                  div          tp, a2, a1
                  divu         zero, a3, t0
                  c.lui        t6, 25
                  c.addi4spn   a5, sp, 160
                  c.mv         s5, a2
                  xori         s8, s9, -220
                  sltiu        s11, s0, -671
                  c.xor        a0, a0
                  sra          a5, t5, s11
                  c.mv         s11, t6
                  c.sub        a2, a3
                  divu         s8, s0, a6
                  mulhu        s1, s6, s7
                  xori         s2, s11, -1841
                  c.andi       a1, -1
                  andi         s5, t0, 484
                  c.addi4spn   a5, sp, 464
                  c.sub        s1, s1
                  remu         t3, a7, s10
                  sub          zero, gp, a3
                  c.sub        a2, a4
                  c.mv         s2, t6
                  c.addi4spn   a2, sp, 448
                  auipc        a4, 1039046
                  add          zero, a3, s8
                  srli         a1, a0, 12
                  sra          tp, a7, a0
                  c.mv         s0, a0
                  remu         t1, a5, a0
                  c.srai       a5, 3
                  sll          s10, s11, t1
                  c.add        s9, a3
                  auipc        a2, 921372
                  c.andi       a1, -1
                  sltiu        t0, t0, -90
                  c.add        tp, s0
                  c.srai       s1, 1
                  and          a6, a4, t5
                  andi         s8, s8, 1285
                  lui          s9, 1021380
                  ori          s11, a2, -268
                  nop
                  addi         s6, t1, -1478
                  mulhu        s3, t4, a7
                  mul          zero, ra, s5
                  slti         sp, t2, 675
                  xori         t5, s10, -96
                  slli         s11, s7, 10
                  ori          s9, a0, 301
                  divu         s11, a2, s0
                  mul          t5, t6, t4
                  slli         a7, a7, 23
                  lui          t5, 929353
                  slli         sp, s1, 23
                  sltu         s9, a0, t4
                  mulhsu       a0, t3, s6
                  ori          t6, a7, -45
                  remu         sp, a6, a3
                  c.addi16sp   sp, -16
                  c.and        a2, a0
                  c.lui        s7, 26
                  auipc        s1, 641619
                  sra          a6, s0, t0
                  c.and        a1, a0
                  sltiu        a7, a6, 225
                  sltiu        s8, zero, -796
                  c.and        a0, a2
                  sltu         a6, t5, s8
                  c.add        s3, t5
                  sltu         s1, s11, a2
                  c.addi       t6, -1
                  c.srai       a1, 14
                  lui          t1, 697738
                  c.addi16sp   sp, 416
                  srai         s11, a3, 14
                  mulhsu       a6, zero, t6
                  c.li         s9, -1
                  sltiu        a6, gp, -1117
                  or           s10, a5, t0
                  lui          gp, 799799
                  c.srai       a1, 3
                  remu         t0, t1, t2
                  sltu         s11, a0, tp
                  c.mv         t1, s7
                  c.sub        s0, a0
                  sltu         t3, s3, a0
                  c.andi       a5, -1
                  c.and        a5, s0
                  mulhsu       t2, t4, t2
                  c.addi16sp   sp, -16
                  and          t3, t1, t3
                  mulhu        gp, s8, s3
                  srli         s2, a2, 23
                  addi         a7, t6, 1288
                  sra          t5, s11, s4
                  mulh         tp, a5, t6
                  andi         gp, a3, -1421
                  sltiu        ra, a4, 1034
                  mulh         t2, a2, a2
                  c.and        a5, a4
                  sra          a7, zero, a0
                  c.addi       tp, -1
                  remu         ra, s1, sp
                  c.mv         a0, t3
                  mulhu        t0, t5, s3
                  xori         sp, s3, 620
                  remu         s1, a4, s1
                  divu         sp, t0, s5
                  c.and        s0, a3
                  xor          s7, a0, t5
                  divu         a7, a0, a1
                  c.mv         s3, s8
                  or           ra, s7, tp
                  auipc        a2, 790967
                  lui          a2, 529405
                  auipc        s0, 726867
                  srli         s0, a6, 27
                  c.sub        a0, a4
                  xor          ra, t3, a0
                  andi         a5, t6, -994
                  xori         s7, a1, 1510
                  c.srli       a0, 24
                  andi         t3, s11, 1424
                  c.addi16sp   sp, -16
                  c.srai       s1, 18
                  nop
                  lui          t1, 738603
                  mulh         t3, s6, zero
                  mulhsu       s10, gp, s4
                  add          t6, s9, t1
                  c.lui        s9, 8
                  mulhu        t1, a2, a4
                  mulh         t3, a4, a6
                  c.lui        s7, 10
                  and          a7, sp, t4
                  c.li         sp, -1
                  c.mv         t6, a4
                  nop
                  c.addi16sp   sp, 240
                  c.srai       a2, 27
                  add          a2, a6, a3
                  c.addi       s2, -1
                  mul          s1, s3, s11
                  c.sub        a5, a5
                  or           s3, a4, s11
                  slt          a0, s7, s1
                  c.and        a5, a4
                  and          s3, gp, zero
                  c.andi       s0, -1
                  slt          t6, s6, zero
                  c.srai       a4, 31
                  mulh         t2, s0, t0
                  c.srai       a1, 13
                  sltiu        zero, a7, 1040
                  c.xor        a2, s1
                  div          t6, a7, t4
                  c.addi16sp   sp, -16
                  add          s0, a1, s0
                  nop
                  c.mv         t3, s11
                  c.slli       t0, 29
                  xor          a6, s0, t6
                  lui          s6, 163767
                  andi         t5, s11, -197
                  c.li         a4, 0
                  mulh         a0, t1, a5
                  c.addi16sp   sp, 16
                  c.addi4spn   a2, sp, 160
                  c.lui        a1, 13
                  srai         a0, s11, 17
                  c.add        t6, t1
                  nop
                  c.or         s0, a3
                  c.add        a6, s1
                  auipc        t2, 207353
                  nop
                  divu         a6, s6, tp
                  c.xor        a5, s0
                  sltu         t1, a4, s0
                  mulhu        sp, t0, s7
                  c.addi       sp, 25
                  c.srli       s0, 26
                  auipc        s7, 415856
                  c.addi4spn   s1, sp, 352
                  remu         t0, a6, s5
                  sra          tp, s3, t4
                  c.sub        a2, a2
                  andi         s1, a2, 1509
                  c.li         tp, 16
                  addi         s2, t6, -1493
                  srl          s9, s3, s3
                  xor          t5, t1, s8
                  sll          t5, gp, t3
                  c.or         s1, a4
                  slt          zero, a3, tp
                  c.srli       s1, 21
                  mulhu        s7, a3, s3
                  slt          s2, a1, s0
                  mulhsu       a4, t6, gp
                  mulhu        s9, s9, s10
                  rem          ra, s1, s7
                  andi         s2, t5, 2007
                  c.li         ra, -1
                  slli         t3, s7, 28
                  c.nop
                  c.andi       a1, 4
                  or           s6, s4, s8
                  or           s10, a3, s7
                  slt          s2, s11, a5
                  lui          s7, 169538
                  sltu         zero, t2, s9
                  c.addi16sp   sp, 480
                  auipc        s10, 115617
                  c.or         a5, s0
                  slti         t3, t5, 2019
                  c.and        s1, s1
                  srli         t6, s1, 22
                  remu         t3, gp, t6
                  c.srai       s1, 15
                  slti         a2, ra, 1427
                  sub          s11, tp, s7
                  srl          a0, t5, s2
                  add          a1, a4, s9
                  lui          a4, 484033
                  slt          a4, t6, a5
                  lui          s3, 685876
                  mul          tp, t1, a0
                  c.nop
                  sll          t3, s5, s2
                  xori         s3, t3, -535
                  c.add        gp, t6
                  rem          t5, s0, t6
                  c.and        a1, a5
                  mul          t3, t0, s5
                  c.slli       t2, 7
                  c.addi4spn   a2, sp, 880
                  slti         t3, s4, 1086
                  divu         a5, ra, zero
                  sltu         a6, a3, zero
                  rem          a0, s3, a3
                  c.and        s1, a3
                  c.or         s1, a3
                  c.andi       a5, -1
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_25
                  li           a2, 0x0
                  li           t3, 0x80000000
                  li           s5, 0x0
                  li           sp, 0x80000000
                  li           s2, 0x80000000
                  li           s6, 0xffffffff
                  li           s8, 0xffffffff
                  li           s10, 0xffffffff
                  li           a0, 0x0
                  rem          a6, a2, t3
                  addi         s6, a6, 1149
                  divu         a2, a0, a2
                  mul          a0, a2, s5
                  remu         a0, s6, sp
                  auipc        s5, 87064
                  lui          s6, 594952
                  addi         a6, s10, -2026
                  rem          a6, s8, s5
                  divu         t3, a6, s6
                  mulhsu       sp, s2, s6
                  addi         a6, s8, 202
                  mulh         s10, a6, s8
                  sub          s6, s6, s10
                  mul          s5, s2, a0
                  divu         s10, s2, a0
                  sub          a2, a0, s5
                  mulhu        s10, s2, a2
                  auipc        s10, 1006046
                  sub          s8, a6, a2
                  lui          a2, 709935
                  mulhu        a0, s10, s10
                  mulh         s2, sp, a0 #end riscv_int_numeric_corner_stream_25
                  sltu         a5, s11, s0
                  c.slli       s6, 9
                  sra          sp, a5, t5
                  lui          ra, 359261
                  mulhsu       a2, s5, a5
                  c.srai       a4, 28
                  divu         a1, s11, a0
                  divu         a2, a0, s7
                  div          t0, sp, sp
                  addi         s0, t6, 1168
                  c.add        t2, s4
                  c.addi4spn   a4, sp, 288
                  ori          a5, t6, -1606
                  add          a1, s1, s8
                  slti         a6, a2, 80
                  xor          zero, a7, s5
                  slt          s11, a1, ra
                  c.and        a4, a3
                  divu         t1, s4, s7
                  c.srai       a4, 30
                  srai         a6, a4, 6
                  c.slli       s0, 6
                  and          a4, a1, s8
                  nop
                  sltu         a6, s8, a1
                  c.slli       t2, 15
                  c.srai       a4, 26
                  divu         s3, t2, tp
                  xor          a6, a4, a6
                  c.srai       s1, 19
                  and          a6, a5, s7
                  c.srai       s0, 8
                  divu         a2, a6, s9
                  ori          s8, ra, 52
                  mulhu        s11, tp, zero
                  ori          s9, t5, -1419
                  srl          t2, s1, s5
                  mul          a1, t3, t6
                  xori         t3, tp, 1270
                  c.srai       a2, 25
                  nop
                  srli         a6, t4, 1
                  c.slli       s0, 27
                  c.add        s3, t1
                  c.srai       a5, 10
                  sltiu        s10, a6, 366
                  xor          s7, ra, a7
                  srli         a5, a5, 19
                  sll          s6, a4, s0
                  srl          tp, s2, a0
                  c.addi4spn   s0, sp, 384
                  c.li         a1, 30
                  sra          t2, s5, sp
                  and          s5, gp, t0
                  auipc        zero, 384925
                  slti         t6, s3, -145
                  c.addi16sp   sp, 272
                  c.add        a5, a5
                  auipc        s5, 917511
                  andi         s9, t2, 1434
                  c.addi4spn   a5, sp, 160
                  c.mv         tp, a6
                  mulhsu       t3, s0, a1
                  c.andi       a4, 17
                  auipc        s9, 635727
                  sub          s7, a7, a4
                  c.addi16sp   sp, 400
                  c.srli       a1, 24
                  sub          s5, tp, t5
                  mul          a2, t4, sp
                  c.xor        a1, a4
                  or           t2, t0, sp
                  sub          s1, s3, s4
                  c.nop
                  sltiu        s0, s4, 1179
                  c.mv         s11, tp
                  lui          s8, 870629
                  rem          sp, s4, zero
                  or           a2, a0, a6
                  c.li         a5, -1
                  mulhsu       s10, zero, s4
                  c.addi16sp   sp, -16
                  auipc        zero, 81211
                  xor          t2, t3, a4
                  xor          t2, s2, a2
                  slti         a6, a4, 438
                  c.and        a2, a3
                  c.xor        s0, s0
                  sra          t3, a0, s5
                  c.or         a1, s0
                  addi         t0, t5, -1317
                  ori          a5, s6, -569
                  c.or         a2, a2
                  rem          s0, s4, a3
                  mulhu        ra, s4, s11
                  mulhu        tp, s9, t0
                  srl          zero, a2, t1
                  c.mv         s5, s2
                  c.srli       s0, 1
                  remu         t2, s10, s10
                  mul          s2, t0, t0
                  nop
                  addi         zero, s11, -1080
                  or           s7, sp, a5
                  sra          s1, s9, zero
                  c.andi       a1, 10
                  ori          t2, t6, -1300
                  c.or         a5, s0
                  sltu         s3, a3, t3
                  sra          t2, t4, t2
                  c.mv         s6, s7
                  ori          sp, a6, -535
                  c.sub        a0, a3
                  slti         ra, t3, 1423
                  c.nop
                  add          t0, t4, s6
                  c.andi       a2, -1
                  c.slli       s6, 25
                  c.mv         s9, s7
                  c.li         gp, 5
                  slti         s10, t3, 841
                  c.srli       s1, 30
                  c.srai       a2, 4
                  c.xor        s0, a0
                  c.sub        s1, a4
                  rem          sp, s1, s1
                  remu         a5, s10, t4
                  slti         s5, sp, 585
                  srl          t6, zero, tp
                  mul          sp, t6, a3
                  auipc        t0, 654758
                  c.addi       s2, 6
                  c.andi       a2, 18
                  andi         a4, s3, -754
                  auipc        s5, 772874
                  c.sub        s1, s0
                  srai         t5, t5, 29
                  c.addi16sp   sp, 256
                  sltu         t2, a5, t4
                  sltu         s0, s8, s1
                  auipc        s11, 998969
                  c.addi       s10, -1
                  c.lui        a6, 12
                  auipc        a1, 351527
                  auipc        t0, 248095
                  remu         s6, a4, a0
                  c.or         a1, a4
                  srl          a4, a2, a6
                  mul          a0, tp, s4
                  and          s6, s6, s9
                  c.add        s3, a0
                  or           s10, ra, t6
                  divu         s8, a3, s6
                  c.nop
                  c.mv         a0, ra
                  remu         a1, s4, a2
                  c.slli       t3, 13
                  xori         s8, a1, -1059
                  c.add        ra, s4
                  srai         s8, s8, 2
                  slt          s11, ra, s11
                  ori          a5, t6, 1995
                  c.lui        t6, 6
                  or           t6, s4, a0
                  c.mv         s5, tp
                  ori          a7, s1, -145
                  or           s1, a7, s10
                  xori         a7, ra, -1992
                  sltiu        tp, t2, -506
                  c.li         s6, 29
                  xor          t0, t6, tp
                  div          a4, ra, s9
                  c.sub        a4, a1
                  mul          t6, a0, s11
                  slti         t3, gp, -1855
                  c.nop
                  mulhsu       a7, s10, t1
                  sub          gp, s10, ra
                  c.and        s1, a4
                  and          zero, t4, zero
                  lui          tp, 506902
                  srl          s11, a0, tp
                  div          s9, a4, a5
                  slt          a1, zero, t5
                  c.xor        a2, a4
                  div          a7, sp, s8
                  addi         s9, s6, -21
                  c.addi4spn   s1, sp, 608
                  c.andi       a1, -1
                  divu         ra, t0, t1
                  remu         a7, s7, t4
                  c.addi       a1, -1
                  and          tp, t5, t1
                  ori          a7, a4, -499
                  c.li         ra, 29
                  xori         s11, s3, 992
                  divu         s3, t4, a3
                  sub          s8, s3, a3
                  andi         s9, t0, 1650
                  c.addi       t0, -1
                  mulhu        s2, ra, t0
                  c.addi4spn   s0, sp, 304
                  c.srli       a4, 29
                  c.mv         a5, s3
                  c.srli       s0, 1
                  or           s11, t1, s8
                  nop
                  c.li         a1, 9
                  srl          a7, s4, a6
                  sll          t1, s11, t0
                  addi         t0, t5, -309
                  sltu         t6, a0, t1
                  slli         a6, s9, 9
                  c.addi4spn   a5, sp, 16
                  c.and        s1, s1
                  sltu         a5, t1, t1
                  sltiu        zero, a1, -1462
                  c.sub        a2, a5
                  ori          zero, sp, 297
                  c.nop
                  auipc        zero, 664403
                  remu         a2, s7, s8
                  and          a6, a1, s8
                  c.and        s1, a3
                  andi         t1, s5, 426
                  divu         sp, s1, t6
                  mulhu        a4, sp, t2
                  slt          sp, t1, a1
                  andi         ra, s6, -219
                  sll          s11, s1, s1
                  sltiu        t0, t3, 1420
                  xori         a7, s10, -1170
                  sltu         a7, s0, a3
                  c.add        a1, a6
                  srli         ra, s3, 8
                  c.xor        a4, a3
                  c.addi       s9, -1
                  sll          s2, a5, a6
                  mul          s9, t2, s5
                  srai         gp, s4, 10
                  c.or         a1, a0
                  auipc        s8, 810139
                  remu         ra, t4, t4
                  c.addi       ra, 25
                  mulhu        s1, a1, s5
                  c.sub        a5, s1
                  addi         s2, s2, 1703
                  sll          s3, tp, s7
                  c.sub        a0, a5
                  add          s5, t3, s0
                  or           a5, t6, s11
                  andi         s3, t0, -234
                  auipc        a2, 213965
                  c.mv         a1, t1
                  c.addi4spn   a2, sp, 208
                  rem          a4, s5, s3
                  mulh         a6, a5, t0
                  c.andi       s0, 9
                  c.addi4spn   a4, sp, 624
                  and          t5, s7, s1
                  sll          ra, s9, sp
                  c.lui        a5, 14
                  or           t3, t3, s3
                  sra          a6, s1, a4
                  c.mv         s9, a5
                  xori         s2, s1, -1466
                  sub          a1, s10, s9
                  mulhu        t5, s6, a5
                  srai         s7, a0, 29
                  addi         a2, s3, -1446
                  div          a6, s8, ra
                  c.mv         t2, a3
                  divu         gp, t6, s2
                  sll          a7, t3, s11
                  slli         s1, s4, 7
                  srli         gp, zero, 25
                  div          t1, s8, s0
                  mulhsu       zero, s7, a6
                  mulhsu       s0, gp, t6
                  srl          s5, s9, ra
                  c.addi4spn   s0, sp, 976
                  sltiu        a4, s9, 2028
                  c.addi16sp   sp, 320
                  c.add        a2, s7
                  auipc        s8, 593418
                  c.and        a2, a3
                  c.and        a2, a0
                  slli         s6, a7, 9
                  c.srli       a4, 21
                  ori          s0, a2, 1410
                  c.srai       a0, 31
                  c.andi       s0, -1
                  c.add        s7, ra
                  c.addi4spn   s1, sp, 608
                  lui          gp, 702084
                  xor          gp, s0, s4
                  mulh         a4, s3, s10
                  nop
                  slti         t1, s4, -625
                  c.addi       t5, 27
                  c.xor        a2, s0
                  mul          s0, t1, sp
                  auipc        t6, 1003452
                  c.srli       a4, 24
                  c.addi16sp   sp, 80
                  xor          a6, a6, a6
                  divu         a7, t4, s7
                  or           s2, t1, s8
                  c.slli       t6, 11
                  xor          s6, s1, t2
                  c.addi16sp   sp, -16
                  mulhu        s11, a7, s3
                  srai         t5, t1, 1
                  sltu         a0, a3, a2
                  div          s7, s1, t0
                  sll          s9, s4, s5
                  c.srai       a1, 14
                  nop
                  c.andi       a5, -1
                  c.li         s10, 30
                  c.li         t1, -1
                  srl          a7, a3, a7
                  srl          s1, s8, s11
                  sltiu        s6, a2, -1222
                  c.addi16sp   sp, -16
                  mulh         s8, a3, a6
                  sra          t5, zero, a0
                  c.or         s0, s1
                  xor          a1, s11, a2
                  sll          s7, s5, t0
                  and          a7, s5, a0
                  div          s7, s10, s9
                  mulh         a0, t6, gp
                  c.nop
                  c.addi4spn   a2, sp, 560
                  rem          s6, s2, s7
                  rem          gp, s8, t6
                  remu         zero, s11, s10
                  sra          t5, a6, s7
                  c.addi4spn   a0, sp, 560
                  mulhsu       s3, a1, s2
                  lui          t3, 334241
                  add          s3, t1, a6
                  xori         a4, sp, 30
                  mulh         a0, t3, s1
                  c.srli       a4, 28
                  c.and        a4, s0
                  divu         s7, s8, s7
                  c.mv         t6, s4
                  c.addi       a5, 11
                  c.li         a6, 13
                  auipc        s7, 216914
                  divu         t1, s11, sp
                  sll          tp, gp, a4
                  c.srai       a2, 6
                  sll          s0, a5, a7
                  c.li         s5, -1
                  divu         t2, zero, tp
                  mulhu        s8, s6, ra
                  c.addi4spn   a1, sp, 848
                  c.addi       sp, -1
                  and          gp, t0, s2
                  mul          s1, s1, a3
                  addi         s9, a4, -997
                  divu         t1, s1, tp
                  mulh         s9, t2, a6
                  rem          s9, s10, t2
                  mulhsu       t6, a3, zero
                  mul          s10, gp, t2
                  auipc        s5, 227453
                  sltu         ra, a0, t1
                  sub          t5, gp, s6
                  sltiu        s11, gp, -692
                  c.srai       s1, 13
                  c.lui        t1, 26
                  and          s11, s4, t6
                  slli         t3, s2, 16
                  slti         s11, a4, 1622
                  c.or         a4, a4
                  c.addi16sp   sp, 32
                  divu         s10, gp, a2
                  c.and        s1, a4
                  sltu         ra, s3, s10
                  xor          t6, t1, s1
                  auipc        s10, 394665
                  xori         a4, s6, 1197
                  mulh         t0, t0, a0
                  c.sub        s0, a0
                  remu         t5, s9, a0
                  mulh         a7, ra, s1
                  ori          a5, a2, -918
                  c.srli       a1, 27
                  c.or         s1, s0
                  c.addi4spn   a1, sp, 16
                  mulhsu       a6, a5, t1
                  sltiu        s9, s7, 1663
                  c.nop
                  xori         s6, a6, 1378
                  remu         s5, t3, ra
                  c.addi       gp, -1
                  mul          s6, s6, a0
                  slt          s5, s5, a7
                  andi         s9, s5, -203
                  div          s8, sp, s8
                  c.sub        a0, s0
                  mulhu        t3, a4, s10
                  andi         s3, a4, -1324
                  c.lui        s8, 1
                  andi         a1, s5, -1147
                  c.li         s1, 18
                  mulhu        tp, a7, a6
                  c.srli       a0, 3
                  c.mv         s8, a4
                  srli         t2, a4, 17
                  srl          t6, s2, s1
                  and          a1, s5, sp
                  xori         a6, a6, 1705
                  or           ra, a5, tp
                  andi         s5, s4, -949
                  mulh         s5, s0, a6
                  c.xor        a5, a1
                  andi         sp, a7, -616
                  sll          zero, s3, a5
                  c.addi16sp   sp, 448
                  c.srli       s1, 21
                  sll          s11, t3, ra
                  c.slli       ra, 25
                  mulh         a6, a7, t0
                  add          tp, s9, a2
                  sltu         s1, s6, s6
                  srl          a7, a3, t2
                  mulhu        a1, s6, a0
                  mul          t1, a3, s3
                  sub          s8, s9, zero
                  nop
                  c.li         s11, 5
                  slt          a0, s4, gp
                  c.or         s1, a3
                  c.li         a1, 29
                  srl          a6, s4, s7
                  lui          a4, 859716
                  mulh         s0, a0, s5
                  srai         t1, s0, 14
                  c.sub        a5, a3
                  c.or         a2, s1
                  sltu         s2, ra, s8
                  srl          s0, a1, t3
                  mulhsu       t6, s9, t5
                  c.mv         t6, s6
                  andi         sp, t0, 177
                  auipc        s8, 1034521
                  sltiu        a1, a0, -932
                  c.or         a5, a4
                  srli         t6, s3, 30
                  slt          gp, s7, s7
                  c.and        a0, s0
                  sltiu        t3, s11, -2022
                  c.li         tp, 30
                  c.mv         s11, s0
                  slli         a6, a0, 4
                  ori          t6, s3, 67
                  xor          a2, t4, s7
                  rem          t6, a2, a2
                  auipc        a2, 91987
                  div          s6, zero, t3
                  c.andi       a4, -1
                  xori         s3, s4, -193
                  slt          s11, ra, t4
                  auipc        a5, 138707
                  c.andi       s0, 16
                  c.nop
                  srli         a2, s7, 22
                  slli         a6, a3, 22
                  c.nop
                  slli         sp, s3, 12
                  nop
                  c.addi16sp   sp, -16
                  mul          a5, s3, sp
                  c.addi4spn   a2, sp, 352
                  c.nop
                  lui          t1, 120143
                  ori          zero, s5, -52
                  c.add        s1, t2
                  remu         t0, t6, s11
                  mulhsu       a2, t3, s6
                  sltu         t1, s4, a3
                  c.mv         s3, t0
                  mul          ra, t5, a4
                  c.addi16sp   sp, -16
                  sra          s7, t0, s3
                  c.nop
                  sra          s3, s4, s3
                  sub          a4, t0, gp
                  auipc        a4, 422571
                  c.mv         s7, s9
                  andi         a7, a7, -1910
                  slti         s9, a2, -1813
                  and          a1, gp, s7
                  c.xor        a2, s1
                  c.addi       t1, -1
                  c.li         s2, 7
                  c.addi       a5, 1
                  div          a6, t3, t4
                  c.sub        a0, a5
                  c.addi4spn   a4, sp, 1008
                  c.xor        a4, a0
                  c.addi4spn   s0, sp, 368
                  xori         s0, s11, 925
                  srl          s1, gp, s5
                  xori         s11, s2, 1524
                  c.srli       a0, 26
                  remu         gp, s4, s9
                  c.add        a6, s3
                  or           t1, t6, a5
                  xor          zero, s7, t4
                  slli         a4, s4, 4
                  xori         sp, t3, -841
                  srli         sp, tp, 23
                  c.and        a5, a4
                  sub          a1, s0, s9
                  c.slli       a4, 3
                  divu         s3, a3, s6
                  srai         a4, ra, 5
                  slt          s3, s10, ra
                  div          s9, s4, a7
                  c.add        a0, gp
                  sltiu        ra, ra, -1984
                  sll          zero, t0, a5
                  srli         a2, s1, 8
                  nop
                  rem          t2, s8, s8
                  nop
                  slli         s1, a1, 2
                  addi         t5, zero, 910
                  remu         s11, s5, t3
                  sub          a7, s11, t0
                  sub          t5, ra, a1
                  c.addi4spn   s1, sp, 720
                  c.addi4spn   a1, sp, 560
                  slt          s1, s4, s2
                  mulh         tp, t2, s8
                  add          a2, a6, s4
                  c.sub        a0, s0
                  remu         a7, s5, a7
                  lui          t6, 311802
                  div          s0, t5, sp
                  rem          s2, s1, a6
                  ori          a6, gp, 297
                  mulh         t0, t3, zero
                  c.addi4spn   a2, sp, 944
                  c.slli       s9, 17
                  addi         s7, t4, 1712
                  c.srli       a5, 23
                  c.addi4spn   a0, sp, 496
                  c.or         a4, s0
                  auipc        ra, 1012128
                  sra          t6, tp, s9
                  c.addi16sp   sp, -16
                  mulh         a2, t6, s5
                  c.li         a5, 12
                  c.add        a4, a7
                  mulhu        t0, a4, a7
                  remu         s6, s8, a4
                  c.li         s5, 0
                  nop
                  xori         s2, a6, -1834
                  c.mv         s0, a2
                  slli         s11, a2, 8
                  mulh         a0, t3, t3
                  add          s7, s11, a1
                  mulhsu       tp, s10, s4
                  c.addi16sp   sp, 128
                  ori          a1, a4, -355
                  c.addi       sp, -1
                  slt          a6, a1, s11
                  divu         s1, s6, a4
                  mul          s3, t2, t2
                  c.or         a5, a1
                  c.li         s1, 29
                  add          s2, a1, s0
                  c.addi       a0, -1
                  addi         ra, s1, -1875
                  c.add        s8, a3
                  rem          ra, t3, s3
                  slti         a4, a0, 186
                  rem          sp, s4, t1
                  c.slli       s6, 31
                  remu         s9, s4, t4
                  sra          s5, a6, s7
                  xor          sp, s6, t6
                  andi         s10, t0, -1997
                  addi         t2, s1, 1039
                  rem          t6, s9, a4
                  mulhu        t1, a6, s9
                  xor          s2, a4, s4
                  slti         sp, sp, -110
                  c.sub        a0, a5
                  sub          s10, gp, t4
                  srai         t0, t3, 18
                  nop
                  mulh         a4, a4, s4
                  lui          s0, 838641
                  c.lui        a5, 6
                  sub          s5, t2, s0
                  auipc        t2, 366313
                  mul          s7, gp, t0
                  add          s7, s4, t0
                  andi         a7, s6, 29
                  divu         s9, t6, s6
                  sra          ra, s8, gp
                  sra          t5, a4, t4
                  remu         t1, a3, t3
                  xori         s8, ra, -1106
                  divu         s2, a1, a6
                  mulh         s7, t1, t2
                  c.srli       a5, 25
                  c.addi4spn   a4, sp, 960
                  c.andi       s1, 5
                  sltiu        a6, tp, 800
                  slti         s8, tp, -100
                  addi         s1, t1, -317
                  sltiu        gp, a2, 1423
                  lui          s3, 304318
                  c.and        a0, a3
                  c.and        a1, a5
                  sltu         s11, t5, s5
                  sra          s7, s2, s11
                  div          a5, a6, s0
                  c.xor        a2, a1
                  mul          s8, t0, a6
                  c.addi4spn   a4, sp, 496
                  c.andi       s0, 31
                  mulhu        s1, t0, s11
                  add          t1, s3, s3
                  sub          s3, a2, s10
                  c.mv         s9, a0
                  mulh         t5, t0, s2
                  slli         tp, a7, 12
                  c.or         a1, a0
                  auipc        s5, 342181
                  rem          s9, t4, s1
                  c.lui        a5, 8
                  and          s9, s11, s4
                  c.slli       s1, 29
                  slli         tp, s4, 31
                  c.or         a4, a1
                  mul          sp, tp, tp
                  c.li         t5, -1
                  c.lui        ra, 3
                  c.srli       a5, 17
                  mul          a7, s4, a4
                  addi         a6, a4, -1826
                  auipc        a4, 831692
                  andi         gp, a2, -1215
                  xor          s1, s1, sp
                  remu         s0, a4, ra
                  mul          a7, t4, t3
                  mulhsu       s6, t1, s8
                  srl          a0, s4, s11
                  andi         s1, s5, -1953
                  c.sub        a0, s0
                  c.xor        s0, a3
                  addi         a7, t6, -411
                  c.srli       a0, 17
                  xor          s11, s8, s4
                  mulh         s0, s11, t5
                  mulhu        a4, gp, t6
                  c.andi       a1, 6
                  nop
                  mulhsu       s7, t6, tp
                  c.and        a2, s0
                  remu         sp, a7, a3
                  sra          s3, s2, sp
                  divu         a2, a4, a7
                  and          a2, s2, t1
                  div          s1, t4, s9
                  sub          t2, t4, s4
                  sra          s11, s9, s8
                  c.sub        a1, s1
                  c.addi4spn   s1, sp, 944
                  c.li         s5, 24
                  or           a2, a6, a1
                  c.slli       t5, 6
                  mul          gp, s2, sp
                  sub          t0, ra, t0
                  c.add        a7, a1
                  mul          a1, s11, s8
                  mulhu        s0, gp, s4
                  andi         tp, t6, 1247
                  c.addi16sp   sp, 464
                  c.xor        s1, s0
                  c.add        s2, a4
                  c.addi4spn   a0, sp, 272
                  c.andi       a2, 31
                  xor          s3, t3, t0
                  sltiu        a6, s3, -422
                  xori         a2, s0, -285
                  srl          s3, s6, t6
                  andi         t3, a2, 1846
                  c.srai       s0, 8
                  srai         s6, s10, 30
                  c.addi16sp   sp, 352
                  slti         s0, a1, -1653
                  srl          t0, a3, a4
                  mulhu        sp, zero, s4
                  c.mv         s2, s6
                  sltiu        t6, s3, 337
                  nop
                  ori          a5, t4, 1237
                  div          a5, s4, a0
                  or           s3, a1, a5
                  slli         a2, t0, 7
                  c.nop
                  sltu         s2, s3, s5
                  c.or         a1, a3
                  ori          tp, zero, -1355
                  nop
                  xor          a6, s11, s7
                  andi         s7, t3, 1254
                  nop
                  auipc        zero, 407499
                  c.li         a1, 15
                  c.li         t0, -1
                  xori         a7, a0, -590
                  slt          s7, s0, zero
                  c.addi4spn   a1, sp, 496
                  mul          s10, s10, sp
                  c.lui        a1, 28
                  c.nop
                  slli         a7, s2, 20
                  divu         tp, a5, t5
                  slli         t6, a7, 0
                  auipc        t2, 353466
                  c.andi       a4, -1
                  divu         t0, a5, s5
                  c.lui        s5, 28
                  sub          s2, a2, a6
                  srli         s2, t3, 27
                  mul          t6, s6, a3
                  sra          s11, s2, a0
                  srli         s8, a2, 6
                  mulh         t5, s9, a3
                  auipc        t5, 988876
                  mulhu        t2, ra, s6
                  sra          a2, zero, s4
                  c.srli       a2, 19
                  xor          s0, s8, t3
                  remu         s5, s9, t5
                  mul          s0, sp, s0
                  c.lui        tp, 15
                  c.nop
                  srai         a7, s4, 15
                  sub          s8, s10, a2
                  divu         t1, s0, s1
                  remu         s3, t2, t4
                  c.addi4spn   s1, sp, 656
                  xor          sp, s0, s7
                  c.li         t5, 24
                  c.sub        s1, a0
                  c.or         s1, a4
                  remu         ra, a5, s7
                  srai         s11, a4, 7
                  rem          t1, a0, s6
                  xori         t6, a2, -1628
                  rem          a2, sp, s2
                  nop
                  rem          a4, s5, s3
                  nop
                  sltiu        s1, a0, 1429
                  mulh         a1, a5, s5
                  slt          zero, t3, s10
                  sltu         t3, a1, s9
                  srli         s8, s4, 17
                  andi         zero, s5, 2018
                  c.li         gp, -1
                  c.srli       s1, 28
                  srai         s1, s5, 12
                  c.slli       ra, 6
                  auipc        t2, 435992
                  c.srai       s0, 2
                  div          zero, s3, a5
                  mul          ra, s2, a6
                  sltu         a6, s5, s3
                  addi         a7, s4, -1853
                  c.addi4spn   a1, sp, 448
                  rem          zero, s9, t6
                  c.or         a5, s1
                  mulhu        s2, s2, zero
                  mulhu        a7, a2, zero
                  c.addi16sp   sp, -16
                  andi         s10, s8, -32
                  c.add        gp, s1
                  c.and        a2, s0
                  sra          sp, s2, a3
                  sltu         s1, t1, t2
                  c.addi       tp, -1
                  xori         t6, ra, -1593
                  c.andi       a0, 19
                  andi         s9, s8, -1882
                  sltiu        a0, s4, -980
                  sra          t5, s2, s2
                  mulh         s10, ra, zero
                  mulhu        s2, tp, s2
                  c.sub        a2, s0
                  andi         s6, a1, -143
                  mul          gp, s4, s8
                  sub          ra, t1, t0
                  slli         a6, a6, 30
                  srai         s1, sp, 0
                  c.sub        a4, a5
                  mulhu        a6, s10, s7
                  sra          s10, a6, s6
                  mulh         s7, s8, t4
                  c.sub        s1, a3
                  c.addi16sp   sp, -16
                  sltu         s6, t4, a6
                  srai         a1, s8, 22
                  srl          a1, s7, s3
                  srli         t6, gp, 0
                  c.or         a0, a4
                  c.and        a4, a2
                  div          s8, t1, a5
                  c.li         s10, -1
                  c.add        s10, ra
                  sltu         t2, a5, s9
                  srli         sp, s5, 18
                  c.addi4spn   a5, sp, 624
                  ori          gp, s3, 1588
                  c.slli       t3, 27
                  c.srli       a2, 29
                  c.and        a1, s1
                  srai         t2, t3, 7
                  div          s10, sp, a5
                  c.sub        a5, s1
                  srli         a0, s4, 5
                  sra          s2, a7, t1
                  andi         tp, s5, -1824
                  sra          a7, s6, s0
                  mulhu        ra, gp, ra
                  ori          gp, a4, 832
                  auipc        a4, 490814
                  mulh         t3, s8, t2
                  divu         a2, ra, s3
                  slt          s9, a0, s8
                  c.srai       s0, 22
                  and          s0, sp, a5
                  remu         a1, t2, a4
                  mulh         s9, s10, s3
                  xor          sp, t0, a0
                  ori          sp, gp, 1189
                  c.srli       a4, 18
                  mulhsu       t0, sp, t1
                  ori          sp, s1, 1959
                  nop
                  c.addi4spn   s0, sp, 656
                  divu         s6, t6, t6
                  slti         t1, gp, -1025
                  c.mv         s9, s6
                  mulhsu       zero, t3, a0
                  or           zero, s2, s0
                  srli         a1, s4, 8
                  auipc        t1, 268612
                  auipc        t2, 650986
                  nop
                  rem          a4, s4, s11
                  srl          s0, s6, s0
                  srl          s10, s9, a5
                  nop
                  c.addi       s0, -1
                  c.lui        s1, 13
                  or           s10, t3, ra
                  andi         tp, t4, 134
                  c.li         s11, -1
                  nop
                  sltu         s3, s4, s8
                  c.addi       s3, -1
                  c.sub        s0, s1
                  xor          tp, s0, t1
                  c.addi       a0, 8
                  div          t6, a0, a1
                  divu         s5, sp, s8
                  sra          t6, s7, s1
                  c.add        s5, a7
                  sub          s6, gp, t1
                  rem          tp, s2, s0
                  mulh         t0, s3, s11
                  c.addi16sp   sp, 96
                  srai         s11, a4, 3
                  slli         tp, t5, 21
                  addi         s11, s8, 233
                  mulh         a7, s1, a7
                  sub          a1, s7, a5
                  auipc        s2, 565365
                  mul          s0, t6, s8
                  ori          zero, s5, -106
                  c.srai       a4, 29
                  mulhsu       sp, s6, a1
                  slli         s3, t6, 19
                  rem          sp, a3, s10
                  or           a2, t0, s5
                  mulhsu       s3, t4, s8
                  sub          s0, a1, a3
                  slli         t1, s0, 19
                  c.addi       s6, -1
                  c.lui        a4, 30
                  sltiu        s7, s4, -435
                  c.andi       a2, -1
                  srai         s3, s0, 19
                  xori         gp, a0, -597
                  sltiu        s3, t0, 753
                  mul          s8, sp, a0
                  xor          s7, zero, a7
                  srai         s1, s11, 24
                  c.slli       s3, 17
                  srli         a2, s10, 24
                  c.srli       a4, 12
                  c.li         sp, 20
                  slti         t1, s4, 888
                  srli         t6, a3, 25
                  nop
                  div          s7, t5, s4
                  andi         a1, s2, -622
                  mulh         s9, t5, t5
                  remu         t3, sp, s5
                  xori         s0, s9, -1280
                  sll          t2, s10, gp
                  c.addi16sp   sp, -16
                  slt          s7, s5, s2
                  c.addi4spn   a1, sp, 144
                  remu         gp, s5, a1
                  xori         tp, a3, -855
                  slti         t2, s5, -689
                  remu         t0, s2, a1
                  mulh         s9, s3, t4
                  auipc        s2, 557916
                  add          a2, s9, s8
                  c.li         t2, -1
                  ori          s0, sp, 1346
                  c.andi       a5, -1
                  mulhsu       s6, s8, a4
                  c.lui        t3, 11
                  mul          s2, zero, s11
                  mulh         a2, a1, a2
                  add          s5, s3, s11
                  c.andi       a0, -1
                  c.andi       a5, -1
                  or           t1, t5, s5
                  c.srai       a5, 5
                  slti         s8, t4, 1459
                  mulhu        s9, gp, t3
                  div          a5, a5, t2
                  slt          t2, t1, s3
                  div          t0, t4, s6
                  c.addi       a4, 20
                  and          s2, s9, tp
                  c.sub        a2, a0
                  div          t5, ra, s0
                  rem          s8, t1, a3
                  or           gp, s4, s0
                  sub          a5, t2, t1
                  sltiu        t5, s6, -216
                  add          sp, a6, s10
                  sub          t6, s4, s2
                  c.and        a4, a1
                  ori          a2, gp, -920
                  c.slli       tp, 3
                  nop
                  sub          s9, gp, a7
                  mulh         a7, s4, a3
                  c.and        a5, a4
                  c.lui        a5, 26
                  c.slli       a0, 19
                  c.add        a0, tp
                  li           t3, 0xffffffff #start riscv_int_numeric_corner_stream_12
                  li           a1, 0x20867950
                  li           s7, 0xffffffff
                  li           a7, 0x0
                  li           s11, 0x73de9836
                  li           a4, 0xd80f69c7
                  li           a6, 0x0
                  li           s9, 0x5c7e6f8f
                  li           a5, 0xb554f4a6
                  li           ra, 0x8fa22f77
                  div          ra, t3, a1
                  nop
                  nop
                  mul          ra, t3, s11
                  divu         a4, a6, a6
                  addi         s11, a7, -124
                  lui          s11, 831770
                  nop
                  add          s9, t3, s11
                  mulhu        a6, a5, a1
                  addi         ra, a4, -1570
                  divu         a4, a7, ra
                  mulh         s7, s11, a1
                  remu         a5, a5, ra
                  nop
                  add          a1, a4, t3
                  sub          a5, a4, a7
                  auipc        a1, 417729
                  mul          s11, s7, a6
                  mul          s7, s7, a7
                  addi         s7, t3, -277
                  auipc        t3, 604515
                  lui          s9, 445404
                  mulh         a1, a1, s7
                  sub          a5, a1, s9
                  divu         s7, s7, s7
                  auipc        t3, 541415
                  rem          a5, t3, t3
                  lui          a1, 52385 #end riscv_int_numeric_corner_stream_12
                  auipc        t1, 702870
                  c.lui        gp, 27
                  c.slli       t1, 6
                  div          tp, t3, t1
                  mulh         tp, t6, t5
                  slt          t2, s8, zero
                  c.sub        a1, a5
                  sub          s10, a0, s4
                  c.srai       a1, 16
                  and          s8, s11, a4
                  c.srai       a2, 30
                  srl          s8, a3, ra
                  addi         ra, gp, 1426
                  c.lui        a6, 11
                  or           t2, a4, a3
                  and          a6, t6, a7
                  c.addi       s5, 24
                  div          a7, a3, t4
                  mulh         a0, s4, s10
                  srai         gp, a1, 11
                  xori         t5, a3, -1674
                  mulhu        s1, a6, t3
                  rem          ra, s4, t6
                  mul          a1, zero, ra
                  c.lui        t2, 24
                  c.srli       a2, 14
                  auipc        s8, 778051
                  remu         s10, a5, s10
                  c.nop
                  c.sub        a4, s0
                  mulh         t6, s10, a4
                  c.xor        a5, a0
                  slt          s7, s10, a1
                  sltiu        s3, a7, -739
                  c.slli       s2, 19
                  andi         s0, t1, 599
                  c.lui        s1, 12
                  lui          zero, 869321
                  c.mv         a7, s5
                  divu         a6, t2, a0
                  andi         a0, a7, -335
                  nop
                  c.and        s1, a4
                  ori          s3, t2, -1379
                  and          sp, a3, s10
                  rem          t3, a0, s9
                  c.xor        s1, s1
                  xor          t1, s9, a3
                  c.or         a5, a0
                  c.srli       a0, 28
                  andi         t0, t2, 129
                  c.li         gp, 1
                  rem          s7, t6, ra
                  sub          t0, t4, t1
                  srli         a6, a0, 31
                  lui          zero, 855807
                  sub          a7, t4, t6
                  slt          zero, s5, a4
                  c.xor        a2, s0
                  divu         t3, s7, t0
                  srli         t6, t6, 8
                  c.addi       s10, 18
                  c.sub        a1, s0
                  c.or         a0, a1
                  andi         tp, s10, 127
                  c.nop
                  xor          s9, t4, s0
                  div          s6, sp, a0
                  c.addi       s11, 27
                  c.addi4spn   a5, sp, 816
                  sra          t2, a0, sp
                  c.or         s1, a0
                  srli         tp, t4, 6
                  srl          a2, t1, t2
                  slt          t0, t0, a3
                  sll          a7, t6, s10
                  auipc        s1, 94232
                  remu         t6, s3, ra
                  srai         a2, t4, 24
                  sub          a1, gp, s4
                  addi         a0, s2, 1483
                  and          s3, t4, gp
                  slli         s11, sp, 16
                  c.slli       t6, 23
                  c.addi       s5, -1
                  sra          t1, ra, s6
                  slli         a2, s11, 30
                  c.nop
                  ori          s9, s8, -915
                  srl          ra, a2, s1
                  c.srai       a5, 18
                  ori          s0, sp, -893
                  mul          ra, a4, s11
                  srli         a6, s5, 25
                  mulhu        s3, a4, s10
                  c.or         a4, s0
                  c.addi       a4, -1
                  andi         t5, a6, 1546
                  slli         a0, t6, 19
                  c.slli       t5, 11
                  sra          s5, sp, gp
                  c.addi4spn   a5, sp, 112
                  c.srai       s1, 19
                  srli         s9, s6, 15
                  divu         s10, t5, s1
                  ori          s7, s11, 963
                  andi         zero, s5, 1380
                  or           s8, s11, s7
                  sltiu        a6, s6, 412
                  slli         t6, zero, 6
                  c.srli       a1, 8
                  c.sub        a4, a4
                  c.lui        s10, 29
                  divu         s6, tp, s2
                  c.andi       a5, -1
                  divu         gp, t5, a3
                  div          gp, sp, tp
                  remu         s0, ra, t4
                  addi         s11, s8, -1549
                  c.addi       a6, -1
                  or           a1, s9, s1
                  slli         s10, a0, 27
                  sltu         t1, s6, ra
                  or           s6, t1, a3
                  mul          a5, t0, s1
                  c.addi4spn   a4, sp, 208
                  slt          s11, s9, s4
                  lui          s8, 332489
                  or           s0, s5, s8
                  c.srai       a2, 22
                  srl          t6, sp, t6
                  slti         tp, a0, -1852
                  mul          t0, t5, t6
                  add          a5, s1, t6
                  srai         s10, s6, 10
                  ori          s1, a4, 1783
                  ori          t6, tp, 1131
                  c.slli       s2, 22
                  div          s10, ra, s3
                  xori         t0, s4, 1596
                  remu         s5, s10, a7
                  c.slli       t0, 28
                  c.mv         s10, s9
                  c.and        a4, a3
                  rem          t2, a2, tp
                  rem          s5, s2, s7
                  c.srli       a0, 25
                  remu         ra, t0, a7
                  c.sub        s1, a3
                  c.andi       a1, 5
                  auipc        a0, 151633
                  slt          gp, s2, a1
                  srli         zero, a4, 8
                  mulhsu       s9, t1, s5
                  c.and        s1, a3
                  slt          s8, t2, s6
                  c.addi16sp   sp, -16
                  c.nop
                  sltiu        zero, zero, 1945
                  rem          s0, s2, s3
                  sra          t3, s10, a6
                  divu         a7, a7, t6
                  srai         t0, t5, 27
                  nop
                  sltiu        s10, s5, -308
                  divu         zero, a2, a1
                  c.sub        a4, s0
                  add          ra, a4, t1
                  srai         s11, s11, 3
                  div          s1, s0, a1
                  c.addi16sp   sp, 144
                  slti         ra, s4, 756
                  c.lui        t0, 26
                  sub          s2, t0, s0
                  sub          t5, s9, s11
                  slt          sp, zero, t3
                  andi         s3, s5, -1137
                  sll          s11, a2, a2
                  nop
                  div          s2, s9, t5
                  sltu         t2, sp, gp
                  srai         t5, a4, 1
                  sltu         s1, sp, s7
                  sltu         s6, t4, t4
                  lui          s2, 963894
                  slt          sp, a1, s3
                  sltu         a1, t3, s6
                  ori          t1, ra, -513
                  divu         s1, t2, t2
                  sltiu        a2, s10, 1720
                  c.sub        a2, s1
                  sltu         s2, s11, s2
                  mul          s11, a1, s4
                  or           s6, s9, s0
                  srl          s8, s8, s0
                  c.addi4spn   s1, sp, 608
                  c.addi16sp   sp, -16
                  xori         t0, s6, -1739
                  mulhu        a1, s11, tp
                  c.sub        a4, a1
                  slti         t3, t6, 1318
                  c.or         a2, a3
                  c.srai       a2, 17
                  divu         t3, t0, t1
                  c.or         a2, a5
                  srl          s3, s0, s2
                  mulhu        t2, s5, zero
                  c.nop
                  c.srai       a1, 6
                  c.sub        s0, a3
                  c.li         t1, -1
                  c.slli       a6, 31
                  slti         t1, ra, 256
                  sll          s6, s2, sp
                  and          sp, a2, s10
                  slli         t2, sp, 12
                  srai         s5, a1, 12
                  c.xor        a0, a3
                  c.add        sp, tp
                  c.addi16sp   sp, 112
                  c.li         s2, -1
                  c.srli       s0, 21
                  c.li         t0, -1
                  xori         s7, s1, -2
                  c.addi       s10, -1
                  c.addi       s2, -1
                  slti         s11, t6, -769
                  mulh         s5, s9, s5
                  ori          t0, a6, 506
                  div          gp, s10, t2
                  c.sub        a1, a4
                  mulhsu       gp, ra, tp
                  srli         a5, zero, 12
                  andi         t6, t6, 576
                  remu         s3, a5, s10
                  c.andi       a0, 30
                  c.sub        a2, a5
                  slt          a6, s11, s4
                  c.slli       t3, 28
                  mulh         t3, s10, a4
                  or           a1, a2, ra
                  sltu         t3, s0, s8
                  c.slli       t3, 24
                  add          s1, a4, t0
                  remu         sp, s10, a2
                  mulhu        s8, s8, a6
                  sltu         t5, s8, t2
                  srli         s5, s8, 29
                  slt          a0, s9, s4
                  mul          a2, s1, s1
                  mulhsu       a2, gp, a5
                  mulh         s1, a6, s11
                  rem          t3, s11, t0
                  remu         sp, s1, s4
                  xor          s9, a7, t4
                  c.addi4spn   a4, sp, 960
                  add          a2, s5, a2
                  slt          s1, tp, s9
                  mul          tp, s9, a5
                  srli         a2, s5, 12
                  c.srai       a1, 10
                  c.li         a7, 20
                  slti         t1, t3, 1899
                  sll          s7, a0, zero
                  srai         s8, t2, 20
                  add          t0, sp, t3
                  add          a5, t3, a7
                  c.srli       a4, 17
                  c.addi16sp   sp, -16
                  add          t5, sp, s7
                  c.add        t1, s2
                  c.lui        a0, 29
                  addi         s0, a1, 1740
                  c.nop
                  c.addi4spn   a5, sp, 896
                  andi         s9, ra, 220
                  c.addi16sp   sp, -16
                  xor          t2, a1, a2
                  nop
                  auipc        tp, 744108
                  addi         s1, s3, -933
                  srl          a4, a6, t6
                  mulh         s10, a2, a7
                  auipc        s0, 938993
                  mulh         sp, s3, a3
                  c.lui        a2, 27
                  c.lui        tp, 29
                  rem          a0, s6, t4
                  div          s8, s8, t5
                  xor          ra, gp, s4
                  li           gp, 0x25ea504b #start riscv_int_numeric_corner_stream_34
                  li           s10, 0x0
                  li           s11, 0x0
                  li           a2, 0xffffffff
                  li           sp, 0xffffffff
                  li           s3, 0x80000000
                  li           s5, 0xbc37e1b1
                  li           a5, 0x234219cd
                  li           s8, 0xf0faf2f2
                  li           ra, 0xffffffff
                  add          a2, s3, s11
                  mulhu        s11, s10, s3
                  rem          s5, s10, s5
                  mulhsu       a5, ra, s5
                  sub          s8, s11, s10
                  nop
                  mul          s8, s10, a2
                  divu         s8, s3, sp
                  auipc        ra, 621791
                  divu         s11, s3, a2
                  lui          a5, 61078
                  divu         ra, a2, s11
                  addi         ra, gp, -804
                  mulhu        a5, a5, a5
                  auipc        sp, 503906
                  mulh         s11, s10, s11
                  mul          s8, s3, ra
                  auipc        s5, 999289 #end riscv_int_numeric_corner_stream_34
                  c.add        t2, s9
                  rem          s11, a5, s2
                  and          a2, s10, t3
                  sltu         s8, t2, a0
                  c.slli       s1, 25
                  slli         ra, s10, 31
                  c.and        a5, a3
                  c.mv         a0, t6
                  lui          t3, 778138
                  sltu         t5, s11, gp
                  c.and        a5, a2
                  c.add        s6, gp
                  mul          s10, a5, gp
                  c.andi       s1, 24
                  c.lui        t5, 5
                  mul          a5, a6, s11
                  c.srai       a2, 16
                  divu         s2, s4, s9
                  sub          t5, s2, t3
                  c.lui        s9, 20
                  li           sp, 0xffffffff #start riscv_int_numeric_corner_stream_30
                  li           t5, 0x80000000
                  li           s2, 0xbef42312
                  li           s1, 0x0
                  li           t6, 0x2d025756
                  li           a7, 0x0
                  li           s9, 0xffffffff
                  li           a4, 0xffffffff
                  li           ra, 0xffffffff
                  li           s7, 0x0
                  mulh         s7, t6, s9
                  rem          s9, ra, a4
                  addi         sp, sp, 1804
                  rem          a7, t5, t5
                  mulh         a4, sp, s7
                  mul          a4, s2, s2
                  auipc        s9, 1045764
                  divu         t5, s2, t5
                  div          sp, a4, sp
                  mul          s1, ra, sp
                  nop
                  addi         sp, s1, 1892
                  mulhsu       t6, t6, s1
                  div          t5, s9, s2
                  divu         sp, a4, s2
                  mulhsu       s7, sp, s9
                  add          a4, a4, ra
                  mulhsu       s2, s1, ra
                  mul          ra, s7, s7
                  mulh         sp, ra, a7
                  nop
                  divu         a7, s1, t5
                  nop
                  add          s7, s2, s9
                  mulh         s1, s9, s2
                  sub          s2, t6, ra
                  auipc        s1, 703019
                  remu         ra, s7, sp #end riscv_int_numeric_corner_stream_30
                  sltiu        s5, s0, -482
                  add          s3, s2, s8
                  c.and        a1, a3
                  sll          t2, a1, a3
                  c.addi4spn   s1, sp, 848
                  c.mv         s3, t2
                  sra          s8, s0, s6
                  mulhu        t6, tp, zero
                  c.lui        s2, 9
                  c.slli       s8, 26
                  rem          a2, t3, t5
                  c.srai       s1, 20
                  c.sub        a4, a0
                  andi         s6, t2, -1447
                  srli         a7, s5, 15
                  c.addi       a6, -1
                  c.mv         gp, a2
                  c.or         s1, a3
                  andi         a4, t4, 827
                  nop
                  ori          a2, s9, 1430
                  divu         t3, a2, a3
                  mul          s11, tp, a3
                  sra          a0, tp, t1
                  srl          s7, a4, s4
                  slti         s9, gp, -877
                  c.or         a2, a4
                  mul          s10, t5, s3
                  c.mv         s7, s2
                  slt          a4, t0, s5
                  c.slli       s2, 14
                  or           t3, s9, t3
                  c.lui        s11, 2
                  c.slli       tp, 3
                  remu         s8, a2, sp
                  c.srai       a2, 28
                  mul          a1, s9, a2
                  nop
                  mul          a0, t3, t2
                  c.xor        a2, a3
                  c.and        s1, a2
                  c.xor        a1, a4
                  and          s7, a6, s6
                  c.xor        s1, a4
                  srli         s6, sp, 20
                  srai         t1, t6, 9
                  sltu         t6, s0, s8
                  mulhsu       s9, a4, s4
                  c.sub        a2, a5
                  slli         s1, t6, 5
                  ori          a4, s4, -1865
                  c.andi       a1, -1
                  addi         s11, gp, -811
                  sra          t5, a6, s0
                  slt          s7, s9, s8
                  div          s10, t2, a2
                  rem          t0, sp, t6
                  sltu         t1, a5, a6
                  rem          a7, zero, ra
                  divu         a4, s10, s1
                  sub          t0, t0, a1
                  xor          s0, a2, s3
                  rem          sp, s6, a4
                  and          tp, s2, s3
                  rem          a0, t1, t4
                  sll          s3, a6, gp
                  sltu         s10, gp, s4
                  auipc        a0, 757610
                  sra          ra, a3, a2
                  c.add        t0, s10
                  sltiu        s3, a0, 102
                  srl          s6, t0, s8
                  srl          s1, a3, a7
                  c.addi4spn   a5, sp, 720
                  or           s0, a0, tp
                  sltu         s8, zero, t5
                  sll          s7, t3, t3
                  xor          s3, s2, gp
                  divu         s3, t6, a3
                  mul          a6, a7, gp
                  add          a2, ra, a4
                  xor          a0, s2, s8
                  sll          s5, s9, t4
                  c.slli       t5, 7
                  xori         t6, a7, -504
                  c.sub        a1, a2
                  sll          s1, s8, a2
                  slt          s3, ra, a3
                  c.mv         s11, a0
                  c.and        a0, a3
                  add          s2, t4, a6
                  mulhu        t5, t0, s7
                  c.addi4spn   s0, sp, 64
                  srl          t3, tp, a7
                  slt          s0, sp, zero
                  c.xor        a1, a5
                  sltiu        t3, a5, 1911
                  mulhu        s2, a7, a1
                  div          s5, t1, s6
                  auipc        s2, 225164
                  div          s2, s6, s9
                  sll          t3, a5, s5
                  addi         a6, sp, -852
                  c.srli       a0, 6
                  or           a7, a7, t0
                  c.or         a0, a5
                  c.andi       a5, 22
                  sltiu        a1, s4, 1893
                  c.and        a2, s0
                  c.or         a0, a2
                  mulhsu       s9, zero, zero
                  andi         a2, s6, -32
                  c.lui        s2, 22
                  sltu         a1, a7, s1
                  addi         gp, s1, 1345
                  c.addi       s0, 1
                  c.and        s1, a1
                  srli         t3, s7, 0
                  divu         t5, s0, s11
                  sub          a6, s5, s8
                  sub          s2, s11, s7
                  srl          a2, s9, s10
                  c.srai       a0, 25
                  c.nop
                  c.li         tp, -1
                  sltu         s9, a7, s1
                  c.nop
                  c.li         s3, -1
                  add          ra, s5, a0
                  slti         t5, s3, -959
                  mulhsu       t2, s5, s3
                  sltu         tp, ra, s6
                  srl          s1, t4, s5
                  c.sub        a2, a4
                  lui          a1, 436615
                  andi         s1, a0, 1189
                  nop
                  c.lui        t2, 7
                  c.addi4spn   a0, sp, 64
                  c.and        s1, a0
                  c.mv         s10, a7
                  c.nop
                  c.nop
                  c.lui        a6, 30
                  c.sub        a4, a2
                  c.slli       t2, 27
                  c.addi       a7, -1
                  srai         s3, a7, 19
                  div          t5, a3, sp
                  mul          tp, s0, a1
                  c.li         a5, 8
                  c.lui        t5, 24
                  sltiu        a0, t6, -1121
                  srai         a6, t4, 14
                  slt          gp, a6, s3
                  remu         t6, a6, a0
                  slti         ra, s2, -1382
                  c.or         s1, a2
                  c.lui        tp, 27
                  c.srli       s1, 31
                  srli         ra, a3, 1
                  mulhu        gp, s3, t2
                  sra          s6, t5, s3
                  c.addi16sp   sp, 320
                  c.srai       s1, 20
                  c.li         s8, 2
                  mulhsu       s11, s9, s11
                  div          t2, t1, s5
                  sra          s0, a3, t5
                  c.add        t1, t0
                  and          ra, s10, a3
                  and          zero, tp, t6
                  lui          a5, 335690
                  c.mv         a6, a4
                  xori         t3, sp, 158
                  sra          t6, s7, s11
                  remu         s10, ra, a1
                  or           sp, a5, a6
                  srl          s2, zero, sp
                  c.xor        a5, s0
                  divu         ra, s11, s2
                  c.add        a5, tp
                  rem          s5, s6, a3
                  c.lui        t2, 14
                  c.sub        s0, a3
                  addi         t5, a7, -969
                  c.andi       a4, 18
                  remu         t0, s10, s8
                  c.addi16sp   sp, -16
                  div          ra, gp, s5
                  add          tp, t0, t6
                  c.addi16sp   sp, -16
                  slt          s7, t3, s8
                  divu         s3, s4, t3
                  c.mv         t3, t1
                  ori          sp, t3, -1053
                  slli         t1, s5, 20
                  auipc        s8, 855514
                  c.addi4spn   a0, sp, 848
                  add          t3, a4, t3
                  addi         zero, t4, -1059
                  c.xor        s1, a4
                  slt          a2, s6, s8
                  mul          a2, tp, sp
                  divu         s7, a7, s11
                  and          t3, ra, t3
                  xor          a1, s7, zero
                  c.sub        a1, a5
                  addi         sp, a4, -1555
                  andi         a2, s9, 892
                  sub          t2, s6, s10
                  c.addi       s5, 30
                  and          a1, t6, s8
                  sltu         a2, a1, s11
                  slt          s5, a0, s10
                  li           t6, 0x670ffe9f #start riscv_int_numeric_corner_stream_3
                  li           s10, 0xffffffff
                  li           ra, 0x0
                  li           gp, 0x0
                  li           s7, 0x80000000
                  li           a4, 0x80000000
                  li           s3, 0xffffffff
                  li           s8, 0xffffffff
                  li           a6, 0xbbdaf3e9
                  li           a1, 0x80000000
                  mulh         ra, s3, a6
                  auipc        s3, 211525
                  auipc        s8, 1007765
                  mul          gp, t6, a4
                  div          s3, s7, s3
                  lui          gp, 735524
                  divu         a4, s10, ra
                  lui          a1, 519928
                  lui          s8, 292936
                  mulh         s10, s3, ra
                  add          t6, gp, s7
                  mulh         gp, a6, gp
                  add          ra, a4, s8
                  lui          s3, 957516
                  mulhsu       s3, ra, a1
                  sub          a4, s10, t6 #end riscv_int_numeric_corner_stream_3
                  c.and        a1, a0
                  sltu         s5, t2, s4
                  or           s6, s2, a1
                  lui          s8, 787461
                  sll          t2, s2, s1
                  c.addi16sp   sp, 272
                  sltiu        a6, t4, 355
                  sll          s3, t2, tp
                  mulhsu       s11, zero, a4
                  c.srli       a4, 26
                  and          t6, a2, a1
                  srl          gp, s1, zero
                  mulhsu       ra, t3, s0
                  c.or         a4, a1
                  c.lui        s9, 19
                  mul          t3, s3, a0
                  srli         tp, a2, 9
                  c.addi4spn   a5, sp, 608
                  ori          gp, t1, -220
                  c.addi       a6, 18
                  c.lui        s2, 20
                  addi         s9, sp, 935
                  c.and        a0, s1
                  divu         gp, t6, a1
                  lui          s6, 648880
                  c.slli       s2, 18
                  c.add        ra, s5
                  xor          t5, s8, a6
                  ori          s11, s6, -1841
                  addi         a5, ra, 2008
                  c.lui        tp, 18
                  c.srli       s0, 25
                  sltiu        s6, a5, 3
                  c.lui        s7, 19
                  auipc        s10, 785203
                  slt          t2, s6, s8
                  c.addi       t5, 9
                  nop
                  and          tp, s9, gp
                  c.addi16sp   sp, 192
                  slt          gp, sp, t6
                  c.mv         t2, ra
                  xori         s2, s8, 173
                  div          a0, s11, s5
                  c.slli       a5, 26
                  div          a7, s1, tp
                  sll          tp, a4, t1
                  c.and        s0, a0
                  div          gp, t3, a6
                  c.slli       a0, 14
                  andi         t5, s8, -1515
                  mulhu        t3, a4, s5
                  auipc        t5, 263041
                  c.li         gp, -1
                  and          s7, tp, ra
                  c.sub        a0, a2
                  mulhsu       zero, a2, s9
                  lui          ra, 617080
                  c.sub        a2, a4
                  c.mv         gp, t2
                  slt          t2, a3, a6
                  sll          a5, a7, s5
                  c.li         t2, -1
                  div          s11, t0, a0
                  c.slli       s11, 28
                  slti         s6, s4, 1325
                  c.slli       a2, 29
                  slti         zero, a1, 218
                  slt          s5, s0, tp
                  c.addi4spn   a4, sp, 176
                  divu         a4, t5, zero
                  c.nop
                  c.sub        a0, a2
                  ori          a7, a1, -998
                  c.and        a5, a4
                  mul          t2, s9, a2
                  mul          s10, a6, s6
                  c.addi4spn   a0, sp, 672
                  c.nop
                  c.addi16sp   sp, 368
                  div          s2, a7, s3
                  c.lui        t6, 13
                  srl          s1, s10, s2
                  c.srli       a2, 13
                  and          s9, s9, gp
                  auipc        a6, 430112
                  c.lui        a6, 23
                  c.mv         t5, s6
                  c.slli       s10, 19
                  c.add        s1, s9
                  mulhu        s5, a2, s1
                  c.srli       s0, 13
                  sltiu        t0, t4, -167
                  sub          s1, gp, sp
                  mulh         s6, tp, a7
                  c.xor        s1, s1
                  and          a2, a4, s5
                  c.addi4spn   s1, sp, 608
                  mul          s3, s11, a2
                  c.slli       ra, 14
                  c.andi       a2, -1
                  ori          s5, s11, 762
                  c.or         a1, a5
                  and          s9, zero, a5
                  ori          t1, zero, -1479
                  and          s5, s3, t2
                  mulh         s0, s2, s8
                  c.add        s10, t4
                  c.addi       ra, 15
                  c.add        s8, t3
                  c.nop
                  sub          a2, s8, sp
                  sll          ra, s6, s6
                  ori          a1, t1, -1431
                  c.nop
                  ori          a4, t2, -470
                  slt          t5, s0, t0
                  mul          zero, s6, s10
                  rem          s6, t3, a5
                  auipc        t3, 857186
                  c.or         s1, s0
                  divu         t1, zero, t2
                  ori          t1, s3, 1997
                  slli         a6, t1, 27
                  c.li         a6, -1
                  addi         s7, a4, 1084
                  c.srli       a2, 1
                  lui          a7, 154355
                  lui          s0, 880821
                  c.nop
                  srl          s7, ra, a2
                  sra          s1, s5, t5
                  mulhu        t6, a5, t4
                  c.srli       a5, 25
                  ori          t5, t1, -1448
                  c.sub        a1, a3
                  and          tp, a4, sp
                  slt          ra, a5, s8
                  andi         s1, a2, -223
                  sll          s5, s6, tp
                  sltiu        s2, a5, -1676
                  c.li         s7, -1
                  c.srai       s1, 25
                  slt          t3, s7, t5
                  or           s2, a5, s3
                  sltu         s11, gp, s1
                  mulh         a5, a2, gp
                  c.slli       s3, 12
                  divu         s6, t5, s10
                  slli         a0, s9, 0
                  slt          a0, t3, s9
                  c.sub        s1, s0
                  c.add        a0, s4
                  xori         a1, s6, -696
                  rem          a2, t5, tp
                  xori         a1, s7, 1602
                  ori          s2, s7, 1625
                  slt          s11, s9, sp
                  c.lui        a2, 24
                  c.srai       s0, 25
                  c.srli       a0, 12
                  sub          a6, a1, t0
                  div          zero, sp, a4
                  sltiu        ra, sp, 912
                  add          t3, t6, a2
                  nop
                  c.srli       a1, 23
                  xor          s2, a7, a6
                  addi         a1, s7, 1238
                  c.srai       a0, 19
                  c.nop
                  c.and        a1, a1
                  rem          gp, a4, a0
                  c.addi4spn   s1, sp, 576
                  remu         a0, s10, s5
                  sra          s10, sp, a4
                  c.addi       s7, 18
                  remu         s1, s7, a0
                  c.srai       s1, 10
                  c.slli       a1, 4
                  andi         t1, a7, -1480
                  sltu         t1, a6, s3
                  mul          a7, t1, s1
                  sltu         a6, tp, zero
                  divu         s6, t6, t6
                  c.andi       a0, -1
                  lui          s5, 696264
                  lui          t3, 466993
                  auipc        s3, 679962
                  mulhu        a7, t3, sp
                  mul          s3, a5, s2
                  c.slli       a4, 26
                  c.nop
                  c.lui        s7, 24
                  rem          tp, a3, a6
                  remu         s7, gp, s6
                  div          ra, a5, s8
                  lui          a2, 556456
                  c.srai       a2, 2
                  c.andi       a2, 19
                  c.addi4spn   a1, sp, 624
                  c.sub        a0, a2
                  c.lui        a5, 1
                  nop
                  srai         s1, t1, 27
                  remu         t6, a2, s7
                  sltiu        a7, s2, -174
                  ori          ra, tp, 1520
                  slti         s8, t4, -1690
                  rem          tp, t4, t3
                  srai         a4, s1, 1
                  slli         a4, tp, 1
                  sltiu        ra, sp, 683
                  auipc        a5, 129290
                  ori          s1, s11, 750
                  remu         zero, t5, s1
                  c.addi16sp   sp, 448
                  ori          t6, a4, 1622
                  xor          a7, s4, t3
                  auipc        a7, 984073
                  c.srai       a2, 22
                  c.sub        s1, a4
                  sltiu        a6, s10, -1113
                  c.slli       a2, 14
                  srl          a6, a7, a3
                  c.addi4spn   s0, sp, 736
                  slli         t1, s1, 27
                  mul          t2, sp, s8
                  c.lui        t3, 1
                  nop
                  sub          gp, s6, t5
                  c.andi       s0, 31
                  sub          a0, s10, s3
                  div          a2, a1, s5
                  c.addi16sp   sp, -16
                  c.srli       s1, 1
                  div          zero, s10, a7
                  c.and        a0, a1
                  slt          t1, a4, zero
                  sra          a1, a1, a3
                  sub          s9, s10, a7
                  div          zero, s3, gp
                  rem          s2, a7, ra
                  auipc        s6, 308022
                  srai         t6, a7, 20
                  c.li         t6, 26
                  c.xor        a2, a0
                  c.mv         a0, tp
                  c.and        a1, s1
                  srai         s3, s2, 5
                  c.andi       s1, 16
                  c.addi16sp   sp, -16
                  c.nop
                  c.sub        s0, a2
                  add          t3, gp, a7
                  c.and        a5, a1
                  xor          gp, s1, s5
                  slli         s7, a0, 31
                  divu         t5, a5, ra
                  slli         s0, s10, 8
                  c.addi16sp   sp, -16
                  add          t6, t6, t1
                  ori          t3, a6, -731
                  sltiu        tp, t6, -298
                  sra          t6, s7, tp
                  srai         a2, sp, 12
                  c.srli       a5, 10
                  c.and        a4, a0
                  andi         a6, t1, 1779
                  slt          t1, s9, sp
                  c.slli       a5, 20
                  nop
                  slt          s11, a3, t3
                  sub          s11, t6, t3
                  c.addi       t3, -1
                  c.or         a0, s1
                  auipc        zero, 794820
                  remu         s9, s2, gp
                  auipc        zero, 552775
                  srai         t5, s7, 23
                  sub          s8, a7, t3
                  slli         s3, s10, 22
                  auipc        t6, 136552
                  add          gp, s11, s6
                  div          s11, s1, t5
                  c.add        s3, s4
                  c.addi       s0, -1
                  slt          s0, t5, t5
                  mul          ra, s10, a1
                  c.addi16sp   sp, -16
                  mulh         a7, t5, s2
                  srli         zero, s11, 7
                  andi         a2, a7, -1286
                  mulhu        s6, t0, ra
                  slli         s6, a1, 26
                  xor          zero, t2, s2
                  c.srai       a4, 19
                  c.nop
                  add          a1, t0, a2
                  c.li         ra, -1
                  srli         s9, t1, 10
                  c.srai       a1, 17
                  sub          s8, t0, t2
                  c.srai       s0, 13
                  slt          t3, s11, a3
                  c.addi4spn   a4, sp, 384
                  auipc        s6, 494083
                  c.addi4spn   s0, sp, 800
                  sll          t3, a7, a0
                  c.andi       s1, -1
                  nop
                  mulhsu       s9, t1, a5
                  slli         t5, tp, 24
                  c.nop
                  c.addi4spn   a5, sp, 32
                  mulhu        a4, s1, zero
                  c.srai       s1, 15
                  c.nop
                  c.slli       a4, 11
                  c.sub        a1, a5
                  sltiu        gp, t2, -1780
                  div          s3, a6, s3
                  srl          s3, s8, s5
                  c.addi       s10, -1
                  c.add        s5, t3
                  c.addi16sp   sp, 32
                  xori         s1, s8, 1101
                  sra          a0, s4, a5
                  xor          t1, t6, s0
                  c.slli       a6, 3
                  c.sub        s1, a5
                  mulhu        a2, t5, s6
                  srai         t5, tp, 17
                  xori         t2, s8, -631
                  and          a1, ra, a7
                  mulhsu       sp, ra, s6
                  auipc        s0, 141311
                  srai         s10, a2, 3
                  ori          gp, sp, -1803
                  c.addi       s8, -1
                  sll          s6, a5, t4
                  andi         s10, s11, -1602
                  c.srai       a0, 28
                  c.add        a6, s2
                  div          gp, t2, t4
                  c.lui        t0, 18
                  slti         a0, t2, -301
                  mulh         t0, t0, a7
                  srl          t6, s0, a6
                  c.xor        a4, a1
                  mul          s7, t6, ra
                  xor          s3, s10, a5
                  nop
                  c.lui        s3, 4
                  mul          t6, s3, t3
                  sll          s0, t4, a3
                  c.slli       s7, 7
                  c.xor        a4, s1
                  c.li         s0, 27
                  mul          ra, gp, s7
                  sltu         t1, t2, t4
                  divu         a5, s7, a4
                  sub          a4, s3, a6
                  andi         s2, s6, -983
                  nop
                  slli         s3, a4, 10
                  ori          s0, a1, 401
                  and          tp, a2, t1
                  sll          s2, s3, s0
                  c.add        a0, a2
                  sll          a6, t5, s1
                  mulhsu       sp, s10, a5
                  c.lui        t1, 31
                  or           a5, s3, s10
                  c.mv         ra, s10
                  c.addi16sp   sp, -16
                  div          s9, s5, s7
                  slli         a1, a6, 4
                  xor          s2, s9, a3
                  srai         a0, s3, 18
                  add          a6, t5, zero
                  c.li         t1, -1
                  remu         s8, s0, sp
                  c.addi4spn   a0, sp, 432
                  rem          s9, a4, t5
                  c.nop
                  c.srli       a2, 3
                  c.lui        gp, 7
                  and          gp, zero, gp
                  c.mv         s5, s0
                  slti         s7, a6, 935
                  mul          t0, t2, ra
                  slti         gp, t4, 1829
                  c.srai       a1, 3
                  lui          a0, 857850
                  sra          t0, t4, a3
                  and          t0, s11, s0
                  srl          tp, s7, t2
                  srl          t3, s11, a1
                  xor          s5, t4, s9
                  rem          s9, s8, a1
                  c.srai       a0, 10
                  c.lui        s9, 3
                  rem          s0, gp, s5
                  andi         t0, s10, -936
                  sltiu        t6, a4, -394
                  nop
                  or           s0, a3, sp
                  sll          a6, s1, a7
                  srai         t5, s8, 28
                  xor          s3, s7, tp
                  mulhu        s5, a2, t6
                  addi         s1, s1, 16
                  or           s5, gp, t6
                  div          a0, a4, a4
                  xori         s7, zero, -1459
                  remu         s9, t6, tp
                  ori          a4, s6, 1528
                  lui          s10, 83989
                  and          t0, s7, s11
                  xor          a4, a4, t2
                  xor          t0, zero, a4
                  remu         sp, s4, a3
                  srli         s8, a0, 7
                  mulhu        t5, t2, s9
                  srli         a4, s11, 20
                  remu         a6, a3, a7
                  c.addi       a7, 6
                  xori         a0, a0, 463
                  srl          ra, a0, tp
                  c.addi16sp   sp, -16
                  sll          s3, s11, t2
                  slt          s9, a0, a4
                  c.or         a0, a3
                  c.and        a1, s0
                  srai         a0, a1, 1
                  divu         t0, t5, a6
                  c.add        s5, s5
                  srli         t1, s6, 2
                  add          sp, a6, gp
                  sll          a7, a7, s6
                  andi         s2, a1, -1227
                  remu         t6, t1, ra
                  xor          a5, s6, a1
                  c.srai       a1, 24
                  sub          s6, a1, t6
                  rem          a6, a5, a2
                  c.sub        s0, s0
                  or           a1, a7, gp
                  divu         t6, a2, t6
                  mul          sp, a1, s5
                  slli         s5, a0, 12
                  sra          a2, t2, a6
                  mul          s3, s0, t5
                  xor          t5, a7, gp
                  and          a5, t5, s2
                  auipc        s1, 172270
                  c.lui        s10, 9
                  c.and        a2, a2
                  and          s7, s6, a3
                  c.addi       t0, -1
                  sra          t0, s2, s10
                  c.xor        a5, a1
                  xor          t2, a4, a4
                  c.srai       s1, 24
                  c.or         s1, a0
                  slli         s3, s6, 28
                  srli         sp, s4, 17
                  c.mv         s6, t0
                  xor          s8, a1, a3
                  c.lui        t2, 22
                  c.addi       a7, -1
                  c.nop
                  mulhsu       s8, sp, t4
                  srli         gp, s9, 1
                  addi         a0, zero, 154
                  c.li         s2, 24
                  or           a2, a0, s0
                  rem          a2, s7, s7
                  rem          a4, a1, s4
                  c.li         a4, 20
                  mulhu        s0, s1, t2
                  sltu         a4, s1, s2
                  mulhsu       a1, s0, a2
                  c.slli       t2, 19
                  sltu         a5, s9, a2
                  c.slli       a2, 17
                  addi         t5, s0, -281
                  c.sub        a4, a1
                  and          s9, gp, s3
                  c.lui        t5, 16
                  lui          a5, 722280
                  ori          a7, s2, -1771
                  remu         s6, a1, t5
                  auipc        s11, 906606
                  c.andi       a4, -1
                  srli         t2, a1, 16
                  addi         s5, s6, 1387
                  addi         t0, a4, 1667
                  sltu         zero, t3, s4
                  auipc        a0, 776037
                  c.mv         a1, t3
                  nop
                  sll          a7, gp, s1
                  or           s5, s8, a1
                  c.andi       a2, 23
                  or           a4, s5, a6
                  sub          t0, s2, a4
                  sll          t3, ra, s11
                  c.add        t3, t6
                  c.nop
                  sub          s0, t2, a0
                  c.sub        a4, a0
                  c.and        a4, a4
                  c.or         a5, s1
                  c.and        a0, a2
                  andi         t2, a1, -424
                  divu         t1, tp, a6
                  li           t2, 0x0 #start riscv_int_numeric_corner_stream_6
                  li           s8, 0xffffffff
                  li           t5, 0xae35cab8
                  li           sp, 0xf70c3910
                  li           t6, 0x0
                  li           a6, 0x0
                  li           s0, 0x56cabf8
                  li           a5, 0x8272327d
                  li           s3, 0x0
                  li           a1, 0x0
                  lui          t6, 504553
                  nop
                  mulhsu       s3, a5, sp
                  lui          t2, 603843
                  mul          a1, a5, a1
                  lui          t5, 921889
                  mul          s0, t2, a1
                  auipc        a1, 962696
                  add          a5, a6, t6
                  addi         t2, s8, -330
                  add          t2, s3, t2
                  addi         t6, a6, -147
                  div          s0, a5, s8
                  mul          s3, t2, s8
                  sub          t5, s3, s8
                  rem          a5, sp, s8 #end riscv_int_numeric_corner_stream_6
                  c.lui        a2, 1
                  rem          gp, ra, s3
                  c.srai       a2, 1
                  c.or         s1, a2
                  c.slli       sp, 1
                  c.lui        s5, 29
                  c.srli       s1, 6
                  andi         t6, t4, 1068
                  srl          a2, s8, t5
                  lui          s6, 723181
                  c.srai       a2, 23
                  mul          a4, s9, a1
                  andi         s9, t2, 1513
                  slli         t3, t6, 18
                  sltiu        s7, a7, 1289
                  xori         a2, a1, 1016
                  c.or         s1, a1
                  c.srli       a2, 20
                  c.sub        s1, s0
                  sll          s8, s11, s7
                  xori         s11, zero, -1323
                  c.add        s9, s0
                  c.addi       s1, 13
                  nop
                  div          tp, sp, a6
                  nop
                  sra          s8, t2, t2
                  mul          t5, s11, s1
                  nop
                  auipc        t3, 519724
                  c.sub        s0, a4
                  addi         a0, a7, -929
                  c.li         a0, 23
                  c.srli       s1, 15
                  sltu         t3, s8, t6
                  add          s3, t0, t5
                  mul          tp, a2, s9
                  lui          a0, 123847
                  c.sub        a4, a3
                  c.or         a0, a5
                  srai         s0, s10, 28
                  lui          a0, 493553
                  c.srai       a5, 19
                  c.or         a5, a1
                  sra          s2, a0, a0
                  lui          t1, 944198
                  ori          s1, sp, -1185
                  c.addi16sp   sp, -16
                  sra          t0, s10, gp
                  andi         a5, a7, 1348
                  c.li         sp, 21
                  mul          t6, a6, t0
                  mulhsu       s2, gp, s0
                  andi         a1, t6, 1866
                  sra          a7, t6, s2
                  srl          s10, ra, a5
                  c.lui        t0, 12
                  srli         ra, t0, 7
                  c.andi       s1, 10
                  sltu         s6, sp, t3
                  sltu         s10, s3, a4
                  c.sub        s1, a3
                  mulh         t3, s11, sp
                  nop
                  c.and        a0, a2
                  srli         tp, a0, 4
                  rem          t0, a6, a5
                  srl          a2, a7, s1
                  sll          s8, a5, a4
                  sll          s8, s8, s8
                  auipc        a5, 1033887
                  srai         t6, a1, 16
                  c.lui        s7, 7
                  mul          t3, s4, a1
                  c.and        a4, a0
                  sra          t1, t6, t0
                  c.srai       s0, 13
                  lui          s2, 414703
                  auipc        ra, 15647
                  divu         t5, a7, tp
                  c.slli       t0, 3
                  sltu         ra, sp, s0
                  remu         sp, s7, s6
                  c.lui        t2, 27
                  srli         a6, a6, 0
                  c.srai       s1, 19
                  and          s1, s6, s2
                  c.or         a1, s1
                  mulhu        s9, t5, a5
                  rem          a2, s11, a6
                  rem          s11, t6, a7
                  or           t5, a4, s0
                  slt          s6, t5, a4
                  c.nop
                  divu         t6, a1, ra
                  c.andi       a0, 31
                  mulh         s6, s7, t1
                  divu         a7, t6, a4
                  c.li         s10, 14
                  c.addi       gp, 12
                  c.addi16sp   sp, 288
                  and          a6, t5, zero
                  ori          s11, a1, 97
                  c.li         sp, 10
                  or           sp, t3, s0
                  srl          zero, t1, t5
                  mulhsu       s11, s9, s5
                  c.xor        s0, a4
                  divu         s0, t4, t0
                  mul          s10, t1, s3
                  c.addi4spn   s1, sp, 576
                  add          s7, t2, s0
                  mulhsu       s7, s3, a2
                  sub          t2, s0, zero
                  div          t6, t0, s5
                  mulh         s6, t2, sp
                  c.srli       a4, 18
                  sltu         a2, tp, a6
                  xor          ra, t2, s7
                  or           a1, t1, ra
                  slli         gp, a4, 5
                  c.mv         s7, a6
                  sub          a6, t6, s3
                  ori          t2, s8, 1364
                  sra          s6, t5, a3
                  nop
                  c.addi       s0, -1
                  sltiu        t6, tp, -1897
                  or           s7, tp, s3
                  or           a7, s1, s3
                  c.addi       tp, 14
                  c.and        a4, a3
                  div          a1, t1, s4
                  auipc        s1, 570609
                  remu         a6, s6, s3
                  andi         s9, s7, 643
                  slt          s7, a0, t4
                  sll          s8, s2, a7
                  sub          s6, s7, ra
                  c.mv         a6, t1
                  and          a6, s6, s4
                  sra          t0, a5, sp
                  c.slli       a0, 1
                  addi         a0, s9, 1101
                  andi         t5, s0, -219
                  c.mv         t1, s7
                  ori          t6, s8, 1772
                  slli         ra, s11, 8
                  or           a2, ra, a3
                  srai         t2, ra, 18
                  c.or         s0, a4
                  c.srai       s1, 3
                  srl          gp, t0, a0
                  c.add        a4, gp
                  nop
                  add          s1, s6, t5
                  xor          s7, a6, t0
                  sra          t2, zero, t5
                  mulh         s11, s0, tp
                  addi         gp, a5, 428
                  c.addi4spn   s0, sp, 336
                  xori         t6, a2, 777
                  xor          a4, t0, a5
                  div          t2, s11, s5
                  auipc        sp, 413065
                  c.addi4spn   a4, sp, 128
                  c.sub        a0, a4
                  sra          s0, a6, s5
                  ori          t6, s11, 1141
                  slli         zero, a0, 27
                  sltiu        s0, s5, 486
                  c.xor        a1, s1
                  lui          s9, 534577
                  sll          zero, t1, a1
                  auipc        t3, 957725
                  xor          a4, a5, s11
                  mulhu        sp, t6, s0
                  mulh         a6, t1, sp
                  or           tp, s3, s8
                  c.andi       s0, -1
                  lui          s7, 54745
                  c.mv         a1, s11
                  and          s3, s4, s0
                  c.sub        a4, a3
                  auipc        gp, 887487
                  c.srai       a0, 2
                  slti         t6, a0, -398
                  div          t5, t3, a1
                  c.li         gp, 13
                  mul          a0, s7, t2
                  addi         gp, sp, -891
                  mulh         tp, zero, s5
                  mul          s3, t6, sp
                  c.add        t6, a7
                  sub          ra, s5, s7
                  add          t5, s3, a7
                  and          a6, ra, s7
                  srai         zero, ra, 31
                  srli         s8, s11, 12
                  mulh         s2, s0, a7
                  sra          a7, t5, t6
                  auipc        a7, 920013
                  slli         a2, t4, 20
                  srl          s8, s6, t3
                  andi         tp, s4, -361
                  c.add        t5, a5
                  auipc        zero, 44315
                  mulhsu       t5, s7, s10
                  or           s9, s3, zero
                  sra          a5, a7, s7
                  sll          tp, t2, t2
                  srl          a4, s5, t6
                  xor          ra, t2, s6
                  addi         s11, a0, -1928
                  slti         s1, s3, -1993
                  sltiu        t2, tp, 1711
                  c.nop
                  slti         a1, t3, 1893
                  sub          s5, s7, t2
                  sra          gp, t0, s3
                  srli         zero, sp, 6
                  sub          ra, s5, s1
                  c.li         a0, 23
                  c.addi       s11, -1
                  srli         s3, s10, 28
                  c.srli       a5, 17
                  add          s6, sp, s9
                  xori         s9, s1, -529
                  c.slli       ra, 14
                  c.addi4spn   a1, sp, 16
                  c.add        s2, s11
                  addi         zero, ra, 824
                  slli         s9, t3, 7
                  c.li         a0, 28
                  srli         s11, sp, 24
                  c.add        a2, s4
                  xor          t3, ra, a5
                  c.xor        a5, a4
                  add          a5, t0, a1
                  addi         t1, t3, -1346
                  add          t3, t2, s6
                  sltiu        s8, s1, -82
                  sra          s3, s2, tp
                  c.slli       s5, 25
                  sub          s6, s7, s4
                  lui          a4, 769632
                  c.addi16sp   sp, -16
                  srai         s9, t2, 27
                  srl          zero, gp, zero
                  c.addi16sp   sp, 96
                  mulhsu       s9, a3, t2
                  c.andi       s1, 27
                  nop
                  c.mv         sp, s1
                  c.lui        a2, 28
                  c.addi       s3, -1
                  xor          a4, a7, a5
                  c.andi       s1, 21
                  mulh         s5, t6, t0
                  c.sub        s0, s0
                  xori         zero, t3, 1120
                  andi         ra, tp, 1957
                  divu         gp, ra, t5
                  c.li         a1, -1
                  srai         s1, s4, 30
                  nop
                  lui          t5, 1045390
                  addi         tp, t0, 448
                  c.or         a1, s1
                  lui          gp, 660088
                  and          t5, s10, t5
                  andi         s10, t6, 748
                  c.nop
                  lui          s3, 268556
                  mulhu        t2, s1, a5
                  c.addi16sp   sp, -16
                  c.li         s1, -1
                  auipc        s9, 177086
                  c.andi       a4, 17
                  srai         t0, s0, 30
                  mulh         a4, s10, a5
                  xor          s10, t3, a3
                  xor          t5, zero, a1
                  c.or         a1, a1
                  divu         gp, t3, s0
                  c.mv         s0, s3
                  c.srai       a2, 26
                  srl          s5, t1, t4
                  c.addi       t6, -1
                  c.sub        a2, a1
                  srli         sp, a0, 19
                  srli         s7, t2, 5
                  slti         gp, t2, -722
                  divu         s10, t3, t3
                  lui          sp, 478635
                  mulh         a4, t5, t4
                  mulhsu       t1, ra, zero
                  c.mv         s9, s6
                  c.addi16sp   sp, -16
                  c.addi4spn   a1, sp, 592
                  sll          a0, a3, t4
                  c.sub        a0, a5
                  mulhu        a2, s4, t1
                  c.add        s5, t5
                  xori         s3, a5, -1768
                  remu         a6, s5, t2
                  srli         t1, gp, 0
                  c.sub        a4, a2
                  or           t3, s11, t3
                  nop
                  c.nop
                  xor          a2, sp, s4
                  c.or         s0, a3
                  sub          tp, a7, zero
                  c.slli       s1, 27
                  sra          ra, s6, s9
                  c.andi       a2, 24
                  ori          s11, a3, -1401
                  c.addi16sp   sp, -16
                  addi         tp, gp, -353
                  srli         s0, s3, 15
                  sltiu        t3, s4, -972
                  slli         a6, s5, 5
                  mulhu        gp, t3, zero
                  sra          a2, a2, zero
                  c.add        s1, s8
                  c.add        s7, a6
                  slli         s11, s1, 21
                  c.lui        t1, 18
                  sll          ra, t4, s11
                  remu         t3, s6, a5
                  nop
                  mulhsu       s5, gp, zero
                  mulhu        a1, s9, s11
                  c.nop
                  c.nop
                  nop
                  mulhu        gp, ra, s9
                  c.addi       s5, -1
                  xor          a1, s6, t3
                  sltu         t2, s6, s0
                  srai         a5, sp, 18
                  xori         a0, s2, -1649
                  andi         a2, s5, 1800
                  xor          s2, t0, a6
                  c.addi       ra, 21
                  slt          ra, sp, a4
                  xor          sp, gp, t6
                  slt          tp, a7, gp
                  srai         s2, t5, 8
                  srli         t6, s5, 10
                  sub          a0, t5, s8
                  c.srai       s1, 17
                  remu         t2, s8, s11
                  c.nop
                  c.mv         gp, a1
                  c.andi       s0, -1
                  c.sub        a4, a5
                  c.srli       a5, 16
                  mulhu        a1, a7, t1
                  c.srli       a4, 13
                  c.andi       a1, -1
                  sll          sp, s8, s8
                  srl          a0, t6, t1
                  c.mv         s8, s10
                  sltu         t5, ra, t2
                  c.addi       s9, 14
                  c.add        t0, s4
                  xor          s8, s8, sp
                  c.add        t2, a4
                  c.xor        s0, s0
                  c.add        s1, t0
                  c.srai       a2, 3
                  c.addi       a0, 24
                  slli         sp, s10, 13
                  addi         a5, t4, -1720
                  c.and        s0, a2
                  xori         tp, sp, 1149
                  c.lui        t6, 26
                  mulhu        s5, a6, t2
                  divu         t5, s5, t0
                  div          a1, ra, a4
                  sll          s9, s5, a6
                  srli         a5, ra, 2
                  remu         a2, s3, s10
                  c.and        a1, a0
                  srl          t1, t0, ra
                  addi         t5, t0, 428
                  or           s11, s10, a3
                  rem          s1, a1, s10
                  c.nop
                  c.and        a1, a1
                  rem          a2, ra, s7
                  andi         ra, zero, -1779
                  sll          ra, s9, a4
                  slt          a5, t3, t1
                  mulhu        gp, t2, t6
                  c.addi16sp   sp, 160
                  c.and        a5, a0
                  c.add        a6, a0
                  c.srai       s1, 15
                  mulh         zero, a4, a6
                  and          s9, s8, s5
                  remu         zero, s4, t4
                  rem          s3, s6, t0
                  c.srai       a5, 30
                  mulh         a6, t0, s7
                  or           zero, a5, sp
                  c.lui        t6, 15
                  xor          a4, s6, s11
                  sub          a4, ra, s8
                  rem          a1, t2, zero
                  andi         t6, t4, -1647
                  c.addi16sp   sp, -16
                  rem          sp, t0, s6
                  c.addi       s2, 2
                  rem          t3, a1, s7
                  mul          t2, t6, a1
                  divu         s5, s7, a3
                  c.sub        a1, a5
                  sll          a6, t4, s1
                  divu         s9, t2, a3
                  c.slli       s11, 27
                  c.slli       t5, 29
                  c.srai       a1, 25
                  slt          s6, s7, s3
                  c.addi16sp   sp, 160
                  slti         s2, a6, 1756
                  c.or         a2, a5
                  slti         a7, s10, -1991
                  sltiu        s0, tp, -1683
                  div          t2, s1, t2
                  c.srai       a2, 23
                  c.addi4spn   a1, sp, 928
                  srli         s10, zero, 2
                  slt          t3, s0, s4
                  nop
                  ori          t6, s6, -1119
                  sra          s7, s7, s5
                  sra          s10, tp, s3
                  c.add        a4, a4
                  c.and        a5, a0
                  addi         tp, t4, -1428
                  c.andi       a5, 19
                  mulhu        s1, s1, s8
                  c.sub        a2, a2
                  slli         a4, zero, 18
                  c.slli       t6, 1
                  c.slli       gp, 24
                  xor          t2, s9, s6
                  addi         gp, a5, -756
                  c.addi4spn   s1, sp, 480
                  c.add        s11, a7
                  and          s9, zero, s7
                  c.xor        s0, a2
                  c.and        a1, a0
                  sltiu        s2, a5, -486
                  c.add        a1, t2
                  c.srai       s1, 18
                  slli         s8, t3, 28
                  divu         s11, t1, t0
                  c.li         a0, 29
                  andi         s7, a0, -1078
                  c.addi       s7, -1
                  c.add        s5, t5
                  sub          tp, s9, tp
                  c.add        a7, t1
                  srai         gp, a2, 16
                  c.li         a4, 3
                  lui          a0, 719872
                  lui          s3, 903730
                  c.srli       s0, 12
                  mulhu        a2, s8, a0
                  lui          s10, 779877
                  nop
                  xori         s6, ra, 556
                  slt          t0, t5, t3
                  sub          t5, gp, gp
                  mulhsu       a7, s6, gp
                  mulh         a2, t6, a6
                  c.nop
                  divu         gp, ra, s5
                  sll          t1, t0, t5
                  c.xor        a1, a2
                  div          a1, gp, s7
                  mulhsu       t2, a2, s0
                  mulhsu       t1, a1, s7
                  c.slli       t3, 30
                  c.srli       a1, 25
                  andi         tp, s6, 2023
                  c.srai       s1, 5
                  xor          s7, s1, s0
                  mulhsu       s8, ra, s11
                  c.li         a7, -1
                  c.addi4spn   s1, sp, 592
                  c.addi       gp, 21
                  c.li         sp, 18
                  sltiu        s1, tp, -4
                  mul          ra, s10, tp
                  mulhsu       ra, s7, a7
                  slti         s10, a3, -533
                  c.and        a4, s1
                  xori         a2, gp, 1781
                  c.sub        a4, s0
                  c.or         a4, a5
                  sra          s10, s7, a1
                  xor          s6, a7, s11
                  mulhu        s10, a1, ra
                  sltiu        zero, ra, -1868
                  sltiu        s10, t0, 1735
                  c.sub        a5, a2
                  c.srai       a1, 31
                  c.li         a2, 28
                  andi         ra, a7, 562
                  srl          t5, sp, s2
                  slti         sp, s6, -332
                  sra          a0, t4, t1
                  remu         t0, s10, a0
                  sll          a1, s1, t0
                  nop
                  or           s9, a3, s1
                  c.and        a5, a3
                  srl          a1, t1, a3
                  ori          tp, a4, -1545
                  slt          t3, a0, a5
                  c.or         a4, a3
                  remu         a5, t5, t2
                  auipc        a4, 323191
                  c.nop
                  c.srli       a1, 14
                  lui          t2, 499946
                  divu         s9, a6, a6
                  c.slli       gp, 13
                  sltiu        s3, t6, -1876
                  c.li         s10, 3
                  add          t5, tp, a5
                  c.or         s0, a0
                  lui          sp, 381053
                  slli         s6, ra, 28
                  c.or         a0, a5
                  mulhu        t1, s1, t0
                  andi         s3, t6, -957
                  auipc        tp, 862068
                  c.addi16sp   sp, -16
                  add          a6, s2, s6
                  slti         a1, t2, 1400
                  c.mv         s7, a3
                  c.slli       a0, 19
                  c.slli       t1, 3
                  c.slli       s0, 2
                  slt          a2, gp, t3
                  divu         t3, a2, s8
                  c.addi       s11, 6
                  c.or         a0, a1
                  mul          s9, s10, a2
                  or           t0, s1, s6
                  c.addi       s2, -1
                  c.nop
                  srl          s8, s7, s11
                  sltu         t6, ra, a4
                  and          ra, s5, s3
                  auipc        zero, 622865
                  or           s0, ra, s2
                  c.andi       a1, -1
                  srai         s3, a3, 23
                  add          a7, t4, a6
                  srli         s1, tp, 10
                  sra          a2, a1, s7
                  c.mv         tp, s10
                  remu         t1, s11, zero
                  c.nop
                  and          s11, zero, a3
                  srai         s11, t2, 2
                  c.lui        s10, 25
                  slli         ra, a1, 6
                  c.addi4spn   a1, sp, 240
                  sltu         t1, s3, s6
                  c.srai       a0, 16
                  divu         t0, s4, t4
                  srai         a0, t1, 7
                  slt          tp, a5, a4
                  c.srli       s0, 3
                  mul          a0, a4, s1
                  c.or         a2, a3
                  c.addi       sp, -1
                  slti         s9, s10, 245
                  srl          s9, s9, a7
                  sub          t3, a4, sp
                  lui          t6, 374317
                  c.addi4spn   a1, sp, 592
                  srai         s10, a2, 20
                  or           a4, t5, t2
                  c.srli       s0, 14
                  c.and        s1, a0
                  mul          s7, s7, s5
                  srl          gp, t0, a1
                  ori          a6, zero, -1737
                  c.srli       s0, 2
                  remu         s1, a4, a2
                  c.li         a0, 23
                  rem          s8, t4, a4
                  sltiu        a4, a1, -1096
                  c.srai       s0, 12
                  c.srli       a4, 2
                  div          a6, s1, t3
                  mul          sp, t6, t2
                  sll          s6, a6, s9
                  mulh         t6, s3, a1
                  mulh         tp, s6, t6
                  sltiu        s2, s8, 80
                  ori          s11, t2, 2026
                  sltiu        tp, s11, 1944
                  srai         gp, a6, 31
                  mulhsu       a4, s11, s8
                  c.or         a5, a1
                  c.srli       s1, 12
                  andi         tp, sp, 1461
                  c.xor        a5, s0
                  remu         tp, a2, t0
                  remu         gp, s6, s4
                  c.or         s1, s0
                  mulhsu       s10, ra, s3
                  sub          a5, a0, gp
                  slli         s0, s11, 10
                  mulh         a1, s11, a2
                  ori          s7, s5, -1748
                  nop
                  srli         a7, s2, 7
                  mulhu        a4, s2, zero
                  c.xor        a5, a3
                  mul          s8, a0, s11
                  c.srai       a1, 19
                  c.andi       a1, 2
                  sub          s0, t2, sp
                  c.addi16sp   sp, 448
                  andi         s7, s8, -1046
                  srl          s7, s5, s0
                  c.addi4spn   a5, sp, 352
                  c.and        s0, s1
                  c.li         a0, -1
                  c.addi4spn   s1, sp, 704
                  sll          s11, a6, tp
                  c.slli       t2, 7
                  ori          s5, t1, 967
                  add          s3, a6, s3
                  c.and        a4, a4
                  c.andi       a0, 7
                  nop
                  sub          a5, ra, t6
                  srli         tp, s2, 17
                  srai         s2, s9, 21
                  mulhsu       s5, s1, a1
                  c.mv         a0, s4
                  mulhu        tp, t3, a7
                  srai         s9, sp, 12
                  andi         s2, a0, -1548
                  srai         s5, sp, 10
                  divu         a2, s1, zero
                  xori         gp, s7, -177
                  c.nop
                  c.nop
                  ori          a1, t5, 1482
                  c.addi       s0, -1
                  ori          s5, s7, 123
                  mulh         s6, s5, a5
                  sltiu        zero, t6, -625
                  lui          s7, 357498
                  remu         t3, t4, a0
                  c.srai       a4, 30
                  rem          sp, s3, s6
                  mulhu        s2, gp, t4
                  slt          s5, t6, a6
                  slli         a1, t4, 13
                  nop
                  andi         s10, a4, 785
                  c.nop
                  ori          t2, s0, 1653
                  c.add        s7, s5
                  c.nop
                  c.and        a5, a4
                  nop
                  c.addi4spn   a1, sp, 272
                  xor          a5, a6, s3
                  slti         a7, t2, -1681
                  c.addi4spn   a1, sp, 896
                  c.addi16sp   sp, 400
                  slt          a5, gp, a3
                  c.li         a6, -1
                  c.nop
                  c.lui        s1, 16
                  sra          s1, t6, a3
                  c.lui        ra, 27
                  lui          s9, 101469
                  c.lui        t5, 1
                  c.lui        t1, 10
                  c.xor        a5, a4
                  c.xor        s1, a3
                  xori         t6, t1, 673
                  div          t2, a3, a4
                  srai         t5, s4, 15
                  divu         s7, s3, s9
                  c.xor        s1, s1
                  or           a0, sp, s8
                  auipc        sp, 116624
                  xor          a2, ra, t2
                  c.srli       s1, 3
                  mulhu        gp, a7, a0
                  c.srli       s0, 27
                  slti         a6, a2, 1249
                  xor          t6, s7, tp
                  mul          s2, s2, s4
                  auipc        s3, 1045355
                  remu         t0, s4, s9
                  xori         t0, zero, 1983
                  srl          t1, s9, s8
                  div          t1, s10, s1
                  rem          s2, s3, t1
                  c.srli       s0, 4
                  and          a4, a5, a2
                  c.xor        a5, a4
                  c.mv         a2, t6
                  auipc        a5, 491459
                  mulhsu       a6, s7, sp
                  xor          s3, s0, t4
                  andi         t5, a5, -1316
                  sltiu        t0, t5, 1820
                  add          s6, t1, s6
                  sub          s11, s9, a4
                  mulh         a2, s8, tp
                  c.sub        a1, a0
                  c.nop
                  sltiu        t3, s11, 93
                  nop
                  c.andi       a0, 31
                  div          a7, a0, s1
                  c.srli       s1, 1
                  slti         s0, t5, 112
                  nop
                  rem          tp, a4, t1
                  slt          s10, a5, s10
                  slt          zero, s3, s2
                  c.slli       s9, 4
                  sub          a6, a2, s10
                  xor          a1, s8, sp
                  xori         t0, a0, -1904
                  sub          ra, s9, s5
                  srai         zero, s10, 26
                  c.addi       s5, 30
                  c.addi16sp   sp, 272
                  c.or         a5, a4
                  sltiu        s1, sp, 736
                  slli         a2, s3, 23
                  c.addi16sp   sp, 240
                  or           sp, t0, t6
                  c.slli       t5, 24
                  mulh         tp, s11, a5
                  auipc        sp, 671129
                  c.srai       a5, 1
                  remu         t1, s3, a3
                  c.addi       s8, 1
                  sub          a6, s8, s3
                  sll          a5, s11, s4
                  c.lui        s7, 28
                  c.sub        a1, a4
                  c.nop
                  c.nop
                  mul          gp, a7, s8
                  mulhsu       t2, t0, s11
                  c.add        s5, gp
                  slt          s7, t3, s9
                  sll          t5, a4, a2
                  srl          s6, a4, t3
                  sll          t2, a0, gp
                  mulh         t1, a0, s10
                  xori         s10, s2, 1917
                  c.li         sp, 7
                  c.li         t1, 25
                  c.addi       gp, 5
                  sll          a2, t5, a7
                  c.addi       t2, -1
                  or           a6, s1, s8
                  srl          tp, tp, gp
                  slli         tp, sp, 14
                  xor          zero, t5, t1
                  c.andi       a0, -1
                  auipc        a2, 201759
                  slli         s2, ra, 23
                  auipc        gp, 163067
                  c.addi       t5, 9
                  c.nop
                  divu         s11, gp, s7
                  sltu         s9, t6, ra
                  andi         s0, tp, 251
                  nop
                  slli         s1, t5, 1
                  c.srai       s1, 28
                  c.addi       t6, -1
                  mul          a1, t5, s4
                  and          a1, t4, s2
                  slti         a1, s8, -1720
                  add          sp, a3, s1
                  slti         t1, a3, 1865
                  c.slli       a1, 18
                  srli         s11, a2, 10
                  lui          zero, 766781
                  c.lui        a7, 29
                  xori         s1, s4, 32
                  slti         s9, a2, -289
                  sltu         a4, a3, t1
                  xor          s9, t6, t2
                  xori         s6, t3, -247
                  addi         a0, s10, 427
                  sra          s1, ra, a2
                  rem          a5, s10, a0
                  srai         a1, gp, 10
                  divu         sp, t4, t6
                  c.lui        t6, 31
                  mulhu        s1, s6, s4
                  c.addi       t3, -1
                  c.nop
                  ori          s7, s6, -1652
                  ori          s3, a1, -35
                  mulh         t3, a1, s3
                  sltiu        a7, s9, 1329
                  slli         s5, s11, 21
                  remu         a1, s6, t3
                  remu         ra, t1, s5
                  c.slli       tp, 25
                  sltu         zero, tp, t3
                  c.addi4spn   a4, sp, 656
                  slti         a0, s6, -2027
                  slti         t0, t2, 1414
                  and          gp, sp, zero
                  slt          t6, t2, s5
                  c.sub        a5, a3
                  c.lui        t5, 3
                  c.srai       a2, 23
                  sll          s10, s0, t1
                  sltu         s10, s0, tp
                  c.or         a1, a3
                  remu         s3, t6, s7
                  c.xor        s0, s1
                  c.lui        t5, 21
                  sra          s0, t6, s11
                  sra          s1, s11, s9
                  sub          s3, a2, s9
                  c.srli       a1, 21
                  mulhu        t3, s11, s2
                  mulhu        zero, a4, t4
                  div          s10, t3, s7
                  divu         sp, s3, ra
                  srai         tp, a7, 12
                  c.or         s1, a3
                  auipc        a1, 159624
                  c.xor        a1, a0
                  mul          a6, s11, ra
                  srl          t6, a5, a6
                  divu         s7, t2, a0
                  slti         s9, tp, 670
                  srl          a6, sp, t6
                  addi         s10, a7, -174
                  andi         t3, s0, 1546
                  auipc        s7, 526974
                  c.sub        a1, a0
                  auipc        a1, 331145
                  addi         a6, a2, 1669
                  div          a2, t5, t0
                  c.add        t5, t6
                  c.add        s7, tp
                  c.lui        s2, 20
                  slti         s7, t6, -1898
                  c.or         a0, a3
                  add          s10, s9, s10
                  srai         s2, s7, 19
                  andi         s5, t2, 941
                  sltu         a2, t3, t0
                  slli         a2, tp, 26
                  c.andi       s0, 17
                  div          s2, s8, t1
                  xori         gp, ra, 1193
                  srai         s2, gp, 1
                  xor          s3, t5, s9
                  c.addi       gp, -1
                  div          s3, t1, a0
                  sll          gp, a1, s0
                  sll          s5, gp, a3
                  c.addi       tp, 12
                  c.li         t6, -1
                  srai         s6, t1, 5
                  auipc        s8, 97113
                  nop
                  sltu         s7, t3, a6
                  c.lui        s11, 12
                  sra          a0, s10, s0
                  c.or         s0, s0
                  or           gp, s11, t1
                  remu         gp, s5, a4
                  srli         a4, a5, 16
                  mulhsu       a0, t2, ra
                  ori          s9, sp, 1386
                  c.srli       a0, 19
                  c.or         s1, a3
                  c.andi       a2, 25
                  c.nop
                  xor          s0, s2, a6
                  srai         sp, gp, 27
                  c.li         t0, -1
                  divu         t2, zero, s4
                  c.addi16sp   sp, -16
                  c.or         s0, a1
                  or           t0, s6, s9
                  c.sub        a5, a4
                  addi         s6, t1, -407
                  c.andi       a1, -1
                  mul          s11, s0, a3
                  auipc        t0, 379278
                  nop
                  slli         zero, a0, 17
                  add          s11, sp, a2
                  c.sub        a5, s1
                  srli         a6, s0, 2
                  slli         a5, s10, 17
                  sltiu        s7, t0, -598
                  c.addi       sp, -1
                  xor          a6, s8, ra
                  mul          a6, s2, t5
                  auipc        a2, 195601
                  add          a6, t3, s1
                  xori         a5, zero, 1589
                  c.lui        s7, 25
                  c.slli       s9, 31
                  c.add        s7, a2
                  slli         t2, zero, 25
                  c.andi       a5, 12
                  c.lui        s9, 4
                  ori          s5, t1, 1574
                  sll          s8, a5, a2
                  sltu         t0, t6, s8
                  slli         sp, s10, 3
                  c.mv         s5, t5
                  slt          s5, sp, s11
                  mulh         sp, a6, a3
                  slt          a5, a6, t1
                  c.nop
                  c.mv         a7, t4
                  lui          t3, 503545
                  c.andi       s1, 27
                  c.lui        s0, 9
                  sra          a1, ra, s2
                  c.srai       s1, 30
                  c.slli       s11, 27
                  rem          a5, a5, s8
                  c.addi       t0, -1
                  c.lui        a2, 12
                  c.srli       s1, 14
                  add          ra, a5, t4
                  xor          s11, t5, a4
                  c.addi16sp   sp, -16
                  c.or         a4, a0
                  slli         s0, a5, 16
                  divu         s2, a0, a1
                  c.add        t5, s11
                  c.xor        a0, a3
                  c.srli       a1, 10
                  mulhu        s11, zero, s1
                  c.nop
                  add          s8, t2, a6
                  xori         t3, t4, -1686
                  add          a1, t0, s3
                  andi         t0, ra, 987
                  auipc        gp, 659122
                  c.mv         a5, s5
                  ori          s0, t4, 1490
                  c.andi       a2, -1
                  srli         ra, zero, 14
                  c.li         t6, -1
                  c.addi4spn   s0, sp, 368
                  or           a4, t6, t5
                  c.add        gp, s4
                  c.mv         t6, s3
                  slt          s6, t3, t0
                  nop
                  slt          a7, s1, s1
                  mulhsu       s0, s7, t4
                  mul          s6, a4, t0
                  mulhu        tp, s2, s3
                  sra          tp, s3, t5
                  c.srai       a0, 29
                  mulhu        a5, s11, a6
                  auipc        a0, 299749
                  divu         t2, s9, a7
                  sub          t2, s9, t2
                  mulhu        s6, s2, t4
                  c.lui        t0, 7
                  c.addi16sp   sp, 432
                  c.srai       a2, 10
                  mulh         a7, t1, a5
                  mulhu        sp, a4, s10
                  xor          s8, a4, sp
                  c.lui        s5, 17
                  add          a5, gp, a5
                  c.li         s7, 26
                  srai         ra, s5, 14
                  or           a0, s9, ra
                  xori         ra, t3, 543
                  c.xor        s1, a5
                  srli         sp, s9, 7
                  addi         ra, s5, 164
                  rem          a1, a4, s8
                  xori         a6, s11, 1182
                  slli         a1, a7, 3
                  c.and        a4, a1
                  mul          s2, s11, a4
                  sltiu        s1, t3, 1920
                  c.lui        ra, 23
                  c.slli       t5, 19
                  c.mv         t2, t1
                  c.lui        t1, 25
                  addi         s5, a6, -51
                  c.nop
                  c.addi16sp   sp, -16
                  c.add        s6, a3
                  c.addi4spn   a2, sp, 144
                  c.nop
                  divu         t1, s11, s2
                  c.srli       a5, 25
                  slt          a5, s1, s3
                  add          a4, s7, a5
                  sra          t2, a5, a1
                  c.srai       s1, 19
                  c.or         a1, a4
                  sub          zero, t6, a5
                  lui          a6, 502548
                  c.addi16sp   sp, -16
                  add          a5, t2, t6
                  sra          s11, a7, a0
                  rem          a2, s1, s3
                  add          t3, a4, a3
                  sltu         t1, t1, sp
                  auipc        s0, 41370
                  c.add        gp, gp
                  c.add        a5, s4
                  sra          s2, s7, ra
                  c.nop
                  sll          tp, s2, s9
                  slt          s0, s7, s1
                  c.nop
                  sltiu        t0, t1, 1933
                  sltu         a2, s6, a2
                  ori          a5, a7, 323
                  c.slli       a7, 12
                  c.or         a1, a0
                  c.addi4spn   s0, sp, 544
                  srl          t1, s8, s0
                  slti         a6, t3, 1684
                  c.srli       a5, 27
                  or           t3, s1, zero
                  rem          s0, t1, a2
                  srai         s10, t4, 12
                  c.addi       s1, 29
                  c.addi4spn   a5, sp, 368
                  and          s8, a2, s10
                  c.srli       a0, 5
                  remu         a5, tp, t0
                  c.or         s1, a0
                  and          a1, tp, s3
                  remu         s8, s1, tp
                  div          s1, t5, s0
                  andi         t1, sp, 900
                  c.slli       a4, 3
                  lui          a5, 742914
                  srl          s10, s1, s11
                  c.andi       a4, -1
                  mul          tp, a2, t5
                  and          s8, t0, s10
                  mulhu        a7, a4, t5
                  add          s10, s7, a3
                  sub          t5, s5, s9
                  sra          t2, a1, sp
                  lui          tp, 634895
                  div          a0, a4, sp
                  c.addi16sp   sp, -16
                  andi         a1, a0, 660
                  and          t3, a0, ra
                  c.addi16sp   sp, 160
                  mul          t2, s1, s9
                  c.mv         t2, t6
                  ori          sp, s10, 1240
                  div          t0, a7, zero
                  lui          a0, 666475
                  slli         a5, a7, 25
                  lui          a2, 724148
                  c.xor        a2, s1
                  c.li         s6, -1
                  lui          a7, 7242
                  sll          a1, gp, ra
                  c.xor        a2, a1
                  slli         s10, a3, 22
                  sltiu        t1, a6, -1012
                  srli         a4, t1, 10
                  c.lui        s8, 26
                  divu         s1, s2, sp
                  addi         t1, a4, 1664
                  c.addi       t6, 25
                  c.and        a1, a5
                  sub          gp, s3, s7
                  mulhsu       a4, s5, s2
                  c.and        a4, a1
                  slt          s7, a7, s4
                  srli         s10, ra, 13
                  sltu         a5, s6, s0
                  c.addi       t0, 26
                  mulhu        a5, a0, s8
                  c.addi4spn   a1, sp, 928
                  mulh         a7, sp, a4
                  lui          s10, 1008743
                  mulh         s9, a5, gp
                  srli         tp, s0, 21
                  ori          s5, a4, 519
                  c.add        a4, s6
                  c.mv         ra, a4
                  c.mv         t3, a7
                  srli         t0, t3, 3
                  divu         a4, a0, s5
                  slli         t5, a4, 28
                  c.and        a2, a3
                  remu         a7, s10, s6
                  mul          s2, s4, s10
                  slli         a0, a4, 3
                  c.add        s11, t3
                  mulhsu       tp, a5, s6
                  slti         s10, a0, -1663
                  sltu         s2, a2, t3
                  sltu         tp, s11, s3
                  sll          a7, s0, s5
                  rem          s1, t1, s3
                  rem          sp, t0, s5
                  mulh         a5, t3, s1
                  mul          s11, t0, t6
                  or           a1, t5, s4
                  lui          a7, 695761
                  addi         a7, t4, -232
                  nop
                  slli         t6, s4, 0
                  mulhu        s10, t1, a6
                  c.addi4spn   a2, sp, 816
                  c.xor        a4, s0
                  c.add        t6, s11
                  addi         t0, t3, -625
                  c.li         s3, 2
                  c.sub        a4, a5
                  srai         ra, s2, 31
                  rem          a1, s3, s4
                  sub          s7, tp, t1
                  c.addi       t0, 19
                  and          zero, s5, gp
                  c.slli       a4, 16
                  mulhsu       tp, t2, a6
                  div          ra, t3, s8
                  c.li         a7, 7
                  mulh         s11, s11, gp
                  c.addi       a7, -1
                  mulhu        sp, s2, sp
                  lui          s7, 79631
                  mulhu        a4, s7, a6
                  c.addi16sp   sp, -16
                  addi         s3, s2, 1479
                  c.srli       s1, 30
                  auipc        a4, 466006
                  mulhu        s9, s3, a5
                  c.and        a2, a4
                  sll          t2, s9, a0
                  c.and        s1, a5
                  andi         gp, a4, -1672
                  srai         s10, gp, 24
                  sll          zero, s10, s4
                  slli         a2, t1, 22
                  c.srai       a2, 23
                  c.srai       a4, 5
                  srli         s1, s3, 6
                  c.or         s0, a1
                  c.mv         a7, t1
                  c.slli       s7, 29
                  c.lui        a6, 6
                  c.addi4spn   a0, sp, 384
                  slt          t2, a3, s1
                  c.sub        a4, a4
                  c.li         s1, -1
                  auipc        s7, 904634
                  auipc        s5, 236184
                  div          tp, s7, s6
                  c.andi       a2, -1
                  srl          tp, a4, a7
                  slli         a2, t0, 20
                  nop
                  auipc        s9, 703770
                  c.and        a1, a3
                  c.addi4spn   a5, sp, 544
                  andi         t0, a3, -2000
                  slt          s8, a6, t0
                  c.sub        a1, a1
                  c.xor        a5, s1
                  c.lui        s2, 11
                  mulh         a6, a7, s7
                  mulhu        t2, s7, zero
                  sra          gp, a2, s6
                  sra          ra, a1, s10
                  c.or         a1, a3
                  c.li         t3, 21
                  c.addi4spn   a2, sp, 624
                  and          t1, s8, a1
                  sub          s0, s2, a1
                  addi         s10, a5, 1692
                  sll          t3, a7, zero
                  addi         t6, tp, 371
                  srl          a5, a4, zero
                  and          t0, t6, t6
                  nop
                  auipc        t2, 625262
                  c.andi       a0, -1
                  slt          t3, a5, t3
                  c.add        t1, tp
                  sra          t2, s9, t1
                  lui          t6, 406197
                  sub          ra, t6, s5
                  c.andi       s1, 7
                  srli         s0, zero, 6
                  xori         s3, a3, -306
                  sll          a4, t3, a4
                  c.sub        a0, a0
                  c.srli       a4, 1
                  sltiu        a0, s1, -1669
                  c.mv         s9, t2
                  xor          gp, s7, a2
                  c.addi16sp   sp, -16
                  or           a2, ra, s2
                  and          s7, s1, a3
                  addi         a5, s5, 630
                  c.or         a5, s0
                  c.li         a6, 25
                  remu         s0, t4, sp
                  and          s9, t0, a2
                  slti         s3, s1, 22
                  c.or         s1, s0
                  mul          a6, a5, a1
                  add          tp, s4, t5
                  sub          t0, t4, t3
                  or           t6, zero, tp
                  c.nop
                  mul          a6, sp, a4
                  div          s5, a0, a4
                  mulh         a0, s4, a0
                  lui          t1, 439751
                  c.srli       a2, 3
                  rem          a5, s5, tp
                  c.addi16sp   sp, -16
                  c.lui        t0, 28
                  slti         a6, a5, -1368
                  c.slli       a5, 11
                  srl          s7, a4, a0
                  c.slli       s5, 13
                  sub          a5, a0, sp
                  lui          s3, 899078
                  mulhu        s1, t6, s8
                  auipc        t6, 717805
                  xori         s11, a4, 575
                  c.srli       a0, 8
                  slli         gp, t0, 6
                  c.nop
                  c.mv         a5, a6
                  mul          t6, zero, a2
                  srl          s10, a0, a7
                  c.slli       tp, 9
                  ori          t1, a3, -1854
                  mul          s5, s8, s4
                  c.srai       a1, 22
                  sra          gp, t0, s11
                  mulh         s8, s0, s5
                  add          a2, s6, t6
                  and          ra, t6, s4
                  mulh         s1, s0, a1
                  remu         s7, t6, a7
                  c.srai       a2, 18
                  srl          t5, s8, s9
                  srai         s6, zero, 29
                  c.add        s1, s9
                  add          sp, t6, a6
                  c.lui        s9, 12
                  c.and        a2, s0
                  c.mv         tp, t6
                  srai         s0, sp, 4
                  c.sub        a1, a4
                  remu         a2, a7, t2
                  sub          s0, s10, s9
                  srai         s3, a3, 31
                  sra          tp, t0, s2
                  mul          s2, t1, s6
                  slti         s10, t0, 641
                  xor          t1, s6, a4
                  remu         s2, t3, t1
                  c.add        s7, a6
                  nop
                  c.addi       gp, 7
                  c.and        a4, a5
                  c.lui        t1, 8
                  slli         a6, t1, 27
                  c.mv         t3, s6
                  nop
                  sll          t3, a6, s4
                  c.addi16sp   sp, 496
                  srli         s5, s10, 20
                  c.slli       a7, 31
                  sltu         a4, a7, t0
                  mul          a4, s6, s5
                  srl          t6, s5, zero
                  lui          s9, 220198
                  c.or         a0, a2
                  c.andi       a4, -1
                  addi         s3, t4, 219
                  c.addi       s1, -1
                  and          s7, s7, t6
                  slt          t0, t3, s8
                  c.xor        a0, s0
                  sltu         s8, s5, s5
                  c.srai       a5, 23
                  xori         a5, t1, 736
                  c.add        s0, ra
                  c.slli       s6, 26
                  slli         s6, s6, 27
                  c.addi16sp   sp, 272
                  c.addi4spn   s0, sp, 816
                  addi         s11, a4, -1937
                  c.andi       a0, 31
                  slli         zero, a1, 9
                  c.andi       a1, -1
                  c.addi4spn   a2, sp, 64
                  c.addi       t6, 14
                  c.addi4spn   a1, sp, 128
                  c.addi       a2, 14
                  ori          s7, s2, -1513
                  slli         sp, t5, 26
                  nop
                  c.addi16sp   sp, -16
                  mulh         s10, t4, s3
                  mulhsu       a4, t2, a1
                  or           a0, s2, s0
                  xori         a7, a1, 775
                  c.lui        a6, 2
                  c.andi       a1, 13
                  srai         t0, s6, 2
                  div          t6, t2, s5
                  rem          a5, t5, t4
                  andi         a7, s2, 1989
                  mulhu        t1, s4, s6
                  c.or         a0, a1
                  srli         a5, a4, 9
                  nop
                  c.li         s0, -1
                  mulhu        gp, zero, t2
                  slti         tp, s4, -489
                  c.srai       a4, 20
                  xor          s1, a3, s2
                  c.srai       a2, 15
                  rem          t1, t6, sp
                  add          s3, s6, s2
                  or           sp, a7, t0
                  c.lui        s11, 25
                  c.lui        s5, 10
                  c.xor        s0, s0
                  mulhsu       a2, a0, t0
                  slti         a0, tp, 187
                  srli         s8, a1, 10
                  and          a2, s11, s8
                  c.mv         t2, t4
                  mulhsu       zero, tp, s4
                  sll          a0, a2, s3
                  slli         s0, t2, 3
                  c.srai       a5, 26
                  c.and        a4, a4
                  or           s11, s6, s6
                  slt          s7, a3, zero
                  c.li         t1, 15
                  addi         a2, tp, -1382
                  c.li         a0, -1
                  c.srli       a4, 23
                  andi         tp, sp, -555
                  c.srai       a0, 12
                  c.srli       a0, 16
                  srai         a5, s1, 21
                  rem          s11, ra, a1
                  xor          gp, t3, gp
                  c.li         s1, 15
                  slli         s5, t0, 17
                  xor          ra, s3, tp
                  mulh         t1, zero, t2
                  srai         s8, sp, 26
                  rem          a2, s11, s5
                  c.addi4spn   a4, sp, 784
                  sra          a7, tp, s7
                  sltu         s1, tp, t5
                  slti         t5, t1, -1678
                  or           s2, sp, s5
                  sra          ra, s8, a3
                  sltiu        s7, a7, -1480
                  div          t0, a7, t5
                  c.add        s6, t3
                  c.addi16sp   sp, 176
                  xor          s9, s0, a2
                  c.sub        s1, a5
                  mulh         sp, s1, s5
                  andi         a0, s5, -302
                  mul          a4, t2, t6
                  c.xor        a1, s0
                  c.li         a1, 31
                  c.li         s10, 15
                  c.nop
                  c.addi       s0, 7
                  xori         t3, a0, -1993
                  rem          t3, ra, t2
                  c.srli       a1, 6
                  xor          s1, ra, t1
                  sub          a1, a7, a4
                  c.slli       t6, 21
                  slt          ra, s6, ra
                  c.nop
                  c.srai       a4, 24
                  remu         gp, s7, t4
                  lui          t6, 157263
                  c.li         ra, -1
                  c.mv         s3, a4
                  c.add        t2, a2
                  div          a4, ra, zero
                  srl          s11, sp, t6
                  divu         t5, s7, s1
                  c.or         a4, s1
                  srl          s0, a2, s5
                  c.or         a0, a1
                  mulhu        s11, t5, a1
                  c.mv         a2, t3
                  c.addi4spn   a2, sp, 816
                  sltiu        s3, a0, 1926
                  slli         s5, s5, 17
                  or           gp, s11, a5
                  srli         s2, a1, 24
                  mulhsu       a2, gp, t0
                  c.li         a0, 7
                  c.addi4spn   a2, sp, 208
                  slli         a1, a2, 22
                  ori          s5, s0, 576
                  c.add        t1, a3
                  add          t6, zero, s4
                  sltu         s10, s6, a0
                  divu         s9, ra, zero
                  sltiu        s10, t4, 1198
                  auipc        s6, 937277
                  c.nop
                  c.lui        t6, 6
                  c.mv         s8, s9
                  srli         s7, t2, 31
                  sltu         s9, t3, a2
                  c.sub        s1, a3
                  c.srli       a1, 24
                  mulhsu       s0, t3, t1
                  c.li         s5, -1
                  c.addi16sp   sp, -16
                  sltu         a0, s7, t0
                  c.and        a0, a0
                  nop
                  c.andi       a2, -1
                  addi         t2, t4, 1789
                  ori          ra, s10, -1732
                  sra          s3, gp, s2
                  xori         s1, s10, 1860
                  add          a5, a4, gp
                  addi         s6, a3, 1139
                  andi         t6, gp, -1637
                  c.addi4spn   s0, sp, 480
                  c.or         a0, a4
                  c.or         a5, a5
                  srl          a7, s4, t2
                  xori         t0, s0, -648
                  c.nop
                  remu         t1, sp, ra
                  c.andi       s1, 22
                  sltiu        s2, s7, -487
                  c.addi       s8, -1
                  slli         zero, a4, 26
                  c.add        t3, ra
                  slt          t3, s2, s8
                  mulhsu       t3, t6, s2
                  rem          s1, sp, t3
                  mulhu        t6, a5, s6
                  nop
                  mul          t3, a2, a6
                  c.and        a5, a1
                  c.nop
                  remu         s1, a1, s0
                  andi         s7, s9, 1460
                  c.sub        a5, a3
                  rem          s0, a4, s4
                  xori         s2, a7, -1194
                  c.lui        t6, 9
                  sll          s7, s3, s7
                  c.srai       a4, 18
                  sub          s1, s0, a6
                  slli         a1, t1, 16
                  sltu         a5, t0, s4
                  srl          zero, ra, t0
                  slti         ra, sp, -1499
                  c.addi16sp   sp, 192
                  and          s10, tp, t2
                  sub          s5, tp, ra
                  srai         a0, s5, 29
                  slli         zero, a6, 1
                  c.srai       a5, 22
                  c.andi       s0, -1
                  c.add        a2, s9
                  add          s11, s0, s0
                  remu         s9, s5, a6
                  divu         a6, a1, s9
                  c.andi       a5, -1
                  remu         s10, s6, a1
                  c.addi       gp, -1
                  c.nop
                  mulhu        s6, t1, t1
                  c.and        a5, s1
                  c.addi16sp   sp, 128
                  c.sub        a0, a1
                  slt          a1, t6, s0
                  div          s7, gp, s7
                  mulhu        s3, s4, a4
                  c.srli       a2, 19
                  c.addi       a1, 17
                  sra          s5, s11, s1
                  addi         s7, s9, 1796
                  srai         s8, s7, 8
                  and          tp, a3, a6
                  sub          s6, s7, s7
                  xor          a1, a4, t3
                  sra          t5, a1, s6
                  lui          s5, 218858
                  sll          t0, s5, s7
                  mulhu        ra, s6, a7
                  rem          tp, a2, s10
                  mulhsu       a5, a5, s3
                  c.slli       t5, 16
                  c.and        a0, a0
                  srai         zero, t4, 31
                  slli         a2, a1, 13
                  slt          s6, a7, a1
                  mulhu        a5, sp, s3
                  c.nop
                  c.addi       t0, 26
                  andi         s1, t6, 1004
                  sub          a1, ra, a6
                  c.or         a5, a5
                  rem          s7, t1, a4
                  c.and        s0, a2
                  c.nop
                  mulhu        zero, gp, sp
                  srai         tp, t4, 11
                  add          s9, zero, a1
                  c.xor        a2, a5
                  ori          s10, t2, 241
                  slli         sp, s2, 26
                  xori         s2, s5, -844
                  xori         t2, a2, -559
                  xori         s11, s4, -593
                  mulhsu       s5, a3, s7
                  c.or         a1, a2
                  c.slli       sp, 28
                  slti         s11, sp, -2033
                  divu         ra, s8, sp
                  xor          a7, a7, a1
                  nop
                  srli         a5, s3, 17
                  rem          s1, zero, s10
                  c.addi4spn   a0, sp, 224
                  slti         s11, a0, 593
                  c.srli       a2, 23
                  addi         s2, t2, -893
                  li           s10, 0x4b52c502 #start riscv_int_numeric_corner_stream_11
                  li           a1, 0x0
                  li           sp, 0x5df2243f
                  li           s7, 0x80000000
                  li           a2, 0xffffffff
                  li           s1, 0xffffffff
                  li           s5, 0x80000000
                  li           a5, 0x0
                  li           a7, 0x80000000
                  li           s8, 0x0
                  lui          a2, 401430
                  divu         a5, sp, a5
                  mul          s1, a1, s10
                  lui          s8, 320079
                  nop
                  rem          a1, a5, s7
                  addi         s10, a2, 665
                  mulhu        s1, a5, s8
                  sub          a5, sp, s5
                  mulhu        a5, s5, s8
                  nop
                  addi         sp, a2, 293
                  sub          sp, s7, s10
                  mulhu        a5, a7, a7
                  sub          s5, s10, s10 #end riscv_int_numeric_corner_stream_11
                  divu         s7, ra, a0
                  c.and        a2, a5
                  xor          s3, s9, s8
                  slti         ra, a4, 1674
                  mulh         s6, t6, tp
                  xor          sp, a6, s1
                  c.addi4spn   s0, sp, 944
                  add          a0, zero, s10
                  sltu         t0, t4, s10
                  xor          gp, a1, sp
                  c.srli       a4, 13
                  c.andi       a4, -1
                  c.srai       a4, 22
                  c.srai       a5, 1
                  add          s2, a6, s0
                  xori         zero, s2, -1721
                  slti         t5, a3, -1367
                  c.li         t6, -1
                  addi         a7, s1, 796
                  auipc        a4, 51802
                  addi         s10, zero, 1282
                  xori         ra, t6, -1628
                  c.andi       s0, -1
                  slti         a0, t2, 1553
                  slti         a2, a7, 952
                  c.addi4spn   a5, sp, 16
                  auipc        zero, 881052
                  c.mv         a0, ra
                  srli         s9, a0, 18
                  sll          t3, s5, a5
                  srl          s11, s10, a7
                  srai         tp, a6, 27
                  and          s8, s0, a2
                  add          s10, s2, a2
                  srl          s0, t6, s3
                  addi         a1, zero, 823
                  srli         s11, t3, 26
                  c.srli       a1, 30
                  mul          a6, a4, s2
                  xori         s6, gp, -1788
                  andi         zero, a3, -180
                  lui          s9, 490920
                  and          t2, zero, a2
                  add          a1, a1, a1
                  slt          s11, s6, s6
                  sub          t2, a3, s7
                  sltu         s11, s9, a4
                  mulhu        s3, a0, a5
                  c.srli       a4, 14
                  sub          t6, a7, s11
                  c.addi16sp   sp, -16
                  srl          s9, a6, t3
                  sra          t2, a7, gp
                  srli         a1, t5, 25
                  sltu         s3, s7, s3
                  or           zero, a0, a7
                  srl          t6, s11, t6
                  remu         t5, t3, sp
                  divu         t1, zero, s8
                  sra          a5, t5, a5
                  c.lui        s3, 30
                  c.addi4spn   a2, sp, 720
                  add          t1, s9, s0
                  slti         zero, ra, 192
                  xori         a1, t2, -387
                  sltu         a4, a5, s4
                  c.mv         s5, t6
                  slt          a6, s7, t3
                  remu         t2, a3, a4
                  xori         s9, sp, 593
                  sll          sp, a5, zero
                  c.addi16sp   sp, 480
                  c.addi4spn   s1, sp, 1008
                  sll          s3, s9, a0
                  xor          t6, s11, t3
                  add          t0, s0, s11
                  sub          s7, ra, a3
                  addi         s0, s8, 574
                  c.and        a1, a2
                  slli         tp, s0, 4
                  divu         t3, s9, a7
                  and          a6, t5, a5
                  c.and        a5, a3
                  nop
                  remu         t6, a6, a3
                  lui          t0, 659899
                  xor          a4, t4, s0
                  sltu         a0, s0, s4
                  c.lui        t6, 6
                  c.nop
                  sltiu        s11, s8, 1648
                  c.srai       a1, 31
                  remu         s11, a7, s5
                  mulhsu       t1, ra, a0
                  mulhu        a5, a2, s0
                  c.lui        t0, 27
                  c.andi       a0, -1
                  xor          tp, ra, s10
                  c.nop
                  mulh         gp, s0, a1
                  c.srli       a2, 31
                  c.andi       s0, -1
                  mul          s7, a2, s3
                  rem          a7, tp, t4
                  xor          s1, s0, a5
                  mul          a6, tp, s2
                  mulh         t3, a5, s7
                  divu         s5, t3, s10
                  c.addi       s1, -1
                  srli         s9, a1, 15
                  remu         sp, ra, gp
                  add          tp, t1, s7
                  srl          sp, s6, sp
                  c.xor        a4, a5
                  c.lui        t6, 10
                  sltiu        gp, s3, -1423
                  srli         a0, a0, 26
                  slt          a2, a1, t0
                  sra          s5, s8, a3
                  c.mv         tp, a7
                  c.lui        a1, 6
                  srli         s7, a4, 31
                  rem          a1, s8, s0
                  c.andi       a5, 31
                  c.andi       a4, 23
                  ori          s8, a7, -1125
                  c.slli       s5, 18
                  c.mv         a1, s9
                  mulhu        t1, t0, a2
                  nop
                  xor          t1, s11, a0
                  xori         s5, a3, -926
                  slti         s9, s3, -1444
                  c.srli       a1, 8
                  add          s1, a1, ra
                  c.addi       a7, 29
                  mulh         s1, s9, zero
                  c.li         t3, -1
                  auipc        s0, 769569
                  andi         ra, gp, 650
                  sltu         s6, s9, a7
                  ori          t6, t1, 937
                  or           a7, s3, s0
                  xori         a4, s1, -1547
                  andi         a4, t1, 379
                  c.andi       a0, -1
                  c.li         s11, 27
                  sra          a5, s4, a6
                  and          s9, ra, t6
                  sub          t1, a3, s4
                  c.mv         ra, gp
                  c.or         s1, a4
                  addi         t0, s6, 1466
                  divu         a4, s4, s6
                  c.sub        a1, a2
                  c.srai       a2, 17
                  c.slli       a5, 18
                  addi         zero, gp, -1414
                  mul          s2, s7, s5
                  divu         a1, s2, ra
                  mul          a1, t3, a5
                  c.srli       a4, 8
                  xori         s0, t0, -877
                  add          t6, s7, a6
                  c.li         t5, -1
                  mulhu        s5, a1, t3
                  addi         s10, a4, -1665
                  c.sub        a5, a0
                  c.add        s10, t3
                  lui          s0, 705725
                  xor          s7, t3, s7
                  c.or         a4, a5
                  c.addi       a2, 19
                  mulhsu       t3, s7, s6
                  sub          s10, s5, ra
                  c.xor        a5, s1
                  addi         a4, a4, -980
                  srli         a0, s0, 4
                  mulhu        s1, s4, s11
                  div          s0, s3, s0
                  lui          t3, 703729
                  c.addi       a2, 13
                  remu         t6, sp, t3
                  c.addi       s6, 12
                  auipc        s5, 820032
                  or           s9, a0, a2
                  sll          s5, a1, zero
                  div          s5, gp, a3
                  slti         t6, s0, 2047
                  rem          s5, a0, t2
                  c.or         a4, a1
                  c.srai       a5, 21
                  slt          s7, s2, s7
                  c.srai       a0, 16
                  mulh         a7, t0, s5
                  c.andi       a2, 29
                  slli         s0, t2, 3
                  slti         s5, s11, 116
                  c.nop
                  sra          a6, a4, s2
                  auipc        t0, 625474
                  c.li         tp, 21
                  srl          sp, t2, a5
                  and          a2, s3, tp
                  mul          a5, t3, s10
                  c.nop
                  c.srli       a4, 7
                  c.andi       a2, 13
                  mulh         a5, s8, t3
                  c.and        a1, a1
                  c.add        s6, s9
                  xori         a1, t4, 128
                  c.andi       a1, -1
                  slti         zero, a0, -1954
                  sltu         tp, s7, a5
                  c.addi16sp   sp, -16
                  c.nop
                  slt          s3, a3, tp
                  ori          sp, t4, -1319
                  slti         t2, a1, -1587
                  sra          s10, t0, s11
                  slti         s3, ra, 1070
                  slli         zero, t1, 5
                  add          s11, a0, a1
                  remu         a7, s11, a0
                  and          s2, a3, t4
                  or           s11, ra, t4
                  c.or         a2, s1
                  andi         t2, t1, 2032
                  andi         t1, a0, 1107
                  nop
                  c.mv         a4, t3
                  add          s2, s11, t1
                  rem          ra, s3, t3
                  sll          t2, t2, gp
                  srai         s2, a7, 4
                  and          s5, a2, s11
                  c.li         s8, 5
                  slt          ra, zero, s8
                  mulh         sp, t3, s10
                  sltiu        a0, zero, 1393
                  sra          s10, a4, a5
                  sub          s5, t5, s7
                  mul          gp, s4, s11
                  srli         a1, s5, 29
                  slti         a0, s4, 393
                  remu         sp, a5, s9
                  mulh         s6, t3, a2
                  sll          s6, sp, s11
                  c.slli       s5, 3
                  c.li         t2, 7
                  slt          s2, t2, t0
                  ori          t6, s11, -1368
                  srli         t2, a1, 25
                  c.andi       a2, -1
                  rem          a7, zero, t4
                  nop
                  xori         s7, s8, -1592
                  sub          zero, a5, zero
                  slti         s6, a4, 534
                  c.srli       s1, 24
                  or           t3, s10, a6
                  c.srai       s0, 29
                  mulhu        s3, a3, s2
                  slti         s10, zero, 693
                  c.lui        a2, 12
                  or           s5, a5, a4
                  slli         a0, t2, 26
                  c.and        s0, a3
                  c.lui        a2, 3
                  c.andi       a2, -1
                  mulh         a6, a5, s11
                  sltu         s8, a1, t0
                  c.sub        s1, a1
                  slli         s3, s6, 15
                  xori         t5, s2, -1227
                  sltu         a6, ra, zero
                  div          a4, t0, t4
                  srl          s10, tp, a6
                  xor          zero, t4, sp
                  c.srli       a4, 4
                  div          zero, s4, t2
                  c.add        s2, a0
                  sll          a2, t6, s4
                  c.andi       s1, -1
                  mul          sp, s7, a4
                  sltu         s8, s5, s8
                  addi         s11, s6, -130
                  rem          a2, s4, t6
                  c.lui        s5, 18
                  c.addi       s0, 18
                  c.nop
                  remu         tp, zero, s5
                  c.slli       s3, 24
                  and          t1, a3, s5
                  c.xor        a4, a5
                  lui          s7, 391739
                  c.li         a1, -1
                  c.srai       a1, 8
                  sltiu        t5, s1, 1751
                  mul          s8, s8, a7
                  auipc        t5, 812718
                  rem          t5, t6, t0
                  srai         a6, s4, 22
                  c.li         a5, -1
                  auipc        s8, 342198
                  c.addi16sp   sp, 432
                  c.and        s1, a2
                  and          s9, t2, a4
                  c.xor        a2, s0
                  c.mv         tp, t5
                  srli         a1, s6, 26
                  sll          s5, a5, t1
                  divu         a0, s2, s4
                  addi         t5, a7, 1423
                  c.lui        s8, 23
                  rem          s8, s9, s10
                  c.slli       t0, 25
                  andi         t0, a4, 708
                  c.srli       s0, 24
                  sub          s2, s5, t2
                  add          a1, s8, a0
                  c.or         a4, s0
                  c.and        s1, a1
                  ori          a4, a4, -419
                  rem          s2, s2, s4
                  c.addi16sp   sp, 464
                  slti         a6, t3, 680
                  divu         t6, ra, s5
                  auipc        t2, 207077
                  sub          gp, zero, t3
                  mul          a1, t0, a6
                  sll          s11, s5, t4
                  slli         ra, s11, 0
                  sltiu        zero, tp, -17
                  sltu         a0, a4, s8
                  c.xor        a1, a1
                  rem          ra, t5, s4
                  add          sp, a7, t6
                  c.slli       t1, 20
                  sltu         a6, s4, t4
                  slli         s3, a2, 26
                  lui          t3, 747997
                  srli         t2, a6, 11
                  srl          s10, t0, a2
                  c.lui        s7, 21
                  xori         s6, t4, -656
                  c.addi4spn   s1, sp, 112
                  c.xor        a2, a3
                  c.nop
                  slt          gp, gp, a3
                  divu         gp, t3, zero
                  addi         a4, a1, -358
                  slt          sp, ra, zero
                  li           sp, 0x0 #start riscv_int_numeric_corner_stream_36
                  li           t1, 0xffffffff
                  li           s7, 0x0
                  li           t3, 0xa8fb4b85
                  li           s6, 0x0
                  li           a7, 0x856d6a57
                  li           s1, 0x8e6d65b9
                  li           a5, 0x80000000
                  li           s2, 0x7656633a
                  li           s8, 0x0
                  mulh         t3, a7, s2
                  auipc        a7, 100248
                  add          s6, sp, t3
                  addi         s2, a5, -691
                  rem          t1, s8, a5
                  divu         sp, s1, s7
                  mulhsu       s1, s8, a5
                  mulhsu       s6, t1, a5
                  mulh         t1, s7, t3
                  auipc        a5, 284618
                  add          a5, sp, s7
                  mulhsu       t3, s1, t1
                  mulhsu       s7, s7, t1
                  mulhsu       s8, a7, s6
                  nop
                  mulhu        s8, s8, t1
                  auipc        s7, 777132
                  addi         a7, s8, -1530
                  mul          a7, s2, s7
                  mulh         s7, a7, a7
                  add          t1, t1, s7
                  mulhsu       s7, a7, s7
                  mul          s1, s2, a7
                  mulh         t3, sp, s7 #end riscv_int_numeric_corner_stream_36
                  mulhsu       t1, t5, s9
                  slt          s2, a2, a5
                  slti         s9, sp, -1271
                  slt          s0, a3, s7
                  mul          s11, t5, a6
                  slti         t3, a5, -1089
                  mulhsu       a1, sp, s3
                  mul          s11, a0, s6
                  andi         s9, s9, -15
                  c.andi       a1, 15
                  slt          s1, a7, s9
                  srli         s8, gp, 10
                  sll          s2, s10, gp
                  add          s0, s8, a1
                  mul          a2, sp, a3
                  or           s9, a7, a1
                  c.addi       s10, 12
                  c.srli       s1, 19
                  c.andi       s1, -1
                  and          a5, a4, s1
                  nop
                  sub          s2, ra, t5
                  mul          tp, s10, tp
                  mul          a1, sp, s11
                  mulh         s9, t3, t1
                  remu         s7, t6, a1
                  slti         s7, a0, -956
                  mulhu        ra, t2, sp
                  sltiu        s8, s2, 164
                  slt          a5, gp, s4
                  add          ra, sp, t6
                  slti         s8, s2, 1623
                  c.andi       s0, -1
                  or           s6, s10, s1
                  c.addi16sp   sp, -16
                  mulhsu       s1, sp, t3
                  slt          s2, a5, a3
                  c.slli       s11, 19
                  divu         s3, s3, s7
                  mulhu        gp, s6, ra
                  mul          gp, s10, s8
                  and          gp, s8, s1
                  c.addi4spn   s0, sp, 784
                  andi         a6, s0, 537
                  sltiu        s7, s10, -1313
                  andi         a4, ra, 924
                  remu         s8, s8, s5
                  mulhsu       s5, s10, t6
                  c.addi       gp, 22
                  c.mv         s8, s0
                  rem          s3, t5, ra
                  c.and        a4, a1
                  srli         t3, s7, 19
                  c.addi16sp   sp, 192
                  mul          a1, gp, s4
                  mul          s8, s3, t3
                  or           s1, s5, t2
                  sll          s11, s9, s2
                  c.srai       a2, 11
                  sra          a1, a6, a4
                  c.lui        s2, 17
                  mulhsu       t6, t5, t3
                  c.or         a0, s1
                  or           t0, s0, t3
                  c.mv         tp, a1
                  sltiu        a5, gp, 64
                  c.nop
                  srli         a5, sp, 12
                  xori         zero, a6, 1541
                  andi         s6, t5, 610
                  ori          sp, a4, -724
                  srli         t1, t4, 12
                  c.mv         t5, sp
                  c.lui        s2, 30
                  xori         s1, s4, -744
                  nop
                  mulhu        sp, s2, zero
                  c.andi       a5, -1
                  mulhu        tp, s11, t1
                  sltiu        s1, a1, -80
                  srli         sp, t2, 8
                  c.sub        a4, s0
                  c.nop
                  c.or         a1, s0
                  c.lui        ra, 13
                  c.addi       s3, -1
                  rem          a1, s3, s6
                  nop
                  c.mv         a2, sp
                  add          a2, s5, t0
                  c.add        t2, s7
                  and          a4, s11, a1
                  c.slli       a5, 20
                  c.addi       t1, -1
                  remu         a0, ra, a2
                  nop
                  sra          sp, s5, a5
                  addi         gp, s0, -2033
                  nop
                  c.add        t3, tp
                  sll          s8, a3, s9
                  xor          s6, s5, t0
                  sltu         t3, s2, s5
                  c.and        a0, a3
                  srli         s8, t2, 21
                  c.nop
                  sll          a0, t4, s6
                  xor          a2, a5, ra
                  addi         s10, sp, -1429
                  c.srli       a0, 22
                  mulh         s5, s5, ra
                  c.mv         ra, s8
                  sll          s1, a4, t4
                  lui          s9, 266050
                  xor          a1, s1, gp
                  c.add        tp, sp
                  or           s5, s0, zero
                  mulhsu       s1, a1, ra
                  xori         s10, t0, -351
                  rem          t3, t4, a0
                  c.lui        a0, 4
                  andi         t3, a6, -638
                  xor          s1, s7, a2
                  sltu         a5, s2, a5
                  mul          gp, ra, zero
                  div          a2, t3, t5
                  andi         s5, t4, 1709
                  rem          a2, s5, s2
                  slt          a1, a7, ra
                  c.andi       a2, -1
                  c.mv         s2, t1
                  or           t5, a7, s10
                  andi         s2, s5, -1220
                  slti         tp, gp, -429
                  slti         s2, t2, 1913
                  c.andi       a2, -1
                  slti         s9, gp, -438
                  c.nop
                  addi         s11, s10, -563
                  slli         a5, s6, 21
                  c.andi       s0, 2
                  srl          s1, a6, s1
                  xor          s10, s2, t0
                  slli         a1, t3, 8
                  ori          s11, a3, 1443
                  c.addi16sp   sp, 496
                  c.srli       a5, 6
                  mulhu        zero, s4, a6
                  c.lui        t1, 2
                  and          s0, gp, t4
                  c.srli       a5, 28
                  c.mv         t5, t2
                  srl          a5, a5, t1
                  srai         t0, a4, 9
                  slli         s3, ra, 11
                  srai         s10, s5, 2
                  c.xor        a4, a4
                  or           s5, t1, t1
                  ori          s1, zero, -1448
                  c.sub        a5, a5
                  c.slli       t1, 5
                  addi         t5, t3, -297
                  div          s2, s5, a1
                  divu         s10, a2, s5
                  mulhsu       tp, a2, s4
                  c.xor        s1, s0
                  ori          s0, s1, -85
                  or           gp, t4, t0
                  srl          ra, ra, a6
                  c.add        s11, t2
                  and          t3, s4, a0
                  slti         s9, s11, 576
                  lui          tp, 210233
                  c.xor        s0, a0
                  c.srli       a0, 19
                  srli         s1, s5, 13
                  andi         zero, s11, -857
                  or           s8, t6, s10
                  auipc        s2, 294531
                  sltu         zero, t3, t6
                  add          s7, sp, a2
                  xori         s3, s7, -1151
                  sltu         ra, t4, a7
                  mulh         s1, gp, zero
                  c.addi       s0, 29
                  auipc        a4, 433244
                  c.mv         sp, a5
                  sltu         gp, t4, a0
                  c.xor        s1, a0
                  sub          a2, s10, s3
                  c.mv         s9, a3
                  c.add        ra, a6
                  and          s5, sp, a1
                  div          t1, s4, t4
                  auipc        a1, 775536
                  lui          s9, 735219
                  or           s5, zero, zero
                  sra          t0, s2, zero
                  sub          t3, a2, t3
                  sra          s1, a6, s6
                  c.slli       ra, 5
                  remu         a0, t0, s5
                  c.addi       t3, -1
                  xor          t6, tp, a6
                  c.andi       s1, -1
                  sub          t0, t0, t3
                  sub          tp, a3, s2
                  sub          s9, t2, ra
                  c.add        s2, t6
                  add          s9, t6, s1
                  auipc        t3, 369015
                  slti         tp, s9, 1489
                  srli         zero, zero, 5
                  and          t2, a2, s11
                  rem          t1, s8, ra
                  or           s10, a2, a1
                  c.addi16sp   sp, -16
                  auipc        s5, 660252
                  c.add        s0, t5
                  srli         s10, sp, 7
                  mulh         s8, zero, a2
                  c.li         s8, -1
                  slti         a2, s6, 426
                  addi         s1, s2, -1752
                  rem          a4, a2, s8
                  sltiu        s0, t3, 571
                  c.srai       a1, 4
                  mulhsu       t5, s3, ra
                  lui          t1, 733251
                  nop
                  c.nop
                  xori         ra, t6, -458
                  mulhu        s2, s1, s7
                  sltiu        a1, a5, 1063
                  c.addi16sp   sp, -16
                  andi         s11, t3, -1993
                  c.andi       a1, -1
                  div          t1, t2, s1
                  mulhsu       s8, s7, a3
                  c.and        a1, a5
                  mul          a1, a2, s5
                  c.addi16sp   sp, 32
                  sub          s5, t3, s0
                  and          a2, s3, a0
                  sub          t1, a4, a2
                  rem          s2, a7, a5
                  xor          t3, ra, t1
                  c.or         a4, s1
                  auipc        zero, 516614
                  mul          a6, s6, a6
                  sub          t6, a2, t0
                  c.mv         s5, a6
                  add          t0, a1, t1
                  mul          t5, a7, zero
                  c.or         s0, a2
                  and          t2, a3, s8
                  rem          a1, ra, t6
                  add          s11, t0, zero
                  xor          s0, a7, s2
                  slt          t2, t6, zero
                  xor          a2, t4, a1
                  sltiu        tp, t1, 207
                  sll          t3, t5, gp
                  c.addi4spn   a1, sp, 640
                  c.addi16sp   sp, 304
                  c.srai       a4, 4
                  c.srli       s1, 6
                  c.add        s5, a7
                  rem          tp, a1, s8
                  auipc        t1, 484713
                  slli         s11, s8, 29
                  lui          s6, 736885
                  xor          s11, a2, a1
                  xor          a4, s7, a3
                  ori          s9, s4, -1229
                  or           s11, tp, s10
                  xor          s10, s6, a6
                  sra          a7, gp, s1
                  or           a7, s7, s3
                  mulh         s8, a4, s11
                  sltu         s7, s2, t4
                  add          zero, s3, a0
                  sltu         a2, t2, t2
                  slli         t6, s7, 4
                  c.addi4spn   a0, sp, 176
                  xor          s7, gp, a0
                  nop
                  c.xor        a0, s1
                  addi         t0, t2, -756
                  nop
                  c.addi4spn   a0, sp, 624
                  remu         a6, t2, t0
                  slli         s0, s0, 27
                  mul          a5, s7, t2
                  div          s5, sp, s6
                  divu         sp, t4, t5
                  sltiu        ra, s11, -215
                  c.andi       s0, -1
                  xor          gp, s9, a3
                  addi         a1, s5, 168
                  c.andi       a1, -1
                  sll          s10, t1, s11
                  add          ra, s0, s10
                  c.li         s5, -1
                  mul          t1, t1, s1
                  slli         a1, t4, 19
                  srl          a6, ra, ra
                  c.xor        a2, a4
                  c.sub        a2, s1
                  slt          s5, t1, a5
                  addi         s8, s6, -1063
                  or           a6, s11, s9
                  mulhu        t5, s9, a5
                  c.addi       s5, -1
                  srl          t0, s11, tp
                  c.srai       a2, 21
                  xor          t6, a4, sp
                  c.addi4spn   a1, sp, 560
                  c.sub        s1, a2
                  sltiu        a2, a2, 1298
                  c.addi       t3, -1
                  srli         sp, sp, 5
                  sltiu        s5, t5, -1079
                  c.add        a5, s2
                  lui          sp, 733693
                  c.srli       a5, 7
                  lui          s3, 9609
                  mulh         s2, a6, s4
                  nop
                  c.and        a2, a3
                  rem          t1, gp, s1
                  remu         s2, a3, t5
                  sltu         t3, t0, s8
                  auipc        tp, 110946
                  addi         a1, s8, -1185
                  rem          s11, s6, a7
                  addi         s10, t0, 1703
                  c.nop
                  add          zero, a7, a2
                  slti         s2, t0, 149
                  srai         zero, a5, 25
                  c.andi       s0, 8
                  sra          tp, s0, s9
                  c.lui        t1, 6
                  c.add        s11, s7
                  remu         a1, s0, t5
                  c.li         t2, -1
                  add          a7, s0, t0
                  sub          gp, a6, s0
                  slti         s8, s9, -1065
                  slti         a6, a0, 1895
                  srli         s5, a2, 15
                  sra          s1, a7, t3
                  slli         a2, zero, 3
                  sltu         gp, t2, s9
                  mul          tp, s10, t0
                  rem          s2, ra, sp
                  sub          t1, s6, s1
                  mulhsu       a7, t2, ra
                  c.addi       s0, -1
                  c.addi4spn   a5, sp, 480
                  c.add        t3, tp
                  or           gp, a4, tp
                  mulh         ra, a7, a1
                  addi         t1, a1, -1951
                  sub          s9, s8, a7
                  ori          a1, s7, 1508
                  sll          sp, a0, ra
                  xor          gp, t1, s7
                  c.lui        t3, 21
                  lui          s3, 757008
                  div          s9, a2, s9
                  c.addi       s9, -1
                  c.srai       a1, 28
                  c.addi4spn   a2, sp, 816
                  add          s3, s8, s3
                  add          s0, t6, a4
                  slli         a2, t5, 0
                  xor          s0, sp, ra
                  srl          t1, t6, s2
                  c.srli       a5, 10
                  or           s6, s5, t2
                  sra          gp, a3, s10
                  c.nop
                  mulhsu       t5, a0, a0
                  slli         t3, t6, 30
                  c.mv         s7, t3
                  mulhsu       s0, a5, t1
                  sltiu        s7, a7, 628
                  c.sub        a4, a3
                  sub          t2, s6, zero
                  andi         gp, s10, -241
                  slti         sp, s3, -1708
                  divu         t5, a6, a6
                  div          sp, a4, s9
                  srai         s9, t4, 23
                  c.andi       a4, 14
                  c.srai       s1, 25
                  slli         t2, t2, 0
                  c.addi4spn   a4, sp, 592
                  and          s1, s1, a1
                  sll          gp, s5, s8
                  srli         sp, ra, 25
                  c.srli       s1, 7
                  xori         t6, s10, -806
                  divu         a1, a5, t2
                  sra          s3, s6, a1
                  c.xor        a2, a2
                  sub          a4, a3, a2
                  mulh         a6, tp, zero
                  sra          s6, tp, s4
                  c.addi       gp, 25
                  sub          s2, s11, a4
                  remu         t2, t1, t6
                  slli         s3, s11, 24
                  mulhsu       a4, a0, s5
                  c.lui        a4, 3
                  slli         gp, t5, 26
                  c.addi       s2, 16
                  sltiu        s1, s6, -88
                  or           s1, s2, s9
                  c.addi4spn   a5, sp, 784
                  mulhu        tp, s0, s6
                  c.addi16sp   sp, -16
                  mulh         s3, a6, ra
                  or           s0, ra, s8
                  c.addi       s11, -1
                  c.slli       t2, 25
                  sub          a1, zero, s10
                  c.nop
                  mulh         t1, a5, s5
                  c.addi       t5, 25
                  mulh         s9, s11, s7
                  rem          a6, s2, t0
                  div          a1, s3, s2
                  c.and        s0, s0
                  c.add        a5, t4
                  ori          s6, gp, 626
                  c.addi16sp   sp, 384
                  c.or         a0, a3
                  c.or         s1, a3
                  remu         gp, s9, s5
                  srli         s11, s4, 14
                  slli         s9, gp, 27
                  div          s1, t1, s7
                  c.lui        s3, 14
                  sub          a1, a2, s5
                  c.addi16sp   sp, 176
                  mul          t2, zero, t0
                  rem          ra, t2, s5
                  c.addi4spn   a4, sp, 880
                  mulhsu       ra, sp, a0
                  c.slli       s1, 20
                  c.addi16sp   sp, 48
                  c.lui        s8, 3
                  c.add        ra, a3
                  ori          s10, ra, 815
                  div          t3, s5, s0
                  slli         t5, t5, 20
                  c.sub        a0, a3
                  lui          s0, 401200
                  c.slli       t1, 17
                  c.mv         s10, s3
                  add          a4, gp, s8
                  remu         tp, s3, s7
                  c.li         t1, 4
                  sll          s1, a1, s9
                  srli         gp, t6, 14
                  slt          t5, t0, a3
                  c.nop
                  sltiu        a0, gp, 1553
                  div          s8, s11, s6
                  mul          s10, tp, t3
                  rem          t6, s8, a6
                  remu         t2, s1, ra
                  sra          a5, s6, s11
                  div          t3, ra, a6
                  srai         a6, sp, 11
                  c.srai       a4, 2
                  c.lui        a1, 3
                  mulh         a7, sp, s11
                  slti         s9, t3, 1744
                  c.lui        a0, 14
                  mulhsu       s1, t0, sp
                  c.xor        s1, a2
                  c.sub        s1, s0
                  li           s2, 0x80000000 #start riscv_int_numeric_corner_stream_10
                  li           a4, 0x0
                  li           s3, 0x80000000
                  li           s8, 0x0
                  li           s5, 0xec9f5efd
                  li           s6, 0x0
                  li           a0, 0x404a0a99
                  li           a6, 0xfafbae5d
                  li           t3, 0xffffffff
                  li           gp, 0x80000000
                  add          a4, s6, a4
                  add          a0, t3, t3
                  addi         a6, gp, 342
                  mul          s2, gp, a4
                  nop
                  auipc        s5, 930222
                  mulhsu       gp, a4, a0
                  nop
                  add          s5, a4, s6
                  mulh         s5, s8, s6
                  sub          t3, gp, s5
                  remu         s2, s8, a6
                  add          s8, s5, a6
                  addi         s6, a0, 166
                  mul          a4, s5, s2
                  rem          gp, gp, a4
                  divu         t3, a6, a6
                  divu         s2, s5, t3
                  rem          s8, s2, a6
                  divu         s6, s8, a6
                  auipc        s5, 230063
                  divu         s8, s2, s3
                  div          gp, s3, a4 #end riscv_int_numeric_corner_stream_10
                  lui          t3, 270423
                  c.mv         s2, s5
                  c.add        tp, a3
                  mul          s11, s4, t1
                  nop
                  c.mv         s5, s8
                  c.addi       a6, 21
                  slti         ra, s6, -1483
                  xor          tp, s3, a1
                  c.mv         a1, s4
                  c.li         s10, -1
                  mulh         s2, t6, a2
                  sra          t2, a2, ra
                  c.srli       a0, 20
                  rem          t5, s2, gp
                  c.andi       s0, 14
                  add          gp, a6, a4
                  lui          a5, 53284
                  and          s2, a5, a3
                  c.xor        s0, a5
                  div          t1, t6, a4
                  mul          a4, gp, s0
                  xori         a4, s0, -1667
                  c.addi16sp   sp, 224
                  li           a1, 0x553f37cf #start riscv_int_numeric_corner_stream_1
                  li           s0, 0xffffffff
                  li           a4, 0x56bf1ff0
                  li           s3, 0xa353ce71
                  li           a2, 0xffffffff
                  li           t3, 0x80000000
                  li           s7, 0xffffffff
                  li           ra, 0x0
                  li           s6, 0x80000000
                  li           tp, 0x80000000
                  lui          a1, 281207
                  mulhsu       s6, tp, s3
                  lui          s3, 399688
                  auipc        tp, 781658
                  mulhsu       a2, tp, s3
                  mulhsu       s3, t3, s6
                  sub          ra, s3, ra
                  add          s6, s6, tp
                  mulhsu       s6, s6, s7
                  addi         a4, t3, -1625
                  remu         t3, s6, a1
                  addi         s3, s0, -1974
                  remu         s3, tp, a4
                  rem          s6, a2, s7
                  lui          ra, 82353
                  lui          tp, 53287
                  mulh         s0, t3, ra
                  mul          a4, a2, s7
                  nop
                  add          a4, a4, s6
                  mulh         s7, s7, a4
                  mulhu        a4, s7, s3
                  mulhsu       s3, ra, s7
                  addi         tp, a1, 1203
                  mulhsu       t3, tp, ra
                  divu         s6, s7, t3
                  sub          s7, ra, ra
                  mulhsu       a4, a1, s6
                  mulh         a4, ra, s7
                  divu         s6, ra, tp #end riscv_int_numeric_corner_stream_1
                  c.li         tp, -1
                  slli         t1, s5, 21
                  c.srli       a0, 13
                  remu         a6, s0, s8
                  c.and        a0, a1
                  c.andi       s0, 21
                  sub          t3, a7, s4
                  c.addi4spn   a5, sp, 864
                  and          s6, gp, t6
                  sltu         zero, s5, gp
                  srl          s7, s0, s6
                  andi         t2, s1, 714
                  xori         zero, s7, 1249
                  rem          s2, a2, s7
                  remu         a7, t1, a2
                  sltu         a6, zero, s4
                  div          s7, a0, t0
                  mulhsu       s0, t3, s7
                  srai         gp, s8, 23
                  sll          zero, s11, s2
                  lui          s1, 846304
                  c.lui        s7, 28
                  mulhsu       a7, s4, s8
                  rem          tp, a2, s6
                  addi         t0, s10, -529
                  and          s6, s11, a2
                  ori          ra, zero, 961
                  srai         t3, tp, 9
                  c.sub        a4, s1
                  c.nop
                  c.and        a5, a0
                  auipc        a0, 388209
                  mulh         s11, t2, a3
                  addi         s10, a1, 337
                  sltu         t0, s1, a6
                  or           s5, s7, s1
                  srl          a1, t4, s11
                  addi         s8, s10, -1916
                  srl          s11, gp, s2
                  xori         sp, s5, -1742
                  c.add        t1, s5
                  div          s10, a0, t1
                  c.li         s2, -1
                  c.or         a0, a5
                  slti         s11, zero, -693
                  auipc        t6, 269792
                  and          gp, s9, a0
                  slti         zero, s7, 1447
                  c.addi16sp   sp, -16
                  sltiu        sp, s2, -972
                  c.andi       s0, -1
                  srai         s10, a5, 26
                  divu         a4, sp, t4
                  slti         s9, a5, -2002
                  rem          zero, a4, t1
                  mulh         t2, s11, s11
                  mulhsu       s6, sp, a0
                  mulh         t5, a7, s4
                  and          t6, s3, s2
                  sltiu        ra, t0, 965
                  c.xor        a4, a3
                  or           t0, a5, t5
                  or           s8, zero, s11
                  lui          t3, 413710
                  rem          a5, tp, zero
                  c.sub        a2, s1
                  srli         t0, s7, 22
                  c.or         s0, a3
                  remu         zero, a6, sp
                  and          s8, tp, zero
                  div          s9, t3, s6
                  xori         a5, a4, 1796
                  c.srai       s0, 7
                  c.li         tp, -1
                  sub          a1, a7, s1
                  srai         t6, s7, 3
                  srli         s2, s8, 17
                  c.addi4spn   a1, sp, 880
                  sub          s3, a0, a3
                  c.mv         s11, s11
                  c.add        t0, gp
                  mulh         s6, a3, t5
                  mul          gp, ra, s11
                  c.li         t1, 27
                  auipc        zero, 701747
                  andi         s2, zero, -333
                  sltiu        a7, a2, 1049
                  xor          a7, s2, a0
                  c.xor        a5, s0
                  c.and        s0, a0
                  c.addi       a6, -1
                  srli         s0, s3, 13
                  c.mv         s0, t1
                  nop
                  c.srli       s1, 8
                  c.lui        gp, 19
                  ori          s8, a0, 1312
                  c.slli       s8, 27
                  slti         s9, tp, 140
                  auipc        s10, 632407
                  mulhu        s8, s1, a0
                  c.addi       t3, -1
                  nop
                  xor          s5, s6, a5
                  add          t5, s1, s8
                  sltu         s0, a5, a5
                  sltu         a4, s7, s11
                  mul          a1, s6, s4
                  mulh         s11, a2, s3
                  srli         a0, s4, 17
                  lui          s5, 720197
                  srl          ra, t5, ra
                  c.lui        a6, 8
                  c.sub        a2, a5
                  slli         s7, tp, 2
                  c.or         a0, a5
                  mulhsu       s0, a0, a6
                  sub          a7, a2, t1
                  and          a0, zero, tp
                  addi         s3, t4, 1499
                  sltu         s6, a3, a5
                  slti         s11, a2, 1669
                  c.mv         t1, sp
                  nop
                  c.addi16sp   sp, 464
                  slli         t3, s2, 1
                  or           a5, t4, s5
                  c.sub        a1, a4
                  c.lui        a2, 5
                  c.li         a4, 1
                  c.srli       s0, 30
                  c.srai       s1, 27
                  mulh         s11, s4, s3
                  mulhu        a0, t4, gp
                  add          s11, s6, t1
                  mulh         s10, ra, a0
                  xor          s6, t5, s0
                  xori         s0, s8, -1388
                  slti         s8, s2, 365
                  or           s0, a5, a0
                  sub          s3, t5, t0
                  auipc        a5, 514148
                  c.addi       ra, -1
                  slti         s9, a2, -1227
                  c.slli       t6, 23
                  div          a1, t3, a6
                  c.and        a5, a3
                  sltiu        a2, s2, 744
                  and          t5, t4, a4
                  c.addi16sp   sp, 32
                  divu         s2, a3, s11
                  xori         t5, s5, -1980
                  c.add        ra, t0
                  nop
                  slli         a4, gp, 14
                  addi         a7, s5, 180
                  mulhu        a1, t4, zero
                  c.nop
                  c.slli       sp, 4
                  divu         t5, t6, a6
                  c.addi4spn   a5, sp, 432
                  divu         a1, s9, s9
                  nop
                  add          a6, s1, s6
                  c.srai       s1, 12
                  rem          s11, ra, zero
                  sltiu        a0, s7, -536
                  c.addi       t5, -1
                  c.nop
                  slli         sp, a4, 6
                  sltiu        a4, a4, 483
                  slti         a0, s10, -1595
                  divu         s9, ra, s9
                  div          a4, zero, s5
                  c.addi4spn   a0, sp, 608
                  sltiu        tp, ra, 134
                  sltu         a2, t6, s9
                  xori         s10, t2, -1321
                  c.addi4spn   s1, sp, 320
                  remu         t2, s5, gp
                  remu         s3, t5, s2
                  addi         a6, s6, 104
                  srl          a6, t1, t2
                  srai         a1, t6, 29
                  sll          a0, a0, s3
                  srai         s2, gp, 24
                  c.nop
                  c.li         a6, -1
                  divu         sp, a0, a7
                  slti         zero, s5, -190
                  c.srai       s1, 14
                  c.andi       s0, 20
                  sub          a1, a4, s6
                  xor          s6, s7, a2
                  slt          s5, a7, a1
                  add          gp, sp, a6
                  c.li         a0, 2
                  c.lui        a2, 2
                  sub          s1, s11, a5
                  c.sub        a2, a5
                  c.addi16sp   sp, 16
                  andi         s0, t5, 1091
                  c.addi16sp   sp, -16
                  remu         t2, zero, s2
                  lui          a0, 747361
                  addi         s9, s6, 679
                  srai         s10, s6, 8
                  auipc        s10, 117420
                  c.xor        a5, a0
                  c.mv         t6, s4
                  c.addi       s2, 26
                  c.andi       s1, -1
                  c.add        s0, t2
                  or           s5, s1, ra
                  sub          t5, ra, s9
                  mul          t2, a4, a6
                  c.nop
                  auipc        s6, 950708
                  c.srli       s1, 30
                  c.xor        a0, a4
                  c.lui        s8, 30
                  remu         s11, t5, a3
                  mul          sp, s6, t4
                  mul          a2, t1, tp
                  andi         s1, a6, 219
                  c.andi       a2, -1
                  nop
                  slli         s10, gp, 16
                  c.and        s0, a5
                  div          s9, a3, a6
                  c.add        t0, tp
                  c.sub        a5, s1
                  divu         t2, s9, a5
                  srli         t5, t1, 12
                  c.addi16sp   sp, -16
                  xori         t2, s10, -1667
                  c.addi16sp   sp, 384
                  c.addi16sp   sp, -16
                  andi         a7, tp, -443
                  rem          s1, gp, sp
                  slt          t0, t5, a2
                  c.slli       s9, 15
                  c.nop
                  div          s6, zero, a0
                  c.nop
                  c.slli       s9, 1
                  c.srai       s1, 5
                  auipc        t3, 613209
                  sltu         s10, s3, tp
                  add          s10, s2, t6
                  mul          t2, sp, a6
                  auipc        s2, 72207
                  c.srli       a0, 15
                  c.andi       a1, -1
                  lui          gp, 596339
                  c.addi4spn   a2, sp, 608
                  srl          s9, s9, s7
                  remu         a6, gp, t0
                  slli         t0, a6, 13
                  remu         s9, s5, a2
                  c.andi       a1, -1
                  c.nop
                  c.addi16sp   sp, 224
                  xor          s7, s9, sp
                  remu         s10, s4, t1
                  c.mv         gp, a0
                  c.mv         a0, s6
                  mul          s8, s2, s2
                  sll          a1, a1, s11
                  c.add        s3, s9
                  auipc        t0, 973772
                  auipc        ra, 296110
                  srai         a4, a0, 2
                  ori          gp, t3, 132
                  xor          s1, a1, s4
                  c.mv         a1, gp
                  lui          a7, 662158
                  or           s8, s0, t5
                  or           a1, s9, t0
                  srli         s9, sp, 31
                  lui          a5, 145623
                  sll          tp, s5, ra
                  rem          t0, a6, sp
                  sltiu        a6, s7, -1537
                  c.addi16sp   sp, 496
                  srai         a4, t4, 13
                  and          s9, s4, a3
                  slti         s9, a0, 907
                  c.sub        a1, a3
                  slti         s2, a2, 791
                  c.addi       t5, -1
                  c.slli       a2, 19
                  c.addi       t2, 8
                  xor          a4, a7, zero
                  c.sub        a2, s0
                  c.sub        a1, s0
                  andi         s3, t1, 387
                  sltiu        s6, s8, -36
                  c.andi       a2, 9
                  sltu         s11, t4, a1
                  addi         s3, a6, -704
                  divu         s7, t3, sp
                  sll          s10, s7, a3
                  c.sub        a2, a2
                  xor          s0, s0, a7
                  addi         s0, zero, 1934
                  c.add        t2, ra
                  sltu         a4, t4, a4
                  c.add        s0, a6
                  slti         s5, s10, 1878
                  c.mv         s10, a7
                  nop
                  srli         a0, t1, 15
                  sltu         s5, s1, s5
                  c.srli       a0, 21
                  mulh         a0, s6, zero
                  li           ra, 0xffffffff #start riscv_int_numeric_corner_stream_18
                  li           s2, 0xffffffff
                  li           t3, 0x0
                  li           a2, 0x0
                  li           t2, 0x0
                  li           a4, 0xffffffff
                  li           s11, 0xffffffff
                  li           s5, 0x7d6d514a
                  li           a6, 0x80000000
                  li           t5, 0xffffffff
                  divu         s2, a6, s2
                  addi         a4, t3, 937
                  mul          s11, t2, t3
                  addi         t2, s11, 1446
                  div          ra, s11, t3
                  divu         a4, t5, t5
                  mulhu        s11, a2, s2
                  addi         t5, s5, -1446
                  lui          a4, 230232
                  add          a4, a4, t3
                  add          s5, a2, ra
                  sub          s2, a2, t3
                  rem          s11, s2, s11
                  mulhsu       a4, s2, a2
                  div          t2, t2, a2
                  lui          a6, 727669
                  remu         a4, s5, t2
                  rem          a2, s5, t2
                  add          s2, a4, t2
                  divu         a4, t5, a6
                  mul          s11, a2, s11
                  lui          t5, 170200
                  addi         t5, a4, 1520
                  auipc        ra, 867929
                  mul          s11, s5, t3
                  addi         a2, s5, 1805
                  lui          a2, 247988
                  remu         s2, s5, a4 #end riscv_int_numeric_corner_stream_18
                  c.sub        a4, a1
                  andi         s3, sp, 7
                  mulhu        s0, t4, a4
                  addi         gp, a6, 760
                  mulh         sp, s4, a7
                  mulhu        s8, a5, s9
                  c.sub        a5, a5
                  remu         a5, s9, a7
                  mul          s6, zero, s0
                  div          t1, a7, t5
                  c.srli       s0, 12
                  c.xor        a0, a4
                  c.srai       a4, 12
                  c.li         s8, -1
                  srl          a6, s6, s7
                  add          s9, sp, s6
                  slli         a6, s0, 22
                  c.srai       a0, 3
                  srai         t5, t6, 28
                  or           s2, a3, a3
                  ori          s1, sp, -200
                  c.srai       a5, 6
                  divu         s8, a3, a1
                  c.srli       s0, 21
                  divu         t5, s11, s7
                  c.li         s6, -1
                  c.li         a1, 19
                  sltiu        a1, s9, 1580
                  slti         tp, s4, 1227
                  ori          s10, t5, 1179
                  slti         a4, s10, 49
                  slti         ra, a1, -559
                  slti         s3, gp, 370
                  xori         t3, s11, 553
                  c.mv         a4, ra
                  c.addi       tp, -1
                  mul          s8, s1, t1
                  c.nop
                  mulh         s2, a2, t4
                  c.mv         t2, t4
                  slt          a7, s0, t3
                  slt          s6, a7, a3
                  c.addi       a5, -1
                  c.lui        a5, 15
                  c.addi       s8, -1
                  c.or         a5, a0
                  add          s10, a2, s0
                  slli         a5, zero, 23
                  c.andi       a4, 5
                  c.li         t2, 30
                  c.sub        s1, a4
                  c.nop
                  div          s9, sp, zero
                  mulhsu       a0, s1, t5
                  sll          t0, s10, t6
                  srli         ra, s5, 30
                  or           t2, a2, gp
                  andi         t2, s7, -526
                  srli         s8, s0, 24
                  c.li         a5, 2
                  divu         s7, ra, t2
                  ori          t5, a1, -221
                  c.sub        a0, a1
                  sltu         t2, a7, s7
                  srli         s2, a7, 16
                  c.mv         s5, a5
                  xor          t2, a2, ra
                  c.andi       a0, 10
                  sltiu        tp, ra, 529
                  and          t6, sp, a0
                  c.xor        a0, s1
                  sll          s1, s5, t4
                  c.slli       s2, 19
                  remu         s8, s1, a1
                  sub          ra, s10, t6
                  srli         s10, t1, 2
                  lui          t6, 806834
                  nop
                  sltu         s8, t0, s10
                  mulhsu       t3, s0, t4
                  rem          t3, a6, s1
                  remu         sp, t2, a6
                  nop
                  c.addi       s5, -1
                  auipc        s3, 896020
                  c.srai       a2, 3
                  c.lui        s9, 17
                  c.sub        a2, s1
                  c.srai       a1, 8
                  c.or         s1, a3
                  c.xor        a4, a3
                  remu         zero, s7, t4
                  c.addi16sp   sp, 480
                  rem          s11, s11, t2
                  srl          tp, t4, tp
                  c.mv         s8, a5
                  c.mv         s7, tp
                  sltu         s10, a6, s3
                  slt          s11, a6, a3
                  and          t1, tp, a6
                  addi         s1, a7, -466
                  mulhsu       a4, t5, t3
                  and          s6, s6, s9
                  ori          a5, tp, -352
                  c.mv         tp, t1
                  srai         a5, s5, 1
                  mulhsu       a2, t3, s2
                  mulhsu       a0, t4, a1
                  sll          s11, s5, a1
                  srai         s8, s4, 15
                  c.srli       s1, 11
                  srli         a2, s2, 26
                  c.lui        a2, 26
                  sll          gp, ra, s7
                  c.mv         t0, t6
                  add          s7, t4, a3
                  mulhu        s3, tp, s11
                  c.addi16sp   sp, 480
                  c.xor        s0, a0
                  lui          gp, 53500
                  c.addi16sp   sp, -16
                  sub          ra, a6, t5
                  mulhsu       t5, ra, s8
                  sll          s1, s11, s10
                  mul          s0, gp, s6
                  c.addi4spn   s0, sp, 336
                  slti         t5, s11, 774
                  mulhsu       ra, a3, a0
                  remu         t3, t6, a3
                  sltiu        t3, a3, -1114
                  sra          a4, s11, tp
                  andi         t0, t3, -1365
                  mulhsu       s5, a4, t6
                  c.slli       a6, 7
                  c.andi       a4, 10
                  divu         a7, a7, t5
                  c.addi       t3, 24
                  sltiu        gp, s0, 1223
                  mul          a5, t3, sp
                  mulhu        t3, tp, a4
                  c.li         t5, -1
                  mulh         s0, s10, s4
                  add          a4, tp, a2
                  div          s2, t6, s11
                  c.addi       sp, 14
                  sub          t1, t1, s10
                  c.li         s5, -1
                  sra          s0, a0, a5
                  addi         a0, a6, -767
                  auipc        s3, 177865
                  c.xor        a2, a0
                  sltiu        s3, t2, 917
                  c.lui        a5, 1
                  divu         t1, a6, gp
                  c.or         a5, s0
                  ori          t3, s8, -1621
                  sltu         s3, a1, t3
                  c.srai       s1, 10
                  add          s10, gp, t2
                  xor          s2, s3, s5
                  c.li         s11, -1
                  c.mv         tp, t5
                  auipc        s3, 671204
                  auipc        zero, 746371
                  c.add        s10, a0
                  mulh         a2, s11, ra
                  c.lui        s11, 22
                  c.or         a4, s0
                  lui          s2, 586045
                  c.or         a0, a1
                  c.srli       a4, 10
                  c.srli       a1, 8
                  xori         zero, t1, 81
                  divu         s1, t5, a2
                  slt          a6, t1, t0
                  c.addi16sp   sp, -16
                  c.sub        a2, a1
                  andi         a1, s5, 2011
                  mulhu        t0, t0, t5
                  c.li         s9, -1
                  lui          t5, 104385
                  c.addi16sp   sp, -16
                  slli         s9, s9, 4
                  nop
                  sll          s1, a5, t6
                  c.sub        s0, a3
                  nop
                  sltiu        a0, s2, 941
                  c.and        s1, a4
                  c.srai       a4, 20
                  sub          s2, a3, s1
                  xor          s8, ra, s8
                  c.sub        a5, a4
                  mul          s8, s10, a7
                  c.srli       s0, 25
                  and          a2, t6, s9
                  slli         t3, a6, 16
                  c.add        s9, s5
                  and          s11, a6, a1
                  ori          a4, sp, -176
                  slli         a1, s2, 3
                  srl          a5, t6, s7
                  c.addi16sp   sp, 32
                  slti         s3, s7, 1034
                  and          a0, s1, s9
                  srai         tp, a0, 10
                  auipc        s9, 88433
                  andi         a4, s8, 996
                  xori         tp, t5, -1750
                  slt          s7, a7, zero
                  mulhu        ra, a5, t2
                  c.addi16sp   sp, -16
                  srli         s5, t3, 12
                  c.lui        s10, 9
                  lui          ra, 651472
                  srli         t1, s3, 25
                  srl          s3, s8, s2
                  ori          s7, a7, 271
                  li           s7, 0x0 #start riscv_int_numeric_corner_stream_0
                  li           sp, 0x80000000
                  li           ra, 0xffffffff
                  li           a7, 0x9f43bc28
                  li           a1, 0x80000000
                  li           a2, 0x0
                  li           t6, 0xffffffff
                  li           s9, 0x0
                  li           s6, 0x8f2aaec6
                  li           s0, 0x9b29c128
                  addi         a2, a2, 1245
                  div          ra, s7, s7
                  addi         s7, ra, 1068
                  divu         t6, s6, s7
                  sub          s9, s7, t6
                  div          a7, s7, s7
                  addi         s7, a1, 188
                  mulhu        sp, ra, s7
                  add          a1, ra, ra
                  add          ra, a2, s0
                  mulh         s7, a1, sp
                  addi         a7, s9, -585
                  rem          t6, s6, s6
                  lui          a1, 119100
                  mul          a1, s9, a1
                  lui          a7, 139384
                  mul          s9, s6, s9
                  div          s7, a1, a1
                  lui          ra, 1005535
                  mulh         s7, s0, ra
                  remu         sp, s6, s7
                  divu         a2, ra, s9
                  rem          a1, t6, t6
                  lui          t6, 168993
                  addi         a1, ra, 295 #end riscv_int_numeric_corner_stream_0
                  c.add        a1, a1
                  and          a7, t6, a5
                  c.or         a5, a3
                  mulhsu       t3, ra, zero
                  div          zero, zero, ra
                  nop
                  c.nop
                  divu         s10, ra, a0
                  div          s11, zero, t2
                  auipc        s9, 170747
                  sub          t3, s5, s9
                  lui          ra, 50273
                  divu         a5, a4, a6
                  mul          s6, a4, sp
                  xor          s8, a3, tp
                  c.xor        a2, a3
                  li           s2, 0x5a79be17 #start riscv_int_numeric_corner_stream_2
                  li           s1, 0x0
                  li           t6, 0x80000000
                  li           s11, 0x80000000
                  li           tp, 0xffffffff
                  li           t3, 0x0
                  li           s9, 0x0
                  li           s6, 0x0
                  li           a2, 0x80000000
                  li           t0, 0x80000000
                  sub          s1, tp, t0
                  addi         s1, s6, 1159
                  addi         s1, s2, 1024
                  rem          s2, t0, s6
                  auipc        tp, 1017694
                  mul          tp, a2, t6
                  rem          a2, s6, s6
                  mulhsu       s2, t6, s6
                  divu         s9, t6, a2
                  sub          s11, s11, a2
                  mul          s9, t6, s1
                  mulhu        s6, s11, t3
                  auipc        s6, 766205
                  mulhsu       t3, s1, t0
                  add          s11, s6, t3
                  divu         t6, t6, t0
                  remu         s6, t3, tp
                  div          s6, a2, t3
                  nop
                  divu         s2, t3, s2
                  mulhu        tp, tp, s2
                  div          t6, t0, s6
                  nop
                  rem          s6, s1, t3
                  mulhu        t0, s6, a2
                  remu         tp, s9, s1 #end riscv_int_numeric_corner_stream_2
                  auipc        t3, 922620
                  mulh         a2, ra, ra
                  mulhsu       a4, s3, a6
                  mulhu        s3, t4, s3
                  srai         t5, a5, 0
                  mulhu        a0, s7, a5
                  andi         ra, s1, 1791
                  c.srai       a2, 7
                  andi         t0, a1, 861
                  srli         s1, t4, 31
                  rem          a6, s11, a0
                  nop
                  c.and        a5, a0
                  c.addi4spn   a4, sp, 816
                  c.mv         t2, a6
                  xor          a2, s4, s10
                  mul          gp, s1, a6
                  auipc        a0, 243895
                  addi         s11, s4, 1349
                  addi         a2, s0, 148
                  andi         t3, a7, 1790
                  c.li         s6, 26
                  c.or         s0, a2
                  andi         s1, t1, 1022
                  c.sub        a1, s1
                  c.xor        s0, s0
                  div          ra, ra, s6
                  c.lui        a1, 20
                  ori          a4, t1, -132
                  c.sub        a1, a2
                  sltu         zero, gp, a5
                  slt          t0, s1, gp
                  lui          t0, 773462
                  xor          zero, a1, t6
                  sub          s1, t0, s3
                  c.add        s2, s10
                  srai         a4, zero, 4
                  c.and        a5, a0
                  srl          zero, s3, t1
                  c.sub        a5, s0
                  c.srai       a2, 23
                  c.or         a0, a2
                  mulhu        t6, t0, ra
                  c.addi16sp   sp, -16
                  sra          zero, sp, s11
                  mul          s3, t4, t4
                  remu         t6, s9, zero
                  srl          s3, a7, tp
                  div          s6, a4, a4
                  lui          s10, 326643
                  c.and        a5, a1
                  mulhu        t6, a3, t6
                  srai         s2, a7, 6
                  xori         a4, t1, 32
                  c.srli       s0, 22
                  c.addi       s3, -1
                  andi         s8, a0, -988
                  slli         t6, s1, 18
                  lui          s11, 580196
                  div          gp, s1, t2
                  c.srai       s1, 17
                  c.sub        a4, s1
                  and          t3, s3, a4
                  divu         s0, sp, a0
                  c.add        t5, s7
                  c.addi       s1, -1
                  c.sub        a5, a0
                  sll          t0, t6, s10
                  sll          s9, t2, ra
                  c.addi4spn   a5, sp, 704
                  xor          a7, gp, t2
                  c.andi       s0, -1
                  c.srli       a2, 10
                  srai         a0, a5, 1
                  andi         s10, gp, -1001
                  slti         a2, a7, 1519
                  slli         gp, a4, 24
                  slli         s7, a1, 22
                  rem          a7, a2, a6
                  andi         s3, sp, 1425
                  nop
                  divu         s9, a7, s3
                  add          gp, s10, s4
                  slt          t2, zero, s11
                  mulhsu       a5, s5, t3
                  mulhu        zero, zero, a0
                  ori          s3, s10, 1341
                  sltiu        tp, a6, -258
                  remu         t1, s5, a6
                  c.lui        s5, 23
                  sll          s7, a3, s11
                  c.add        sp, s0
                  sltu         s5, t5, t0
                  ori          s0, sp, -1204
                  slti         s3, a1, 1216
                  c.li         a4, 22
                  c.xor        a2, s1
                  c.xor        a2, a4
                  add          gp, t0, t2
                  srli         s9, tp, 23
                  c.nop
                  andi         t3, a7, 543
                  c.srli       a5, 25
                  sll          ra, a3, a6
                  c.andi       s1, -1
                  c.nop
                  c.addi4spn   a0, sp, 416
                  srai         t2, t3, 6
                  c.or         a1, a4
                  mulh         gp, t2, t0
                  mulhu        gp, s3, s0
                  c.addi       a0, -1
                  c.slli       gp, 17
                  nop
                  c.and        a1, a1
                  add          ra, tp, s1
                  slti         a7, s1, -1559
                  c.sub        s0, a3
                  slti         t0, a7, 924
                  or           a1, s0, t0
                  or           zero, s0, s4
                  c.slli       s11, 17
                  sra          s1, zero, s11
                  mulhsu       s0, tp, t4
                  c.and        a5, a2
                  slli         ra, t5, 5
                  srl          t5, s8, s2
                  slli         tp, ra, 10
                  addi         s9, tp, -1745
                  sub          t6, a2, sp
                  slli         s9, s2, 7
                  c.li         t5, -1
                  mulhsu       a5, t6, s3
                  andi         a4, a0, 244
                  srai         tp, s2, 2
                  ori          a6, t5, 1147
                  rem          a4, s5, a2
                  add          s3, t5, a0
                  add          ra, s3, ra
                  sltu         s5, a0, a3
                  c.andi       s1, 25
                  mulhu        sp, a6, a0
                  c.xor        a5, a1
                  c.or         a2, s0
                  xori         s1, ra, -1867
                  and          a7, gp, tp
                  mulh         s6, a5, s0
                  c.and        s1, a5
                  and          a4, s10, s7
                  and          s2, zero, gp
                  srli         t5, gp, 13
                  slt          s5, a0, a1
                  remu         ra, s3, s0
                  sub          a2, a2, s11
                  c.srai       a1, 20
                  xori         s1, a5, -1495
                  mulhsu       t2, t6, s3
                  or           gp, a7, a4
                  add          t0, t2, s5
                  c.and        a5, a4
                  sltu         a1, a6, ra
                  mulhsu       s10, sp, s5
                  c.and        a1, a4
                  mulhu        s11, s5, ra
                  c.nop
                  sub          a7, s9, t0
                  slti         a5, t3, -1548
                  divu         t2, s8, a5
                  remu         t5, a4, a6
                  c.sub        a0, a5
                  c.or         a4, a1
                  add          t5, s5, s9
                  c.nop
                  nop
                  c.nop
                  slt          t1, a5, a5
                  c.srai       a4, 17
                  mulh         a2, a3, t4
                  sra          gp, s5, a5
                  div          t1, t5, s11
                  or           t3, a6, tp
                  sll          zero, a7, s2
                  srli         a4, s7, 2
                  div          s2, s11, a0
                  ori          s2, s3, -1547
                  remu         t2, s11, s1
                  mulhsu       s6, s7, a3
                  srli         s1, s8, 7
                  mulhsu       s2, s5, a2
                  and          t1, t6, a4
                  remu         t3, a5, t0
                  c.and        a0, a4
                  divu         t5, sp, t1
                  srl          s6, gp, t1
                  slti         t0, tp, 76
                  c.li         a5, -1
                  srl          t1, s11, s7
                  c.addi16sp   sp, -16
                  c.lui        a2, 2
                  slt          a6, zero, a4
                  sltiu        s3, a1, 20
                  srli         s7, s5, 8
                  sll          s8, t2, ra
                  div          a1, t4, a5
                  xor          t1, t1, gp
                  andi         t1, s4, -1538
                  divu         s5, a7, t0
                  or           t5, gp, s8
                  divu         a6, a3, a4
                  auipc        s11, 449560
                  mulhu        t2, t2, t2
                  c.addi       t6, -1
                  c.slli       t3, 9
                  add          s5, s6, s1
                  divu         s2, gp, sp
                  div          t3, s2, t6
                  slti         s10, s9, 652
                  slt          zero, s8, s2
                  lui          t2, 335932
                  slt          a1, tp, a4
                  srl          s0, zero, s6
                  mulhu        s3, a2, t5
                  mulh         s7, a6, zero
                  c.slli       t5, 25
                  remu         a5, a0, tp
                  rem          s7, a7, s0
                  c.addi       a2, 6
                  sub          a1, a1, s6
                  srai         a2, t5, 0
                  c.addi4spn   s0, sp, 576
                  c.mv         ra, s6
                  sub          tp, t3, s2
                  c.sub        s1, a2
                  addi         zero, a1, 1422
                  slli         tp, t5, 27
                  divu         s0, a7, a3
                  c.mv         t0, s0
                  c.addi4spn   a1, sp, 416
                  c.add        t3, t2
                  c.srli       s0, 17
                  sra          a6, a3, zero
                  sub          t1, sp, s2
                  c.nop
                  sltu         sp, tp, t5
                  c.andi       s1, 30
                  slt          s6, tp, s0
                  xor          t0, a7, t1
                  c.addi16sp   sp, 48
                  c.li         gp, -1
                  rem          s7, t4, s3
                  remu         s1, gp, t3
                  c.and        a5, a1
                  ori          s0, tp, 605
                  mulh         t2, t0, a2
                  mulhsu       a7, s1, s1
                  or           s7, s10, tp
                  slli         s7, s0, 19
                  nop
                  mulh         t6, s6, a3
                  c.li         s3, 27
                  c.addi       s2, -1
                  srai         t2, a5, 24
                  c.addi       s11, 29
                  auipc        s8, 151643
                  lui          s10, 15462
                  c.xor        a4, a5
                  add          s1, t5, sp
                  srai         t2, s8, 10
                  remu         t2, t6, s3
                  slti         s8, a7, 469
                  c.xor        a4, a1
                  srai         a0, s10, 14
                  sub          t3, t6, a5
                  remu         s3, tp, s5
                  divu         s0, sp, t1
                  divu         s2, s4, a3
                  mulhsu       a6, zero, ra
                  c.lui        a2, 17
                  c.sub        s0, a4
                  c.addi       a0, 16
                  addi         t2, zero, -1730
                  divu         a6, t1, sp
                  c.addi       s2, 20
                  sltu         gp, s11, t6
                  c.addi4spn   s1, sp, 464
                  mulhsu       s3, a3, s6
                  remu         s8, s1, s0
                  remu         s1, a6, s5
                  sll          a0, t5, s2
                  xori         a0, a5, -915
                  sra          s10, a0, s7
                  c.addi4spn   a2, sp, 288
                  rem          ra, s2, a4
                  and          zero, s4, a7
                  c.lui        a4, 18
                  mul          s8, a0, s10
                  xor          s7, a5, s6
                  sra          t1, s4, s3
                  mul          s11, s1, tp
                  sltiu        zero, sp, 1016
                  c.mv         ra, t5
                  slti         a1, a5, 94
                  mulhsu       tp, s1, tp
                  lui          s10, 631056
                  addi         a5, a2, 1837
                  sltu         s0, s5, a4
                  sll          s11, t6, sp
                  addi         a4, s4, 973
                  sub          t5, s7, s1
                  addi         a5, s0, 372
                  c.lui        gp, 4
                  c.lui        s7, 18
                  c.addi16sp   sp, 192
                  c.and        a4, s1
                  auipc        sp, 20728
                  nop
                  lui          s3, 646462
                  c.addi       a5, -1
                  xor          t2, a2, t5
                  xor          s6, a7, a5
                  mul          s6, a1, s1
                  c.nop
                  c.mv         s6, a2
                  add          s5, a6, s3
                  sll          a7, gp, t5
                  c.slli       t0, 26
                  or           s2, s1, a4
                  andi         s1, s9, 1282
                  c.lui        a6, 18
                  xor          tp, t1, t0
                  mulh         a1, s11, t4
                  slt          s3, ra, a7
                  srl          s10, a0, gp
                  c.addi16sp   sp, -16
                  c.mv         s11, s6
                  mulhu        a6, t3, t5
                  c.addi       t2, -1
                  xori         a1, t1, -688
                  c.nop
                  slli         t6, t2, 20
                  c.lui        a4, 16
                  c.slli       t2, 2
                  remu         a0, sp, a3
                  sub          t6, s6, t2
                  sltu         a4, a6, s7
                  mul          s7, s0, a6
                  c.addi16sp   sp, -16
                  c.and        a5, a0
                  c.add        s5, a2
                  c.addi16sp   sp, -16
                  slt          gp, t3, s11
                  c.and        a2, s0
                  slli         zero, t3, 17
                  andi         a1, t4, 762
                  remu         s0, t3, zero
                  lui          s2, 845783
                  slti         s8, tp, 733
                  lui          t0, 158003
                  addi         t5, a7, 182
                  slli         s1, s0, 29
                  addi         a1, s7, 583
                  c.li         s7, 13
                  c.mv         tp, t5
                  c.addi16sp   sp, 64
                  srli         t0, t4, 29
                  c.mv         a2, s6
                  or           ra, a6, s11
                  div          ra, s4, a6
                  sll          a1, s2, s10
                  mul          a2, s9, a5
                  mulhsu       s3, s8, a4
                  mulh         a6, a6, t0
                  c.li         s2, -1
                  mul          t0, s0, s10
                  srai         ra, t4, 30
                  c.srli       a2, 31
                  c.srai       a5, 4
                  c.or         a0, a1
                  and          a4, a7, a1
                  srl          a4, s2, t1
                  mulhu        s3, t4, s3
                  addi         s0, t3, -309
                  c.or         s0, a0
                  slt          s5, tp, s7
                  divu         t3, gp, s11
                  c.nop
                  sll          s11, a1, gp
                  c.nop
                  c.addi       s3, 6
                  ori          a2, s7, -2046
                  c.addi4spn   a2, sp, 496
                  or           s8, s3, s4
                  andi         sp, s11, -1827
                  c.and        a1, a0
                  srl          t2, a3, a3
                  c.slli       s3, 19
                  slti         t6, s2, -426
                  sll          a1, s5, sp
                  and          a2, s3, s6
                  c.lui        s5, 31
                  c.slli       a6, 17
                  mulhu        s1, s4, gp
                  slt          s11, a0, s11
                  c.or         a1, a2
                  c.and        a2, s1
                  sub          t2, s4, t4
                  remu         s11, s8, s10
                  auipc        sp, 124614
                  c.addi16sp   sp, 80
                  add          t6, a3, a5
                  div          s11, sp, s7
                  c.add        t0, t4
                  auipc        a0, 1009006
                  andi         s3, s5, -1999
                  sltiu        s8, t6, -1577
                  c.srai       a1, 23
                  xor          a5, zero, ra
                  c.addi4spn   s1, sp, 688
                  add          s9, s2, s11
                  mulh         sp, tp, a2
                  c.mv         a7, a4
                  sll          s2, s8, a1
                  srai         a5, a3, 21
                  c.addi4spn   a1, sp, 688
                  slt          zero, s4, s10
                  ori          a5, gp, -1619
                  addi         s1, t4, -1493
                  and          a6, t1, s5
                  ori          a6, ra, -1963
                  c.slli       gp, 12
                  and          s7, tp, s4
                  c.or         a2, s0
                  lui          s7, 532384
                  lui          zero, 1035370
                  sra          s3, t6, s4
                  div          s7, t0, t6
                  c.li         gp, 18
                  c.srli       a5, 2
                  c.addi4spn   a1, sp, 336
                  srai         t0, sp, 2
                  c.add        s0, s11
                  c.and        s0, a0
                  lui          t5, 116986
                  c.addi4spn   s0, sp, 272
                  c.addi16sp   sp, -16
                  mulhsu       a6, sp, s1
                  c.mv         t3, s3
                  c.srli       a4, 1
                  c.srai       a2, 18
                  c.mv         t5, a2
                  and          s0, s0, s4
                  mulhsu       t0, a1, s9
                  slti         s1, s3, -1638
                  sll          t6, s1, s6
                  nop
                  and          s1, s8, t1
                  andi         s0, s0, -580
                  andi         s8, zero, 1733
                  sub          s2, s8, t1
                  c.srli       s1, 11
                  div          s0, a7, t6
                  c.or         s0, s1
                  c.nop
                  slli         gp, a0, 20
                  c.and        s0, a0
                  div          a0, a5, s2
                  andi         t1, s2, -777
                  sub          a4, s9, s3
                  divu         s8, zero, s8
                  c.and        a4, a0
                  srai         s3, s1, 31
                  or           s3, sp, a2
                  srl          s3, s10, s0
                  c.add        t6, sp
                  c.nop
                  c.sub        a2, a2
                  c.li         s5, 1
                  lui          s2, 1031020
                  lui          s10, 861641
                  sltiu        s7, s9, -22
                  c.srli       a4, 4
                  slli         zero, ra, 28
                  c.addi       a5, -1
                  or           gp, t2, a2
                  mulhu        t2, s1, s3
                  c.add        t2, s9
                  sll          s3, a1, s6
                  slt          a4, t6, t5
                  c.slli       s1, 11
                  div          a6, tp, s6
                  srli         a1, s5, 26
                  c.mv         s10, s10
                  lui          a2, 448796
                  mulh         t2, s9, s10
                  c.mv         s8, s0
                  c.and        a2, a3
                  sll          s9, t3, s3
                  andi         s10, a4, -1836
                  c.add        s3, a4
                  slt          t1, a0, a2
                  c.addi16sp   sp, -16
                  li           s8, 0x0 #start riscv_int_numeric_corner_stream_35
                  li           a0, 0xb5f5ad13
                  li           s11, 0x37004982
                  li           a2, 0x80000000
                  li           s0, 0x0
                  li           s6, 0x80000000
                  li           t6, 0xffffffff
                  li           t2, 0xffffffff
                  li           a5, 0x0
                  li           t0, 0x0
                  divu         s6, s6, a2
                  addi         s0, a0, -516
                  remu         s8, a5, s6
                  div          t0, t6, a2
                  sub          s11, t2, t6
                  rem          a5, t2, t0
                  lui          a0, 723304
                  nop
                  div          s0, t6, t0
                  mulhu        s6, a0, s11
                  auipc        a5, 185358
                  add          a2, t2, a0
                  mulhsu       t2, t6, a2
                  divu         t6, s11, s0
                  auipc        t2, 765992
                  add          t0, t6, a2
                  rem          a0, a2, t6
                  remu         s6, s6, s6
                  mulh         s8, a0, a0
                  lui          t0, 633883
                  divu         s6, t2, a5
                  lui          a5, 701854
                  mulhu        a5, s11, a2
                  nop
                  rem          s11, t2, s8
                  div          a2, s0, a2
                  addi         a0, t0, -1010 #end riscv_int_numeric_corner_stream_35
                  andi         zero, t5, -795
                  c.nop
                  and          gp, tp, t3
                  mulh         s8, a7, s4
                  slli         s0, s3, 31
                  c.mv         s3, a5
                  mul          a5, t3, a4
                  slt          tp, a6, t0
                  sll          ra, t6, tp
                  and          tp, s10, s1
                  sll          s7, s1, t3
                  xori         t5, a3, 1431
                  xori         s0, s2, -674
                  sll          a0, a4, s8
                  lui          s7, 942259
                  mul          a1, a1, s0
                  mulhsu       zero, s0, s8
                  mulhsu       a2, s11, s7
                  c.lui        a5, 31
                  c.or         a1, s0
                  c.or         a1, a0
                  remu         a7, s2, s0
                  sra          a7, t3, a1
                  c.srli       s1, 29
                  c.and        a5, a1
                  lui          ra, 622719
                  c.srai       a1, 24
                  auipc        t0, 862626
                  c.sub        a2, s1
                  c.sub        a5, a5
                  ori          s1, a7, 1218
                  and          t0, t0, t3
                  slli         t5, t3, 11
                  c.addi16sp   sp, 192
                  mulh         zero, tp, t0
                  addi         s8, sp, 1240
                  c.addi       a1, 12
                  c.xor        a1, a3
                  c.sub        s1, s1
                  mulh         a0, t1, a4
                  c.srai       s1, 26
                  rem          tp, t2, tp
                  c.srli       a4, 13
                  slli         s0, t3, 13
                  srl          s7, t4, a4
                  divu         a4, s0, s1
                  slti         t5, a5, -902
                  and          s6, a7, s6
                  sll          s11, s8, a4
                  rem          t2, s10, a1
                  c.xor        s1, a1
                  c.srai       a5, 8
                  c.xor        s0, a5
                  srl          t1, s10, t6
                  c.srai       a5, 10
                  sra          s3, a3, a3
                  c.andi       s1, 22
                  c.sub        a2, a1
                  c.nop
                  andi         s3, s0, 1173
                  andi         t6, s6, -887
                  sltiu        t2, s10, -1251
                  xor          tp, sp, s0
                  c.addi       sp, -1
                  c.li         t1, 31
                  div          t1, s2, s9
                  srl          t1, sp, ra
                  ori          a5, t2, -998
                  c.li         s10, 21
                  c.addi4spn   a0, sp, 896
                  c.mv         gp, a0
                  addi         a4, t6, 1791
                  c.sub        s0, a1
                  c.addi4spn   a1, sp, 944
                  c.addi16sp   sp, 336
                  c.srli       a1, 25
                  div          t2, t6, tp
                  remu         s11, s3, s3
                  c.xor        s1, a3
                  slli         s10, s1, 2
                  ori          s8, sp, -219
                  lui          a0, 490370
                  srai         a4, s10, 18
                  andi         s5, s2, -1346
                  sub          sp, a4, s8
                  sltu         t0, t0, s4
                  c.lui        t6, 9
                  sltiu        s7, t2, -1175
                  c.or         s0, a5
                  c.addi4spn   a5, sp, 784
                  li           a6, 0x80000000 #start riscv_int_numeric_corner_stream_20
                  li           s8, 0x0
                  li           s10, 0x26241bd9
                  li           gp, 0x80000000
                  li           t1, 0xffffffff
                  li           a2, 0x2978e2ff
                  li           ra, 0x0
                  li           s1, 0xffffffff
                  li           s6, 0x80000000
                  li           t5, 0xffffffff
                  mul          a2, s10, a6
                  auipc        gp, 437429
                  add          s1, a2, a6
                  mulhsu       t5, s10, t5
                  sub          ra, s8, s10
                  lui          s6, 560753
                  nop
                  mulhsu       s1, s10, a2
                  divu         s10, t1, gp
                  div          t1, s8, s8
                  mulhu        t1, t1, gp
                  rem          s1, ra, gp
                  rem          t1, ra, a2
                  mulhsu       s10, a6, s8
                  nop #end riscv_int_numeric_corner_stream_20
                  mulh         a2, a1, s2
                  div          t6, sp, a5
                  c.mv         a1, s7
                  nop
                  mulhsu       zero, a2, t3
                  andi         s8, t5, -974
                  c.slli       s2, 17
                  c.mv         a4, a4
                  and          s5, t5, s9
                  xor          a5, a5, s10
                  c.or         a1, s0
                  c.or         s0, a3
                  c.xor        s0, a4
                  c.addi       tp, -1
                  mulhu        sp, s2, t3
                  mulhsu       zero, s0, gp
                  xor          a6, t6, zero
                  add          t5, s5, ra
                  sll          s2, t4, s1
                  slt          a1, a7, gp
                  div          t1, gp, a3
                  c.xor        a1, s0
                  c.srli       a5, 15
                  sltu         s2, a4, zero
                  and          t0, s9, a1
                  nop
                  sltiu        s2, s4, 1782
                  mul          s0, t3, a3
                  xor          s2, t5, zero
                  c.andi       a5, 4
                  and          s11, a6, s11
                  add          a2, t4, s9
                  auipc        a1, 1029587
                  ori          t5, gp, -509
                  sll          s7, a5, a1
                  c.and        a4, a3
                  addi         sp, a1, 87
                  c.addi       s3, 24
                  c.addi16sp   sp, -16
                  xor          s3, t4, a4
                  addi         t2, sp, -1960
                  and          t3, a6, a3
                  xori         s11, t2, 503
                  slti         a2, zero, 1385
                  mul          s6, s8, a6
                  c.slli       tp, 15
                  divu         a0, a4, a5
                  c.srli       a4, 20
                  or           t5, s5, a4
                  slt          sp, t5, t1
                  nop
                  mulh         s2, sp, s0
                  c.xor        a1, a0
                  c.xor        a0, a0
                  slt          a0, s5, s2
                  sub          ra, s3, a6
                  slti         s1, s1, 1042
                  rem          tp, a0, s0
                  mulhsu       s11, s8, a7
                  slt          s5, a5, t2
                  divu         a2, t1, s6
                  div          s3, s10, a0
                  rem          a0, sp, t5
                  srai         s9, ra, 6
                  c.sub        a1, a3
                  sltiu        s11, s1, 948
                  andi         a2, a2, 579
                  remu         s3, s11, s7
                  mulh         s2, a2, s6
                  xori         t5, t6, 34
                  sltu         a2, t1, a7
                  slli         s9, s0, 29
                  srl          s11, ra, zero
                  c.addi4spn   s0, sp, 224
                  c.xor        a1, a0
                  slli         ra, a3, 30
                  srl          s10, a1, t6
                  xori         a0, a6, -1216
                  mulhsu       a2, s9, a6
                  divu         sp, t4, zero
                  c.addi       s1, -1
                  c.addi4spn   a4, sp, 992
                  c.lui        t3, 29
                  c.slli       s1, 13
                  c.srai       a4, 17
                  mulhu        t0, s5, s10
                  srli         gp, s8, 25
                  or           s6, s2, s4
                  sltu         s2, a6, s4
                  addi         s1, a2, -1283
                  slt          s11, zero, zero
                  xor          s1, s6, zero
                  c.slli       a7, 9
                  mulhu        tp, s0, s10
                  remu         a6, zero, a2
                  slt          s2, ra, t6
                  div          gp, t0, t1
                  sra          a1, a0, s0
                  c.andi       a4, -1
                  sra          a4, zero, s7
                  c.nop
                  ori          a5, s0, -656
                  mulhu        s8, s9, tp
                  c.xor        s0, a1
                  c.addi4spn   a0, sp, 112
                  srli         s6, t1, 22
                  c.li         s0, 23
                  sll          a2, ra, zero
                  add          a6, t6, s4
                  c.addi       s3, -1
                  c.andi       s0, -1
                  remu         s8, s3, a4
                  slt          a0, t6, s9
                  andi         zero, s2, 63
                  slli         a2, a0, 4
                  rem          a5, s11, s10
                  sra          a4, ra, gp
                  xor          a0, t1, t2
                  c.srli       s0, 7
                  c.srli       a2, 12
                  c.or         a1, s1
                  mulh         s8, a2, s4
                  remu         tp, t3, a6
                  nop
                  c.sub        a1, a1
                  c.addi16sp   sp, 128
                  xori         a2, tp, 748
                  nop
                  sub          gp, ra, a7
                  c.andi       s0, 21
                  c.and        s1, a5
                  mul          ra, s5, s10
                  sub          s5, s1, s1
                  divu         s1, s5, t5
                  rem          s0, s3, s8
                  ori          s8, a7, -281
                  c.lui        gp, 8
                  mulhu        a7, s10, a4
                  div          s10, t3, s11
                  divu         s7, s8, t5
                  c.srli       a1, 7
                  slti         s1, tp, 393
                  srl          a5, a4, s4
                  c.addi       s3, 27
                  c.or         a2, a5
                  mul          s10, gp, t5
                  auipc        s10, 473578
                  mulhsu       s7, s3, t0
                  nop
                  addi         gp, s11, 1875
                  c.addi4spn   a0, sp, 448
                  c.li         s10, -1
                  c.lui        s10, 16
                  c.lui        tp, 7
                  srl          s6, a4, s3
                  or           a6, a4, s3
                  divu         s3, s4, a3
                  sra          a0, s11, a3
                  c.addi4spn   a5, sp, 960
                  c.srai       a0, 23
                  c.sub        s0, a5
                  c.add        t1, t4
                  mulhsu       t5, t1, t3
                  sub          s11, t5, tp
                  c.li         sp, 14
                  mul          s7, s11, s5
                  mulhu        a7, a1, ra
                  slti         t2, t0, -806
                  andi         s0, t6, -876
                  c.srli       a2, 25
                  c.sub        a1, s1
                  and          a6, t4, t1
                  sll          t3, t6, s9
                  srai         s2, s0, 5
                  nop
                  lui          t0, 115844
                  srai         s2, s10, 26
                  c.sub        a4, a5
                  srai         t1, a4, 6
                  c.andi       a2, -1
                  addi         t5, tp, -224
                  srl          s6, t2, a3
                  c.and        s0, s0
                  div          s3, a4, s2
                  c.or         a0, a3
                  slli         a2, zero, 3
                  or           a4, s2, a2
                  c.addi       s9, -1
                  sltiu        s2, s1, -969
                  xor          s2, s2, ra
                  c.li         s3, -1
                  c.or         a1, s1
                  srli         s5, sp, 14
                  c.and        a4, s1
                  mulh         a2, s0, t0
                  sra          t1, s1, a6
                  sll          a4, s1, s3
                  c.nop
                  and          a4, gp, s6
                  c.and        s0, a5
                  or           s2, s11, s8
                  divu         s2, a1, s11
                  slt          s5, s5, tp
                  slli         s1, t6, 27
                  mulhu        a6, s2, s4
                  slli         a5, a6, 10
                  c.add        t3, a1
                  c.addi       s1, 17
                  xori         ra, s2, -695
                  c.srai       a0, 25
                  c.addi16sp   sp, 208
                  c.srli       a2, 15
                  c.or         a2, s0
                  auipc        a5, 399415
                  c.andi       a4, -1
                  c.addi       t0, -1
                  auipc        gp, 88323
                  mulhsu       s11, s9, a3
                  c.slli       s9, 13
                  c.lui        s5, 17
                  ori          a4, s10, -1446
                  remu         a4, a2, s6
                  sltiu        s8, s6, 232
                  xori         s2, s9, -1816
                  xori         a2, t2, 625
                  sra          tp, a5, a0
                  addi         t6, ra, -1121
                  srai         t2, s8, 2
                  c.addi16sp   sp, -16
                  mulh         s11, t2, a7
                  c.or         a5, a4
                  srli         s7, s10, 28
                  mulh         tp, t1, a1
                  mulhu        t6, t4, a5
                  add          a1, a4, a3
                  slti         a6, a1, -901
                  c.andi       a0, 20
                  ori          t0, zero, 1533
                  c.or         a4, a2
                  add          s5, a6, a5
                  slli         s9, t3, 21
                  c.li         a7, -1
                  c.mv         s5, s10
                  divu         a4, a4, s3
                  c.and        s1, s1
                  c.lui        s5, 2
                  c.addi16sp   sp, 16
                  c.sub        s0, a4
                  nop
                  c.nop
                  slli         a6, t6, 18
                  mulhu        s0, t4, t6
                  c.lui        s0, 7
                  sub          s2, ra, s3
                  c.andi       a0, 26
                  c.addi16sp   sp, 288
                  srai         a5, s0, 1
                  c.addi4spn   a0, sp, 976
                  andi         a0, s10, 1653
                  c.addi4spn   s0, sp, 640
                  sub          t1, gp, s2
                  c.andi       a0, 29
                  c.addi16sp   sp, 272
                  c.sub        a5, a3
                  c.add        sp, s2
                  slt          t0, s2, a4
                  slt          s2, tp, s10
                  slli         ra, s8, 18
                  c.and        a0, a3
                  c.xor        a5, a3
                  c.lui        s0, 8
                  xori         s3, t3, 732
                  mul          gp, zero, s6
                  c.xor        s1, s0
                  c.lui        a4, 3
                  addi         s3, a3, -684
                  c.mv         s1, a4
                  sra          zero, t3, s7
                  slt          a5, a2, s0
                  divu         a5, s7, sp
                  c.xor        a4, s1
                  c.lui        s8, 21
                  lui          s8, 470899
                  c.lui        tp, 9
                  c.srli       a2, 10
                  c.lui        a7, 11
                  c.li         s3, 28
                  xori         tp, s10, 694
                  auipc        a6, 245904
                  auipc        a2, 29074
                  sra          a6, ra, s8
                  addi         s9, s4, 488
                  c.andi       a4, 30
                  c.and        s1, a1
                  c.add        s10, t4
                  c.add        a2, s3
                  or           zero, t1, a4
                  divu         a4, s4, sp
                  c.add        t1, a2
                  c.add        s5, s2
                  sub          a7, s5, ra
                  c.addi4spn   a4, sp, 816
                  slti         a7, ra, 1262
                  c.srai       a1, 27
                  srli         ra, a5, 0
                  auipc        t3, 416435
                  div          a1, s2, zero
                  c.srai       s0, 5
                  slli         s8, s11, 23
                  sltu         zero, s3, t5
                  divu         s3, sp, s11
                  xor          t5, t2, t5
                  div          t3, t6, a4
                  mul          a2, t5, t6
                  sll          t3, t3, a5
                  lui          s1, 645447
                  slli         s11, zero, 5
                  mul          a0, s2, s7
                  divu         s9, a6, s6
                  xor          t5, a5, a7
                  c.and        s0, a2
                  auipc        a4, 983532
                  c.srli       a0, 20
                  c.andi       a1, 14
                  mulhsu       a4, a5, a2
                  c.sub        a2, a3
                  add          a0, t5, gp
                  slt          t6, s1, s3
                  c.srai       s0, 3
                  c.addi       s0, 7
                  c.addi       t0, 27
                  divu         t3, s3, s1
                  sltu         s7, zero, s7
                  slti         a1, a0, -1636
                  sll          a1, a7, a0
                  rem          s0, t1, s1
                  andi         t5, t2, 696
                  lui          a2, 987946
                  andi         a1, ra, -84
                  c.addi       s11, -1
                  mulhsu       gp, a7, s7
                  c.sub        s1, a1
                  c.sub        s1, a2
                  remu         a2, a3, s0
                  andi         a0, s1, -1317
                  c.andi       a0, 25
                  andi         t3, a6, -968
                  auipc        s11, 67270
                  mul          a5, a0, a4
                  mulhu        a5, a3, s9
                  mulhu        a6, s2, a3
                  mulhsu       s8, a4, a5
                  mulhu        a5, sp, a6
                  remu         s1, t0, s2
                  mulh         tp, a5, s10
                  slli         t5, a5, 19
                  c.slli       s6, 19
                  sltiu        s8, a5, 1139
                  c.li         t0, -1
                  mulhsu       sp, t0, t5
                  add          gp, t1, s5
                  ori          s1, sp, 554
                  slti         ra, s4, 341
                  or           s5, s1, sp
                  andi         sp, s1, -1417
                  c.nop
                  c.srai       a4, 11
                  c.lui        s10, 21
                  c.and        s0, a3
                  srli         a4, t4, 22
                  srli         t2, s0, 18
                  slt          s5, a4, sp
                  or           s5, a3, ra
                  xor          zero, s5, t3
                  c.addi       s10, -1
                  xori         s0, t1, -1057
                  c.add        t1, t1
                  c.and        s0, a1
                  mulhu        t1, s1, a3
                  slti         a4, a2, -455
                  mulhu        s0, sp, s0
                  c.li         s0, -1
                  lui          a4, 69060
                  sltu         gp, t2, t0
                  divu         t2, s2, ra
                  sltiu        s11, a4, 909
                  addi         sp, a6, -1730
                  or           s8, t6, s11
                  srl          a0, t1, tp
                  c.slli       a0, 21
                  andi         a0, s1, -1271
                  sub          ra, t2, a5
                  div          a6, a6, a6
                  mulh         s0, t6, a3
                  c.srli       a4, 11
                  xor          ra, ra, a3
                  remu         s1, s9, s8
                  slt          t2, s3, s3
                  sll          s2, s2, a3
                  sltiu        s11, sp, -206
                  add          s9, s6, s5
                  c.andi       a1, -1
                  c.addi4spn   a0, sp, 32
                  srai         s6, t0, 1
                  or           a6, s9, a2
                  c.nop
                  sra          gp, a2, s11
                  c.li         s9, 16
                  divu         zero, s9, a4
                  remu         s7, a7, t1
                  nop
                  c.addi16sp   sp, -16
                  c.mv         a2, t0
                  and          s9, a3, a3
                  c.xor        a1, s1
                  add          a6, t5, zero
                  c.slli       s2, 2
                  srli         s3, s9, 18
                  ori          s0, zero, 1274
                  srl          a7, a7, a2
                  c.addi       s11, -1
                  auipc        s6, 553907
                  c.li         t5, 9
                  c.srli       s0, 8
                  srli         s1, s8, 13
                  sltu         a7, s4, t2
                  nop
                  c.li         t2, -1
                  c.or         s0, s1
                  slt          a7, s1, s8
                  c.srli       s0, 3
                  c.addi16sp   sp, -16
                  c.srli       a4, 26
                  c.li         a1, 29
                  srli         a2, a2, 27
                  c.lui        s2, 15
                  mulhu        ra, s5, a3
                  c.andi       s0, 21
                  c.addi16sp   sp, -16
                  c.addi       ra, -1
                  auipc        s1, 1037849
                  nop
                  c.sub        a1, a5
                  c.srai       a1, 25
                  sltiu        a6, a4, -1177
                  sra          a5, ra, t0
                  c.slli       sp, 25
                  c.srai       s1, 8
                  xor          s6, a6, s8
                  sll          t6, sp, a7
                  or           a2, s3, s8
                  sltu         tp, a5, a6
                  c.addi4spn   s1, sp, 208
                  srai         s3, a0, 31
                  c.add        a5, s5
                  div          s1, s10, a3
                  c.or         a4, a2
                  sltu         t5, a7, t3
                  xor          s3, a7, gp
                  srli         a2, tp, 29
                  c.or         a0, a3
                  srl          tp, zero, s7
                  c.addi4spn   a0, sp, 32
                  c.andi       s1, 23
                  c.li         a2, 15
                  sltiu        a7, s10, -233
                  c.li         s2, -1
                  sll          ra, a2, a0
                  slt          zero, t0, t1
                  divu         a4, a2, sp
                  andi         s6, sp, -463
                  div          a2, t3, s3
                  slti         t3, a2, -1399
                  mulhu        a5, a4, a4
                  c.nop
                  or           t1, a5, a6
                  and          t6, a2, s9
                  c.addi4spn   s0, sp, 560
                  c.and        a1, s0
                  remu         zero, s6, a0
                  or           t6, a5, a1
                  auipc        t2, 724331
                  slli         tp, s6, 14
                  sll          t6, t2, t4
                  c.or         a5, a3
                  sltiu        t5, a4, -1663
                  sltiu        ra, a5, 871
                  c.addi16sp   sp, -16
                  mulhsu       a7, s9, a1
                  srl          t2, t3, a1
                  c.srli       a5, 6
                  xori         t2, s1, -159
                  slt          t6, t6, s10
                  c.mv         s5, s5
                  mulhu        s3, s0, a5
                  andi         a5, a6, 293
                  srli         s1, s3, 8
                  divu         t2, a6, s4
                  div          a4, ra, a0
                  c.srai       a5, 24
                  srli         s0, a3, 5
                  auipc        s3, 1045591
                  slti         s5, s2, 162
                  mul          gp, a5, t3
                  or           zero, t6, a1
                  rem          s11, ra, s9
                  c.add        a2, s8
                  or           s6, s1, t3
                  slt          t2, t6, sp
                  c.addi       s5, 4
                  c.or         a4, a1
                  slt          s5, a3, ra
                  c.or         a5, a1
                  mulhsu       a4, t5, gp
                  c.srai       a0, 10
                  ori          gp, s5, 1434
                  addi         s9, s3, -1940
                  divu         s1, t3, zero
                  c.mv         a6, a1
                  auipc        a5, 888068
                  c.addi       s5, -1
                  c.and        a1, a5
                  srai         s8, a4, 18
                  c.add        s11, s3
                  and          a1, a1, tp
                  c.addi16sp   sp, -16
                  div          a6, s11, t6
                  c.li         ra, 25
                  slli         t5, s1, 31
                  c.srli       a2, 25
                  mulh         ra, t6, s8
                  c.xor        s1, a4
                  addi         t2, zero, -184
                  c.xor        s0, a2
                  auipc        a4, 767790
                  c.nop
                  slti         s9, a1, -852
                  remu         s8, s0, s11
                  c.xor        a4, a2
                  c.srai       a0, 15
                  c.xor        a1, a0
                  c.xor        s0, a1
                  slli         s10, a5, 18
                  c.slli       s6, 3
                  sltiu        tp, s4, 561
                  slti         s11, ra, -337
                  or           t3, s5, ra
                  c.or         s0, s1
                  nop
                  andi         t5, s10, -160
                  c.srai       a4, 24
                  sltiu        gp, tp, 1490
                  div          gp, s4, s11
                  slt          t3, s11, t1
                  sra          s0, t0, t1
                  sub          s1, tp, zero
                  mulh         s5, a2, s4
                  c.and        a0, a5
                  mulh         t0, a2, s11
                  xor          s3, s0, t3
                  xori         gp, gp, 1233
                  c.srli       a1, 28
                  slt          s3, ra, t6
                  addi         a6, tp, -1661
                  or           a6, s7, t0
                  andi         a7, s10, -142
                  sra          s7, t3, t1
                  lui          s5, 120543
                  sll          a6, s1, a2
                  sltiu        a0, s11, -688
                  c.addi16sp   sp, 496
                  rem          s7, s5, a3
                  andi         t0, sp, -527
                  c.nop
                  div          s1, a0, a5
                  mul          t5, t5, t2
                  divu         s10, t3, a0
                  addi         t1, ra, -662
                  divu         a1, s11, tp
                  remu         s7, a0, s5
                  xori         a4, a1, 1410
                  xori         gp, s11, 1529
                  c.srai       a5, 29
                  c.addi       tp, -1
                  xori         a6, a5, -200
                  c.or         a4, a1
                  c.addi16sp   sp, 192
                  nop
                  xori         s8, a2, -526
                  or           t3, ra, s8
                  and          s10, a1, a3
                  mulhu        s2, t6, s2
                  c.addi16sp   sp, 336
                  sll          s5, ra, t6
                  srli         t3, t0, 21
                  lui          s8, 816103
                  c.nop
                  mulhu        gp, a6, a1
                  c.mv         t0, s3
                  sra          s7, s10, ra
                  mul          s2, s4, a3
                  remu         gp, a4, t6
                  rem          s9, ra, tp
                  mulh         sp, a5, gp
                  srli         s2, tp, 13
                  and          t1, t4, s8
                  c.addi16sp   sp, -16
                  sltu         s5, a4, s1
                  c.add        t5, a2
                  sll          s0, a7, t0
                  mul          s3, t0, s0
                  c.sub        a2, a0
                  srli         s1, s1, 26
                  sltu         s1, sp, t3
                  sub          s0, a4, s2
                  c.addi16sp   sp, 128
                  xor          t6, s5, a3
                  xori         t5, sp, 714
                  c.lui        a7, 19
                  mul          a5, s9, s5
                  auipc        t2, 871462
                  andi         s7, tp, -1623
                  addi         s6, s10, 305
                  divu         a0, s3, a5
                  c.xor        a1, a3
                  sub          s11, s11, sp
                  sll          zero, t3, s0
                  remu         t6, t0, t1
                  c.nop
                  slt          a5, a7, a0
                  c.sub        s1, a4
                  srl          s7, s9, s1
                  c.add        a5, a3
                  c.li         a5, 13
                  c.sub        s1, a5
                  andi         s8, a6, 409
                  rem          s0, s6, t6
                  sltu         s9, t3, s3
                  mulhu        s1, s5, a0
                  c.lui        ra, 28
                  lui          s11, 296041
                  add          s3, s11, t0
                  c.and        a5, s0
                  c.addi4spn   a0, sp, 848
                  ori          s8, a7, -581
                  sra          a2, a2, a0
                  sub          s10, s0, t3
                  nop
                  divu         a2, a2, a1
                  sll          s8, s11, gp
                  andi         s1, t5, 516
                  sltiu        s1, a0, -1905
                  remu         zero, s3, t3
                  sub          a4, a5, gp
                  c.and        a2, a3
                  sll          a6, t1, s2
                  auipc        s9, 56697
                  c.lui        t6, 31
                  c.nop
                  sll          a4, a2, s1
                  and          s1, t2, zero
                  auipc        s10, 520018
                  remu         s1, a7, s5
                  sub          a5, s10, s8
                  c.xor        a5, a5
                  sll          t1, tp, a7
                  c.or         a2, s1
                  add          s1, s2, t2
                  c.srai       a0, 16
                  c.add        t2, t1
                  c.or         a1, a1
                  andi         tp, s8, 764
                  c.nop
                  sll          tp, t4, s10
                  sra          t3, s5, s7
                  mulh         zero, zero, s9
                  sra          a7, t1, a4
                  c.sub        a4, s0
                  c.andi       s0, -1
                  xor          s5, t0, a0
                  mulhu        ra, s4, t2
                  c.andi       a4, -1
                  c.or         s1, a2
                  c.xor        a4, s1
                  c.or         s0, a5
                  sltiu        t3, t0, -904
                  srli         s7, s1, 28
                  mul          s10, ra, a4
                  c.sub        s1, a3
                  xori         gp, s4, -1329
                  srli         s1, a2, 30
                  mulhu        s5, t6, s5
                  divu         s11, s11, zero
                  rem          s11, a3, a0
                  add          sp, zero, s2
                  rem          t2, s8, a6
                  c.addi       a4, -1
                  or           a0, tp, t3
                  c.andi       a0, -1
                  addi         t5, s0, -340
                  c.andi       a1, -1
                  slti         gp, ra, -384
                  rem          t2, gp, ra
                  xori         t6, s9, 1050
                  xor          s11, gp, a3
                  sra          t1, s11, s8
                  remu         s5, zero, t6
                  c.addi16sp   sp, 448
                  sra          a7, s6, t2
                  c.sub        s0, s1
                  slt          a5, a0, s3
                  addi         s11, a1, -431
                  slt          a7, t1, sp
                  c.nop
                  c.xor        a5, a4
                  c.andi       s0, 26
                  srli         s7, a7, 21
                  slli         s7, a7, 22
                  sltu         t6, a4, a1
                  divu         ra, s10, s11
                  ori          s8, a5, 1271
                  andi         a2, a4, -464
                  c.li         s5, 3
                  div          zero, a7, s10
                  c.and        a5, s1
                  sub          t2, s0, sp
                  c.and        a4, a5
                  sltiu        a7, a4, -1909
                  and          gp, sp, s0
                  xori         s10, a4, 1534
                  srli         s2, s11, 30
                  andi         s10, s0, -492
                  srli         gp, s4, 15
                  xori         t1, s8, -2035
                  mulh         sp, tp, a6
                  sltu         a6, a3, a1
                  xor          s1, t5, a0
                  and          s6, ra, ra
                  mul          t3, a4, t2
                  add          a1, s2, t3
                  nop
                  c.and        a1, s1
                  c.add        a0, sp
                  ori          gp, a7, -825
                  mulhsu       s1, s4, t1
                  c.nop
                  mulh         s0, s9, a1
                  nop
                  c.nop
                  c.addi       a1, 23
                  c.add        t2, a0
                  or           s2, t4, s5
                  div          s0, s6, s7
                  c.srai       s0, 24
                  c.lui        a6, 6
                  add          a1, t0, s11
                  sub          sp, s0, a4
                  srli         s8, s6, 0
                  mulh         t1, a0, zero
                  div          s0, s1, s11
                  auipc        a6, 695637
                  rem          a0, t5, a7
                  slt          sp, tp, s2
                  addi         tp, t3, 1207
                  slli         s6, t5, 7
                  rem          t0, t6, t3
                  srli         a2, a4, 21
                  c.mv         s11, ra
                  div          a4, s0, s6
                  c.srai       a5, 18
                  c.nop
                  and          s3, gp, t0
                  sra          s10, s8, s0
                  c.sub        a0, a2
                  and          a1, s6, s5
                  lui          tp, 254871
                  add          s2, s0, s3
                  srai         s3, s6, 20
                  remu         sp, s7, s8
                  c.or         a4, s1
                  mul          s1, s10, s10
                  auipc        t5, 733137
                  sra          a6, t3, t4
                  c.srli       a4, 30
                  c.addi4spn   a0, sp, 1008
                  sltu         t2, sp, t4
                  srl          a4, s11, zero
                  sltu         a7, t4, t1
                  mulhu        t0, s11, tp
                  ori          t0, s8, 219
                  lui          t6, 403481
                  c.xor        a0, a5
                  sub          s9, a4, t4
                  andi         zero, s3, 1235
                  c.slli       ra, 7
                  addi         t5, s5, -1361
                  divu         t6, s4, a0
                  sltiu        zero, ra, 684
                  xor          a7, s8, a7
                  sll          s3, s6, tp
                  mulh         t6, s2, a0
                  mulh         a4, s5, s9
                  mulh         t1, s5, ra
                  divu         ra, s11, a0
                  c.addi       sp, -1
                  andi         s3, s7, 835
                  mulh         a6, gp, t5
                  xori         t6, a4, 1808
                  andi         ra, zero, -576
                  sltiu        s3, t5, -1321
                  c.sub        a5, a3
                  mul          a4, s4, t3
                  c.mv         s2, t2
                  c.addi16sp   sp, -16
                  xori         s8, s1, 1913
                  mulhsu       t2, s7, t4
                  c.andi       s1, -1
                  mul          s5, sp, t3
                  xor          s2, s3, t2
                  nop
                  c.mv         tp, s2
                  add          a7, s8, tp
                  srai         tp, t0, 2
                  andi         t5, s2, -108
                  c.or         a1, a3
                  mulhu        tp, ra, s8
                  c.slli       t6, 7
                  c.xor        a4, a4
                  xori         s3, s1, 346
                  c.sub        s0, a4
                  c.addi       s0, 23
                  or           s0, tp, a2
                  c.or         s0, a3
                  slti         s1, s11, 1987
                  add          a5, s10, s4
                  xor          a0, t6, t6
                  xori         t3, s9, -1678
                  sltu         a5, t3, gp
                  c.mv         s10, t5
                  slti         s1, s0, 536
                  c.sub        a2, s1
                  divu         t6, s8, t5
                  c.sub        a5, a5
                  mulhu        s0, s9, s3
                  c.li         s7, 29
                  c.slli       s3, 30
                  c.or         s0, a1
                  mulhu        s5, t4, s11
                  divu         a0, s0, s1
                  remu         t3, tp, s5
                  div          t0, s0, gp
                  add          t6, a7, tp
                  c.addi       s1, 5
                  c.li         t6, -1
                  and          a2, s3, s4
                  nop
                  or           t1, tp, ra
                  auipc        s2, 65599
                  xori         s0, sp, 569
                  sll          t5, a2, s4
                  c.srli       s1, 19
                  andi         t3, sp, 1533
                  c.nop
                  srli         s0, s9, 2
                  mulhu        t3, tp, s10
                  ori          s6, s0, 689
                  sltiu        t3, t3, 1314
                  c.or         a1, s0
                  c.xor        a4, a3
                  sltu         s0, t3, a4
                  c.nop
                  mulhsu       a2, sp, t1
                  divu         s8, t3, t2
                  c.addi       ra, -1
                  c.or         a5, s1
                  slti         s8, s4, 245
                  slti         t3, s7, 1202
                  mulhsu       t6, s8, s2
                  xori         a4, s0, -1290
                  c.mv         s1, t5
                  add          a1, s9, a4
                  c.sub        s1, a4
                  c.addi       s11, -1
                  c.nop
                  c.lui        s0, 9
                  sltu         ra, t3, s8
                  srl          t2, t2, ra
                  auipc        zero, 515651
                  lui          s8, 359116
                  c.or         a1, a4
                  c.addi       s11, -1
                  c.lui        a2, 9
                  mulhsu       a2, s3, t0
                  andi         s0, s11, 775
                  c.li         s0, 12
                  c.lui        s0, 27
                  remu         a6, t2, sp
                  slt          a4, s1, t2
                  c.sub        s0, s0
                  or           tp, s2, s10
                  c.xor        a4, a0
                  ori          t5, a5, -1777
                  c.addi4spn   a4, sp, 960
                  c.srai       a2, 6
                  c.mv         a4, s4
                  c.slli       t5, 22
                  mulh         s2, t3, t3
                  c.addi       a1, 17
                  c.addi       a0, -1
                  sltiu        a2, s4, -1462
                  srli         a5, s10, 7
                  lui          a2, 499136
                  c.addi16sp   sp, -16
                  lui          s7, 312155
                  c.andi       a1, -1
                  ori          t1, s5, 270
                  c.srai       a4, 25
                  slli         t0, t6, 2
                  and          a7, s3, s8
                  srl          sp, a2, t2
                  mulh         a7, s10, t1
                  mulh         s5, a6, s11
                  sltu         a5, a4, t6
                  srl          a5, a5, s10
                  c.addi       s7, -1
                  auipc        ra, 632732
                  c.addi16sp   sp, -16
                  c.srai       a4, 5
                  and          sp, a3, ra
                  srl          t3, a1, a1
                  auipc        a1, 609373
                  divu         a2, t1, s8
                  and          t5, s8, gp
                  sll          ra, t4, s0
                  nop
                  sll          s6, s3, t0
                  andi         ra, a6, 445
                  c.addi16sp   sp, -16
                  c.or         a0, s1
                  sra          s3, s3, a4
                  lui          sp, 708887
                  mul          a5, a3, sp
                  c.sub        a5, a5
                  c.addi4spn   a5, sp, 208
                  div          tp, a2, s9
                  sltiu        a2, t0, 1476
                  mulh         a1, a7, t0
                  c.slli       t2, 22
                  c.xor        a2, s1
                  c.add        t2, s6
                  c.lui        t5, 22
                  div          t1, a5, s6
                  add          t6, a4, t1
                  addi         s11, s4, -351
                  c.add        gp, a0
                  srai         t2, a1, 2
                  c.andi       a0, -1
                  c.or         s0, s1
                  div          s0, s0, a0
                  addi         s5, s6, 1133
                  slli         s0, zero, 11
                  and          s9, a0, s9
                  c.sub        s0, s1
                  add          t2, t5, s3
                  addi         a5, tp, 1950
                  addi         s0, tp, 39
                  auipc        s9, 46175
                  c.slli       s2, 16
                  c.or         s0, s1
                  c.and        a5, a5
                  srai         s2, t6, 14
                  sltu         gp, t5, t2
                  slt          t0, s1, zero
                  xori         a2, s8, -432
                  andi         s6, t6, -111
                  andi         t6, t0, 1960
                  srl          s2, t5, a6
                  auipc        t1, 927834
                  add          s9, s6, t3
                  rem          a4, s4, t6
                  c.mv         s9, s4
                  div          a5, ra, s5
                  c.addi16sp   sp, -16
                  c.xor        a0, a2
                  mulhsu       s9, s1, a7
                  srl          a5, s3, tp
                  srli         a7, a3, 14
                  c.nop
                  c.srai       s1, 25
                  c.xor        a5, s1
                  c.srai       a0, 24
                  c.addi       a0, -1
                  mulh         a7, s1, s3
                  nop
                  xor          s8, s2, tp
                  c.andi       a1, -1
                  c.addi16sp   sp, -16
                  auipc        s0, 1441
                  auipc        s6, 559469
                  mulhu        t5, s8, s0
                  xori         zero, t4, 374
                  auipc        sp, 535540
                  c.addi16sp   sp, -16
                  c.lui        t1, 17
                  c.addi16sp   sp, 400
                  c.and        a0, a1
                  div          sp, sp, s9
                  rem          a7, t2, a6
                  and          a5, sp, s8
                  c.add        a6, s9
                  addi         s0, t4, -852
                  sll          a2, t0, a0
                  divu         s3, a5, tp
                  c.slli       s11, 21
                  c.addi       a0, 18
                  xori         ra, s5, 674
                  c.lui        a5, 2
                  xori         gp, s3, 320
                  nop
                  div          s3, t1, t2
                  c.lui        s11, 21
                  xori         s7, s6, -1766
                  c.nop
                  c.mv         t2, a0
                  c.addi16sp   sp, 368
                  or           t3, s6, t2
                  c.sub        s1, s1
                  nop
                  c.li         s7, -1
                  sltu         s9, t4, a5
                  c.slli       sp, 20
                  mulh         a2, t5, a5
                  c.addi16sp   sp, 64
                  c.nop
                  auipc        s11, 988144
                  mulh         s6, t1, a4
                  and          s0, a1, a5
                  andi         s1, t3, 1173
                  c.srai       a4, 7
                  div          s5, a5, a0
                  c.andi       a4, 20
                  addi         s5, zero, 1861
                  c.addi4spn   a5, sp, 112
                  c.mv         s0, t0
                  and          a0, sp, a4
                  andi         zero, s3, 813
                  nop
                  c.nop
                  c.slli       s6, 31
                  c.and        a2, a5
                  or           a5, s2, ra
                  sub          ra, t1, s2
                  c.addi       s7, 29
                  andi         s2, t5, 1373
                  mulhsu       a0, a6, s9
                  add          tp, t0, s3
                  remu         t5, a5, s7
                  add          s7, a3, sp
                  c.sub        a4, s0
                  mul          t5, s2, s6
                  srai         s0, a1, 26
                  c.addi       s3, 19
                  mulhu        s5, ra, a4
                  sll          s11, s4, s5
                  slt          a2, s11, t6
                  srli         s0, s7, 14
                  c.addi       tp, -1
                  auipc        s1, 92815
                  auipc        t2, 909155
                  mulh         s11, s2, s1
                  c.andi       a2, 26
                  andi         s11, s4, 1129
                  and          tp, ra, a4
                  auipc        tp, 875384
                  rem          a5, t6, a5
                  c.srai       a5, 22
                  lui          a1, 770831
                  remu         s6, s0, s11
                  addi         s11, s2, 83
                  slt          ra, s7, ra
                  c.slli       s9, 8
                  sll          t1, s8, s1
                  slli         a1, a5, 21
                  xori         s11, zero, 2017
                  and          s0, zero, s2
                  rem          gp, zero, sp
                  c.addi16sp   sp, 128
                  lui          s2, 420408
                  slti         s0, t3, 676
                  and          s6, s5, t5
                  ori          t1, zero, -26
                  c.or         s1, a1
                  c.nop
                  mulhsu       a2, t2, t4
                  rem          s0, a3, a1
                  div          a7, t3, s1
                  div          t5, a5, t4
                  sub          a0, s7, t2
                  lui          s7, 447161
                  xor          t1, s9, a1
                  divu         gp, a7, s6
                  xor          t0, s1, a1
                  c.xor        s0, a4
                  ori          zero, a0, -632
                  add          s3, a4, a4
                  c.addi4spn   a0, sp, 656
                  sub          a5, t4, a6
                  slli         a4, a0, 11
                  c.srai       s1, 17
                  or           a1, t0, s8
                  c.li         a7, 2
                  c.sub        a0, a3
                  c.or         a1, a4
                  nop
                  c.srli       a1, 19
                  srai         t2, s4, 29
                  nop
                  sltiu        a1, s7, -765
                  and          a6, s4, s7
                  sub          a4, a4, s11
                  and          s7, gp, ra
                  rem          s3, a7, s1
                  xori         s0, a6, 423
                  mulh         t2, zero, s7
                  c.andi       a2, 31
                  rem          a2, a4, s3
                  c.addi       tp, -1
                  sra          s7, s6, t6
                  sub          gp, zero, s2
                  and          t5, s9, a1
                  mulh         s10, a3, s2
                  c.srai       a4, 30
                  c.li         a7, 28
                  sltu         a7, s11, t0
                  xori         a0, a4, 809
                  add          t0, a7, zero
                  c.lui        t6, 23
                  xori         s3, a7, -1617
                  ori          t3, a1, -605
                  addi         t0, s6, 1650
                  xori         a4, t6, 1840
                  c.nop
                  c.sub        s1, s0
                  mul          a0, a0, a0
                  xori         t0, a1, 913
                  c.addi       s2, -1
                  or           zero, a0, a5
                  mul          a4, s4, a1
                  and          s1, s5, t2
                  auipc        sp, 745846
                  c.or         a4, a0
                  c.lui        a7, 26
                  slt          a6, a4, gp
                  slti         a6, s1, -1433
                  c.or         a0, a2
                  c.addi       t0, 12
                  slti         a4, t6, -593
                  srl          a0, sp, s10
                  c.add        s6, a1
                  xori         s11, t1, -1354
                  remu         a7, s4, s3
                  c.andi       s1, 17
                  sll          s2, s2, s10
                  c.slli       gp, 18
                  divu         s1, s1, a2
                  ori          t5, a1, -1175
                  c.addi16sp   sp, 224
                  sra          a5, s5, ra
                  sra          gp, s8, a5
                  nop
                  c.addi16sp   sp, -16
                  nop
                  sll          t5, a6, s3
                  slli         s10, s11, 9
                  sll          s3, s10, a5
                  ori          s1, a1, -858
                  c.li         s3, -1
                  c.andi       a5, 2
                  c.andi       a4, 2
                  slti         s10, a5, -85
                  slti         zero, t3, 538
                  c.addi4spn   a1, sp, 992
                  srai         tp, t4, 8
                  mul          s9, gp, t1
                  c.srli       s1, 8
                  c.or         s0, s0
                  slti         s1, s1, 77
                  sra          s0, a2, s0
                  c.andi       s0, 16
                  c.andi       a2, 13
                  sltu         sp, a6, t4
                  ori          s3, s10, 348
                  remu         s7, a0, s1
                  mul          s9, s4, t3
                  c.li         t0, -1
                  slti         t6, t6, -1479
                  nop
                  c.srai       a0, 25
                  divu         a1, s0, gp
                  c.addi16sp   sp, -16
                  c.and        a2, a1
                  slli         s7, a1, 5
                  slli         t5, s6, 17
                  mulhu        s5, t0, t0
                  lui          s6, 1030252
                  ori          t6, s8, -102
                  mulh         s11, tp, s10
                  addi         ra, a5, -931
                  c.and        a5, s1
                  c.addi       gp, -1
                  rem          s11, t0, s0
                  sltu         s0, t2, a1
                  or           t2, s7, s3
                  c.nop
                  mulhu        s5, t6, s3
                  xori         s1, a7, -344
                  c.addi16sp   sp, 480
                  sltiu        t5, t4, -1765
                  or           a1, zero, sp
                  add          ra, t1, a5
                  sltiu        s7, s10, 983
                  slt          a1, s8, s10
                  rem          zero, a2, s1
                  srl          sp, s6, s7
                  sra          a1, t4, s2
                  c.and        a0, a5
                  c.srai       s0, 1
                  add          s6, sp, s11
                  c.srli       a1, 23
                  c.or         a1, a1
                  c.xor        s1, a1
                  srl          s7, s1, t6
                  c.mv         a2, s4
                  div          a7, s2, t1
                  c.sub        a1, s1
                  nop
                  mulh         a5, a4, zero
                  ori          s9, a4, -81
                  sra          t1, a7, t5
                  mul          s8, a4, t5
                  c.li         s6, -1
                  c.mv         a6, gp
                  c.slli       a6, 9
                  c.addi       a7, -1
                  sltiu        a6, s3, 387
                  sub          s10, tp, s3
                  c.and        s1, s1
                  nop
                  c.or         a4, a4
                  c.addi4spn   a0, sp, 624
                  xori         a5, t4, 478
                  c.or         a1, a3
                  mulh         t1, s2, t3
                  c.mv         t0, s0
                  lui          a7, 81911
                  nop
                  mul          a7, a5, gp
                  c.sub        s0, s1
                  slt          t2, t5, s8
                  slti         a6, zero, -1828
                  c.slli       t5, 10
                  srai         t0, s1, 12
                  c.mv         s9, a6
                  srl          s3, a2, tp
                  div          s6, t4, a4
                  div          s1, t2, s11
                  sltiu        a1, a7, -1423
                  nop
                  mul          t2, s1, s2
                  c.xor        a0, a0
                  sltiu        s8, a7, 342
                  srli         s2, s8, 28
                  srl          a7, s8, sp
                  c.mv         s6, sp
                  c.or         a5, a4
                  mulh         t6, s6, zero
                  mulh         t6, a2, a7
                  remu         zero, a6, t5
                  c.lui        s0, 22
                  c.sub        s0, a0
                  sub          a6, s3, t3
                  c.addi16sp   sp, 176
                  slt          a4, s9, t5
                  mul          s8, t0, zero
                  andi         a4, s7, 822
                  c.srai       a4, 26
                  srli         t2, t5, 31
                  auipc        s6, 61906
                  or           s8, a0, s4
                  xori         sp, a7, -1451
                  div          t1, s11, a3
                  ori          gp, ra, 286
                  slt          s1, a0, t4
                  addi         t0, a5, 692
                  xor          sp, t5, a4
                  sub          t2, t2, a4
                  c.srai       s0, 5
                  rem          a7, s6, a5
                  slti         sp, a5, -1450
                  c.addi16sp   sp, -16
                  nop
                  divu         s11, a6, zero
                  div          a7, zero, s6
                  c.slli       a5, 17
                  auipc        t2, 499926
                  sra          a5, s3, sp
                  c.mv         gp, t2
                  mulhsu       s10, t0, s7
                  auipc        gp, 937349
                  srl          a0, a5, gp
                  sltu         a0, s11, a7
                  andi         s1, s1, -710
                  mulhu        a4, t5, s3
                  slli         a6, ra, 5
                  addi         t0, a0, -1547
                  remu         s3, a7, ra
                  c.add        s0, t6
                  sltiu        t1, s11, 226
                  div          t1, s7, gp
                  ori          a1, a3, -2036
                  xori         s8, t4, 100
                  mulh         gp, s6, s8
                  slt          s10, a4, s5
                  div          t5, s2, gp
                  div          t0, a2, gp
                  and          s3, t0, s7
                  c.lui        a2, 23
                  c.lui        gp, 26
                  srl          s6, tp, t4
                  c.li         tp, -1
                  nop
                  c.add        s0, s11
                  c.addi       t2, 27
                  divu         a7, s10, t2
                  c.slli       t6, 9
                  srli         s8, s1, 0
                  slt          a7, t2, ra
                  andi         s3, t6, 1097
                  sub          s0, a7, tp
                  c.xor        s1, a3
                  divu         t2, a6, a4
                  c.xor        s0, a4
                  xori         t6, s10, -246
                  slt          s9, a6, sp
                  mulh         a7, a3, a0
                  c.srai       a0, 7
                  sub          s8, a4, s8
                  c.srli       s1, 29
                  c.add        s11, s6
                  c.addi16sp   sp, -16
                  and          a0, a7, a3
                  c.slli       t0, 5
                  lui          s7, 133325
                  srl          s2, s3, s3
                  c.addi4spn   a5, sp, 720
                  c.andi       a2, -1
                  nop
                  div          a1, s1, s2
                  slli         s5, s10, 6
                  mulh         a4, s8, t4
                  srli         s10, a0, 6
                  c.addi4spn   s1, sp, 336
                  sltu         s5, a0, s5
                  c.xor        a2, a1
                  c.addi16sp   sp, 464
                  c.add        s2, ra
                  slti         a2, a5, 114
                  div          a0, a0, s8
                  c.xor        a0, s1
                  slt          s9, a1, zero
                  srli         s11, a0, 22
                  div          zero, t3, a4
                  c.srli       a1, 19
                  remu         a0, a2, t1
                  c.andi       a1, -1
                  xor          a2, a5, s8
                  c.addi16sp   sp, 288
                  c.or         a0, a2
                  sltu         s10, a6, a2
                  nop
                  xori         s11, s9, 404
                  c.andi       s1, 18
                  c.li         t6, -1
                  c.addi       t6, -1
                  div          gp, t5, a0
                  c.slli       s5, 14
                  sub          t0, gp, s6
                  div          t2, a1, ra
                  mul          s1, s11, t5
                  srai         a0, a1, 21
                  sub          a7, s10, t6
                  divu         a7, s10, t6
                  srai         s3, a1, 20
                  c.addi16sp   sp, 224
                  lui          s8, 1008211
                  slt          s10, t5, a1
                  c.srli       s1, 8
                  c.sub        a0, a4
                  c.or         a4, a0
                  mulhsu       a4, t6, zero
                  c.and        a4, a4
                  xori         sp, zero, 1954
                  sll          s7, t3, s10
                  sltu         a7, t5, t4
                  sltu         t5, t3, s9
                  xor          tp, s0, s9
                  xor          a7, a5, s2
                  srli         t6, t4, 29
                  auipc        tp, 569568
                  and          s10, s11, a6
                  slti         s9, a6, 1670
                  c.add        a2, s8
                  srai         gp, a7, 15
                  c.addi16sp   sp, -16
                  c.nop
                  lui          a6, 809442
                  and          a6, zero, s3
                  c.add        a1, a1
                  c.addi4spn   s1, sp, 576
                  srai         s0, s9, 13
                  c.or         a1, a0
                  andi         s6, s1, -415
                  mulh         t1, s5, sp
                  remu         t0, t6, t2
                  div          zero, sp, s11
                  rem          t2, tp, a0
                  and          s1, a2, a5
                  c.lui        s7, 29
                  srl          s1, t0, t0
                  c.srli       a1, 15
                  rem          t0, t1, ra
                  c.xor        a4, a2
                  or           t1, sp, t3
                  ori          t5, s11, 1450
                  sll          s10, s8, s7
                  sll          s9, t6, s8
                  slli         s10, a2, 20
                  c.slli       a5, 8
                  c.addi       s10, 22
                  slti         t3, s3, -1234
                  c.addi16sp   sp, 304
                  mulhsu       s0, s9, s3
                  remu         gp, a7, s6
                  sll          a1, s1, t5
                  lui          s8, 669184
                  c.or         a2, s0
                  sll          t5, t0, t1
                  addi         s6, s3, -1419
                  c.addi       t5, -1
                  sltiu        s2, a7, -365
                  slti         a0, s11, -1779
                  sll          t5, s3, s6
                  c.sub        a5, a4
                  c.srai       a4, 12
                  sltiu        s1, s6, 1704
                  mulhsu       t0, t4, t0
                  sll          a4, t1, t0
                  srli         s2, s8, 30
                  xor          s2, a4, a6
                  andi         a0, t0, -623
                  c.slli       t1, 23
                  c.mv         a4, s1
                  c.lui        t0, 16
                  or           s7, a2, a1
                  mulh         tp, t4, ra
                  c.srai       s0, 21
                  addi         a4, s2, -1398
                  divu         a4, a2, a4
                  c.xor        a4, a4
                  srl          sp, t3, a6
                  c.add        a4, a0
                  lui          s6, 763111
                  sub          gp, a5, t1
                  c.addi4spn   s0, sp, 128
                  sltu         gp, t0, s11
                  mul          t2, s2, s1
                  slt          t5, a5, s4
                  sra          sp, s6, s9
                  srli         s1, t5, 11
                  c.mv         s2, s7
                  c.srli       s0, 24
                  rem          s9, t5, a0
                  c.and        a4, a4
                  c.add        a4, a7
                  remu         s9, s5, t4
                  sra          t5, s0, s4
                  xor          s7, s3, t4
                  c.and        s0, a3
                  c.srli       a2, 4
                  c.slli       gp, 20
                  c.addi4spn   a2, sp, 112
                  c.mv         gp, t5
                  or           t2, t2, t2
                  mul          zero, t5, s1
                  xori         t6, t5, -1793
                  c.and        a1, a1
                  c.addi4spn   a2, sp, 192
                  rem          s9, a5, s0
                  ori          a0, s0, 1849
                  sltiu        s10, t5, 1058
                  c.nop
                  remu         s8, a1, t6
                  mul          s0, s7, s6
                  mul          a4, a5, tp
                  c.lui        t3, 20
                  andi         s0, a4, -1925
                  c.and        a5, s1
                  nop
                  ori          s5, t3, 439
                  slt          ra, a4, t1
                  addi         s1, s6, 1059
                  sltu         a1, t4, s10
                  c.sub        a5, a4
                  c.andi       s0, -1
                  c.nop
                  mulhsu       t5, a6, a2
                  nop
                  mul          s11, s1, s4
                  and          s11, a7, a1
                  slt          s3, s5, sp
                  auipc        gp, 106672
                  and          s2, sp, s2
                  mulhu        s3, t2, s7
                  c.and        a4, a4
                  c.or         a5, a3
                  xori         s2, a4, 1212
                  sltu         a7, t1, s11
                  xori         s0, s0, 1789
                  andi         t1, tp, -1577
                  mulh         a7, a4, zero
                  c.and        a4, a2
                  c.andi       a0, -1
                  c.slli       s0, 10
                  add          a7, a7, s3
                  sltu         s8, s3, s1
                  mulh         s8, s5, s3
                  addi         a0, s9, -594
                  c.add        a1, s11
                  and          ra, gp, t2
                  add          t6, zero, t1
                  andi         s8, s0, 1499
                  c.mv         s6, t1
                  c.xor        s1, a5
                  slti         t1, s0, -1464
                  c.li         s10, -1
                  rem          t1, t3, a4
                  srl          a1, a1, s3
                  c.or         s1, a3
                  mul          ra, s11, s2
                  slli         s3, s1, 3
                  c.nop
                  and          sp, s1, s3
                  sra          a1, a0, s8
                  c.addi       t6, 17
                  c.sub        a0, s0
                  lui          a4, 10889
                  srai         a5, s2, 24
                  and          s3, a3, a5
                  c.lui        s6, 5
                  c.srai       a0, 17
                  c.sub        a2, s1
                  c.mv         s8, s5
                  srl          a1, a3, t0
                  c.and        a0, a3
                  srl          s3, ra, t0
                  lui          s5, 925426
                  c.addi       t3, 7
                  sll          a4, sp, s3
                  mulh         s1, t3, zero
                  nop
                  mulh         t0, t2, tp
                  sra          a5, s1, s11
                  c.and        a2, s0
                  lui          t2, 1015283
                  sra          a1, a4, ra
                  c.addi16sp   sp, 160
                  sub          a6, a2, t6
                  or           s3, s9, s5
                  nop
                  slt          s10, t2, a5
                  c.mv         a1, t6
                  xor          a7, tp, s5
                  c.and        a5, s1
                  sltu         t1, a5, s4
                  auipc        t0, 67755
                  slt          s5, s1, t1
                  slt          t0, ra, s8
                  c.xor        a2, a5
                  c.li         s9, 14
                  divu         s7, a4, a6
                  auipc        a2, 1558
                  c.li         t5, -1
                  c.and        s0, a3
                  slt          s3, a0, t6
                  ori          a5, t3, 1601
                  c.addi4spn   s1, sp, 624
                  c.srli       a0, 24
                  c.li         s10, 27
                  srli         s7, s9, 10
                  c.addi       a7, 3
                  c.and        s1, a5
                  srai         t2, s3, 16
                  nop
                  c.nop
                  c.li         gp, -1
                  sltu         t6, a5, s8
                  remu         s11, s1, sp
                  slli         s7, s10, 29
                  mulhsu       a1, a6, s4
                  sub          s9, s11, s5
                  nop
                  c.and        a4, a2
                  divu         s3, t5, s6
                  c.mv         sp, t2
                  c.and        a5, a5
                  c.xor        a4, a1
                  c.sub        a0, s0
                  auipc        a5, 933470
                  slli         zero, a1, 5
                  xor          t1, s2, s7
                  srl          t0, gp, zero
                  sltiu        gp, s11, 1489
                  c.mv         s11, t1
                  c.li         t2, -1
                  c.srli       a5, 2
                  mul          t0, ra, ra
                  lui          t2, 382684
                  c.andi       a0, -1
                  c.li         s11, 15
                  c.li         a0, -1
                  c.li         a0, -1
                  mulhu        tp, t1, s1
                  sltu         s7, s8, s8
                  mulhu        s10, sp, t6
                  sub          s5, s0, s2
                  mul          sp, a5, a1
                  div          t6, a4, sp
                  divu         ra, s5, s1
                  mulhsu       sp, s5, a7
                  c.andi       a1, 15
                  slti         s5, s3, 244
                  mulhsu       a5, a6, t3
                  lui          t2, 214683
                  mulhu        s0, s10, a2
                  c.addi       s9, 3
                  sub          s11, s3, s7
                  remu         t5, tp, s2
                  divu         a0, a3, zero
                  c.sub        s1, a2
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align           2
mtvec_handler:    
                  csrrw x20, 0x340, x20
                  add x20, x13, zero
                  1: addi x20, x20, -124
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  csrr x18, 0x300 # MSTATUS
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 31
                  bne x18, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x18, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x18, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x18, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x18, x16, ecall_handler
                  li x16, 0x1
                  beq x18, x16, instr_fault_handler
                  li x16, 0x5
                  beq x18, x16, load_fault_handler
                  li x16, 0x7
                  beq x18, x16, store_fault_handler
                  li x16, 0xc
                  beq x18, x16, pt_fault_handler
                  li x16, 0xd
                  beq x18, x16, pt_fault_handler
                  li x16, 0xf
                  beq x18, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x18, _start
                  sw x0, 0(x18)
                  sw x1, 4(x18)
                  sw x2, 8(x18)
                  sw x3, 12(x18)
                  sw x4, 16(x18)
                  sw x5, 20(x18)
                  sw x6, 24(x18)
                  sw x7, 28(x18)
                  sw x8, 32(x18)
                  sw x9, 36(x18)
                  sw x10, 40(x18)
                  sw x11, 44(x18)
                  sw x12, 48(x18)
                  sw x13, 52(x18)
                  sw x14, 56(x18)
                  sw x15, 60(x18)
                  sw x16, 64(x18)
                  sw x17, 68(x18)
                  sw x18, 72(x18)
                  sw x19, 76(x18)
                  sw x20, 80(x18)
                  sw x21, 84(x18)
                  sw x22, 88(x18)
                  sw x23, 92(x18)
                  sw x24, 96(x18)
                  sw x25, 100(x18)
                  sw x26, 104(x18)
                  sw x27, 108(x18)
                  sw x28, 112(x18)
                  sw x29, 116(x18)
                  sw x30, 120(x18)
                  sw x31, 124(x18)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  li x18, 0
                  csrw 0x340, x18
                  li x17, 0
                  0: csrr x18, 0x340
                  mv x29, x18
                  li x29, 0
                  beq x18, x29, 1f
                  1: csrr x16, 0x3b0
                  csrr x11, 0x3a0
                  j 17f
                  17: li x28, 4
                  csrr x18, 0x340
                  slli x18, x18, 30
                  srli x18, x18, 30
                  sub x29, x28, x18
                  addi x29, x29, -1
                  slli x29, x29, 3
                  sll x28, x11, x29
                  slli x18, x18, 3
                  add x29, x29, x18
                  srl x28, x28, x29
                  slli x29, x28, 27
                  srli x29, x29, 30
                  beqz x29, 20f
                  li x18, 1
                  beq x29, x18, 21f
                  li x18, 2
                  beq x29, x18, 25f
                  li x18, 3
                  beq x29, x18, 27f
                  la x18, test_done
                  jalr x0, x18, 0
                  18: csrr x18, 0x340
                  mv x17, x16
                  addi x18, x18, 1
                  csrw 0x340, x18
                  li x16, 1
                  ble x16, x18, 19f
                  j 0b
                  19: la x18, test_done
                  jalr x0, x18, 0
                  20: j 18b
                  21: csrr x18, 0x340
                  csrr x29, 0x343
                  srli x29, x29, 2
                  bnez x18, 22f
                  bltz x29, 18b
                  j 23f
                  22: bgtu x17, x29, 18b
                  23: bleu x16, x29, 18b
                  andi x29, x28, 128
                  beqz x29, 24f
                  la x18, test_done
                  jalr x0, x18, 0
                  24: j 29f
                  25: csrr x18, 0x343
                  srli x18, x18, 2
                  slli x29, x16, 2
                  srli x29, x29, 2
                  bne x18, x29, 18b
                  andi x29, x28, 128
                  beqz x29, 26f
                  la x18, test_done
                  jalr x0, x18, 0
                  26: j 29f
                  27: csrr x18, 0x343
                  srli x18, x18, 2
                  srli x18, x18, 0
                  slli x18, x18, 0
                  slli x29, x16, 2
                  srli x29, x29, 2
                  srli x29, x29, 0
                  slli x29, x29, 0
                  bne x18, x29, 18b
                  andi x29, x28, 128
                  beqz x29, 29f
                  la x18, test_done
                  jalr x0, x18, 0
                  28: j 29f
                  29: ori x28, x28, 4
                  csrr x18, 0x340
                  li x29, 30
                  sll x18, x18, x29
                  srl x18, x18, x29
                  slli x29, x18, 3
                  sll x28, x28, x29
                  or x11, x11, x28
                  csrr x18, 0x340
                  srli x18, x18, 2
                  beqz x18, 30f
                  li x29, 1
                  beq x18, x29, 31f
                  li x29, 2
                  beq x18, x29, 32f
                  li x29, 3
                  beq x18, x29, 33f
                  30: csrw 0x3a0, x11
                  j 34f
                  31: csrw 0x3a1, x11
                  j 34f
                  32: csrw 0x3a2, x11
                  j 34f
                  33: csrw 0x3a3, x11
                  34: nop
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 124
                  add x13, x20, zero
                  csrrw x20, 0x340, x20
                  mret

load_fault_handler:
                  li x18, 0
                  csrw 0x340, x18
                  li x17, 0
                  0: csrr x18, 0x340
                  mv x29, x18
                  li x29, 0
                  beq x18, x29, 1f
                  1: csrr x16, 0x3b0
                  csrr x11, 0x3a0
                  j 17f
                  17: li x28, 4
                  csrr x18, 0x340
                  slli x18, x18, 30
                  srli x18, x18, 30
                  sub x29, x28, x18
                  addi x29, x29, -1
                  slli x29, x29, 3
                  sll x28, x11, x29
                  slli x18, x18, 3
                  add x29, x29, x18
                  srl x28, x28, x29
                  slli x29, x28, 27
                  srli x29, x29, 30
                  beqz x29, 20f
                  li x18, 1
                  beq x29, x18, 21f
                  li x18, 2
                  beq x29, x18, 25f
                  li x18, 3
                  beq x29, x18, 27f
                  la x18, test_done
                  jalr x0, x18, 0
                  18: csrr x18, 0x340
                  mv x17, x16
                  addi x18, x18, 1
                  csrw 0x340, x18
                  li x16, 1
                  ble x16, x18, 19f
                  j 0b
                  19: la x18, test_done
                  jalr x0, x18, 0
                  20: j 18b
                  21: csrr x18, 0x340
                  csrr x29, 0x343
                  srli x29, x29, 2
                  bnez x18, 22f
                  bltz x29, 18b
                  j 23f
                  22: bgtu x17, x29, 18b
                  23: bleu x16, x29, 18b
                  andi x29, x28, 128
                  beqz x29, 24f
                  la x18, test_done
                  jalr x0, x18, 0
                  24: j 29f
                  25: csrr x18, 0x343
                  srli x18, x18, 2
                  slli x29, x16, 2
                  srli x29, x29, 2
                  bne x18, x29, 18b
                  andi x29, x28, 128
                  beqz x29, 26f
                  la x18, test_done
                  jalr x0, x18, 0
                  26: j 29f
                  27: csrr x18, 0x343
                  srli x18, x18, 2
                  srli x18, x18, 0
                  slli x18, x18, 0
                  slli x29, x16, 2
                  srli x29, x29, 2
                  srli x29, x29, 0
                  slli x29, x29, 0
                  bne x18, x29, 18b
                  andi x29, x28, 128
                  beqz x29, 29f
                  la x18, test_done
                  jalr x0, x18, 0
                  28: j 29f
                  29: ori x28, x28, 1
                  csrr x18, 0x340
                  li x29, 30
                  sll x18, x18, x29
                  srl x18, x18, x29
                  slli x29, x18, 3
                  sll x28, x28, x29
                  or x11, x11, x28
                  csrr x18, 0x340
                  srli x18, x18, 2
                  beqz x18, 30f
                  li x29, 1
                  beq x18, x29, 31f
                  li x29, 2
                  beq x18, x29, 32f
                  li x29, 3
                  beq x18, x29, 33f
                  30: csrw 0x3a0, x11
                  j 34f
                  31: csrw 0x3a1, x11
                  j 34f
                  32: csrw 0x3a2, x11
                  j 34f
                  33: csrw 0x3a3, x11
                  34: nop
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 124
                  add x13, x20, zero
                  csrrw x20, 0x340, x20
                  mret

store_fault_handler:
                  li x18, 0
                  csrw 0x340, x18
                  li x17, 0
                  0: csrr x18, 0x340
                  mv x29, x18
                  li x29, 0
                  beq x18, x29, 1f
                  1: csrr x16, 0x3b0
                  csrr x11, 0x3a0
                  j 17f
                  17: li x28, 4
                  csrr x18, 0x340
                  slli x18, x18, 30
                  srli x18, x18, 30
                  sub x29, x28, x18
                  addi x29, x29, -1
                  slli x29, x29, 3
                  sll x28, x11, x29
                  slli x18, x18, 3
                  add x29, x29, x18
                  srl x28, x28, x29
                  slli x29, x28, 27
                  srli x29, x29, 30
                  beqz x29, 20f
                  li x18, 1
                  beq x29, x18, 21f
                  li x18, 2
                  beq x29, x18, 25f
                  li x18, 3
                  beq x29, x18, 27f
                  la x18, test_done
                  jalr x0, x18, 0
                  18: csrr x18, 0x340
                  mv x17, x16
                  addi x18, x18, 1
                  csrw 0x340, x18
                  li x16, 1
                  ble x16, x18, 19f
                  j 0b
                  19: la x18, test_done
                  jalr x0, x18, 0
                  20: j 18b
                  21: csrr x18, 0x340
                  csrr x29, 0x343
                  srli x29, x29, 2
                  bnez x18, 22f
                  bltz x29, 18b
                  j 23f
                  22: bgtu x17, x29, 18b
                  23: bleu x16, x29, 18b
                  andi x29, x28, 128
                  beqz x29, 24f
                  la x18, test_done
                  jalr x0, x18, 0
                  24: j 29f
                  25: csrr x18, 0x343
                  srli x18, x18, 2
                  slli x29, x16, 2
                  srli x29, x29, 2
                  bne x18, x29, 18b
                  andi x29, x28, 128
                  beqz x29, 26f
                  la x18, test_done
                  jalr x0, x18, 0
                  26: j 29f
                  27: csrr x18, 0x343
                  srli x18, x18, 2
                  srli x18, x18, 0
                  slli x18, x18, 0
                  slli x29, x16, 2
                  srli x29, x29, 2
                  srli x29, x29, 0
                  slli x29, x29, 0
                  bne x18, x29, 18b
                  andi x29, x28, 128
                  beqz x29, 29f
                  la x18, test_done
                  jalr x0, x18, 0
                  28: j 29f
                  29: ori x28, x28, 3
                  csrr x18, 0x340
                  li x29, 30
                  sll x18, x18, x29
                  srl x18, x18, x29
                  slli x29, x18, 3
                  sll x28, x28, x29
                  or x11, x11, x28
                  csrr x18, 0x340
                  srli x18, x18, 2
                  beqz x18, 30f
                  li x29, 1
                  beq x18, x29, 31f
                  li x29, 2
                  beq x18, x29, 32f
                  li x29, 3
                  beq x18, x29, 33f
                  30: csrw 0x3a0, x11
                  j 34f
                  31: csrw 0x3a1, x11
                  j 34f
                  32: csrw 0x3a2, x11
                  j 34f
                  33: csrw 0x3a3, x11
                  34: nop
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 124
                  add x13, x20, zero
                  csrrw x20, 0x340, x20
                  mret

ebreak_handler:   
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 124
                  add x13, x20, zero
                  csrrw x20, 0x340, x20
                  mret

illegal_instr_handler:
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 124
                  add x13, x20, zero
                  csrrw x20, 0x340, x20
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 124
                  add x13, x20, zero
                  csrrw x20, 0x340, x20
                  mret;

kernel_instr_end: nop
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 3999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
