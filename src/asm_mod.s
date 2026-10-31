.include "macro.inc"

/* Disables the safety check v1.1 that implemented protections from performing z trick */

.set noat
.set noreorder

.section .recomp_patch, "axR" /* do not forget to include R for retain here */
/* Handwritten function */
nonmatching func_hd_code_802BEBB0, 0x3EC

glabel func_hd_code_802BEBB0
    /* 87A3F0 802BEBB0 27BDFF98 */  addiu      $sp, $sp, -0x68
    /* 87A3F4 802BEBB4 FFBC0058 */  sd         $gp, 0x58($sp)
    /* 87A3F8 802BEBB8 FFBE0060 */  sd         $fp, 0x60($sp)
    /* 87A3FC 802BEBBC 3C1C803A */  lui        $gp, %hi(D_hd_code_803A6B30)
    /* 87A400 802BEBC0 FFBF0000 */  sd         $ra, 0x0($sp)
    /* 87A404 802BEBC4 FFAB0008 */  sd         $t3, 0x8($sp)
    /* 87A408 802BEBC8 FFAC0010 */  sd         $t4, 0x10($sp)
    /* 87A40C 802BEBCC FFAD0018 */  sd         $t5, 0x18($sp)
    /* 87A410 802BEBD0 FFAE0020 */  sd         $t6, 0x20($sp)
    /* 87A414 802BEBD4 FFAF0028 */  sd         $t7, 0x28($sp)
    /* 87A418 802BEBD8 FFB00030 */  sd         $s0, 0x30($sp)
    /* 87A41C 802BEBDC FFB10038 */  sd         $s1, 0x38($sp)
    /* 87A420 802BEBE0 FFB20040 */  sd         $s2, 0x40($sp)
    /* 87A424 802BEBE4 FFB30048 */  sd         $s3, 0x48($sp)
    /* 87A428 802BEBE8 FFB40050 */  sd         $s4, 0x50($sp)
    /* 87A42C 802BEBEC 279C6B30 */  addiu      $gp, $gp, %lo(D_hd_code_803A6B30)
    /* 87A430 802BEBF0 241E0000 */  addiu      $fp, $zero, 0x0
  .Lhd_code_802BEBF4:
    /* 87A434 802BEBF4 83820013 */  lb         $v0, 0x13($gp)
    /* 87A438 802BEBF8 2401FFFF */  addiu      $at, $zero, -0x1
    /* 87A43C 802BEBFC 104100D7 */  beq        $v0, $at, .Lhd_code_802BEF5C
    /* 87A440 802BEC00 00000000 */   nop
    /* 87A444 802BEC04 5040FFFB */  beql       $v0, $zero, .Lhd_code_802BEBF4
    /* 87A448 802BEC08 239C0014 */   addi      $gp, $gp, 0x14 /* handwritten instruction */
    /* 87A44C 802BEC0C 93820012 */  lbu        $v0, 0x12($gp)
    /* 87A450 802BEC10 5458FFF8 */  bnel       $v0, $t8, .Lhd_code_802BEBF4
    /* 87A454 802BEC14 239C0014 */   addi      $gp, $gp, 0x14 /* handwritten instruction */
    /* 87A458 802BEC18 8F8B0000 */  lw         $t3, 0x0($gp)
    /* 87A45C 802BEC1C 8F8C0004 */  lw         $t4, 0x4($gp)
    /* 87A460 802BEC20 8F8D0008 */  lw         $t5, 0x8($gp)
    /* 87A464 802BEC24 8F8E000C */  lw         $t6, 0xC($gp)
    /* 87A468 802BEC28 23DE0001 */  addi       $fp, $fp, 0x1 /* handwritten instruction */
    /* 87A46C 802BEC2C 239C0014 */  addi       $gp, $gp, 0x14 /* handwritten instruction */
    /* 87A470 802BEC30 000B5883 */  sra        $t3, $t3, 2
    /* 87A474 802BEC34 000C6083 */  sra        $t4, $t4, 2
    /* 87A478 802BEC38 000D6883 */  sra        $t5, $t5, 2
    /* 87A47C 802BEC3C 0C0A7058 */  jal        func_hd_code_8029C160
    /* 87A480 802BEC40 000E7083 */   sra       $t6, $t6, 2
    /* 87A484 802BEC44 1040FFEB */  beqz       $v0, .Lhd_code_802BEBF4
    /* 87A488 802BEC48 00000000 */   nop
    /* 87A48C 802BEC4C 0C0A7037 */  jal        func_hd_code_8029C0DC
    /* 87A490 802BEC50 00000000 */   nop
    /* 87A494 802BEC54 0C0A6FD9 */  jal        func_hd_code_8029BF64
    /* 87A498 802BEC58 00000000 */   nop
    /* 87A49C 802BEC5C 15E00009 */  bnez       $t7, .Lhd_code_802BEC84
    /* 87A4A0 802BEC60 00000000 */   nop
    /* 87A4A4 802BEC64 0C0A6F43 */  jal        func_hd_code_8029BD0C
    /* 87A4A8 802BEC68 00000000 */   nop
    /* 87A4AC 802BEC6C 15E00005 */  bnez       $t7, .Lhd_code_802BEC84
    /* 87A4B0 802BEC70 00000000 */   nop
    /* 87A4B4 802BEC74 0C0A6FB9 */  jal        func_hd_code_8029BEE4
    /* 87A4B8 802BEC78 00000000 */   nop
    /* 87A4BC 802BEC7C 11E0FFDD */  beqz       $t7, .Lhd_code_802BEBF4
    /* 87A4C0 802BEC80 00000000 */   nop
  .Lhd_code_802BEC84:
    /* 87A4C4 802BEC84 240100FF */  addiu      $at, $zero, 0xFF
    /* 87A4C8 802BEC88 13010005 */  beq        $t8, $at, .Lhd_code_802BECA0
    /* 87A4CC 802BEC8C 00000000 */   nop
    /* 87A4D0 802BEC90 3C0B8036 */  lui        $t3, %hi(D_hd_code_80358068)
    /* 87A4D4 802BEC94 8D6B8068 */  lw         $t3, %lo(D_hd_code_80358068)($t3)
    /* 87A4D8 802BEC98 3C01803F */  lui        $at, %hi(D_hd_code_803F77F8)
    /* 87A4DC 802BEC9C AC2B77F8 */  sw         $t3, %lo(D_hd_code_803F77F8)($at)
  .Lhd_code_802BECA0:
    /* 87A4E0 802BECA0 240100FF */  addiu      $at, $zero, 0xFF
    /* 87A4E4 802BECA4 13010016 */  beq        $t8, $at, .Lhd_code_802BED00
    /* 87A4E8 802BECA8 00000000 */   nop
    /* 87A4EC 802BECAC 8F2B0000 */  lw         $t3, 0x0($t9)
    /* 87A4F0 802BECB0 24010001 */  addiu      $at, $zero, 0x1
    /* 87A4F4 802BECB4 916B0004 */  lbu        $t3, 0x4($t3)
    /* 87A4F8 802BECB8 11610011 */  beq        $t3, $at, .Lhd_code_802BED00
    /* 87A4FC 802BECBC 00000000 */   nop
    /* 87A500 802BECC0 932B00EB */  lbu        $t3, 0xEB($t9)
    /* 87A504 802BECC4 1560000E */  bnez       $t3, .Lhd_code_802BED00
    /* 87A508 802BECC8 00000000 */   nop
    /* 87A50C 802BECCC 8F2B0030 */  lw         $t3, 0x30($t9)
    /* 87A510 802BECD0 24010038 */  addiu      $at, $zero, 0x38
    /* 87A514 802BECD4 1161000A */  beq        $t3, $at, .Lhd_code_802BED00
    /* 87A518 802BECD8 00000000 */   nop
    /* 87A51C 802BECDC 3C0B8037 */  lui        $t3, %hi(D_hd_code_8036B974)
    /* 87A520 802BECE0 8D6BB974 */  lw         $t3, %lo(D_hd_code_8036B974)($t3)
    /* 87A524 802BECE4 11790006 */  beq        $t3, $t9, .Lhd_code_802BED00
    /* 87A528 802BECE8 00000000 */   nop
    /* 87A52C 802BECEC 240B0001 */  addiu      $t3, $zero, 0x1
    /* 87A530 802BECF0 3C018037 */  lui        $at, %hi(D_hd_code_8036B971)
    /* 87A534 802BECF4 A02BB971 */  sb         $t3, %lo(D_hd_code_8036B971)($at)
    /* 87A538 802BECF8 3C018037 */  lui        $at, %hi(D_hd_code_8036B974)
    /* 87A53C 802BECFC AC39B974 */  sw         $t9, %lo(D_hd_code_8036B974)($at)
  .Lhd_code_802BED00:
    /* 87A540 802BED00 0C0AFBE7 */  jal        func_hd_code_802BEF9C
    /* 87A544 802BED04 00000000 */   nop
    /* 87A548 802BED08 3C0B803C */  lui        $t3, %hi(D_hd_code_803BE738)
    /* 87A54C 802BED0C 916BE738 */  lbu        $t3, %lo(D_hd_code_803BE738)($t3)
    /* 87A550 802BED10 15600093 */  bnez       $t3, .Lhd_code_802BEF60
    /* 87A554 802BED14 00000000 */   nop
    /* 87A558 802BED18 239CFFEC */  addi       $gp, $gp, -0x14 /* handwritten instruction */
    /* 87A55C 802BED1C 0C0AF335 */  jal        func_hd_code_802BCCD4
    /* 87A560 802BED20 960B0052 */   lhu       $t3, 0x52($s0)
    /* 87A564 802BED24 0C0AFA9C */  jal        func_hd_code_802BEA70
    /* 87A568 802BED28 00000000 */   nop
    /* 87A56C 802BED2C 15E0006A */  bnez       $t7, .Lhd_code_802BEED8
    /* 87A570 802BED30 00000000 */   nop
    /* 87A574 802BED34 3C0F803F */  lui        $t7, %hi(D_hd_code_803F7800)
    /* 87A578 802BED38 91EF7800 */  lbu        $t7, %lo(D_hd_code_803F7800)($t7)
    /* 87A57C 802BED3C 15E00011 */  bnez       $t7, .Lhd_code_802BED84
    /* 87A580 802BED40 240100FF */   addiu     $at, $zero, 0xFF
    /* 87A584 802BED44 1301000F */  beq        $t8, $at, .Lhd_code_802BED84
    /* 87A588 802BED48 00000000 */   nop


    # Disabling this block is what allows z trick, its checking for if a building is the collision factor
    # /* 87A58C 802BED4C 3C0F803F */  lui        $t7, %hi(D_hd_code_803F7812)
    # /* 87A590 802BED50 91EF7812 */  lbu        $t7, %lo(D_hd_code_803F7812)($t7)
    # /* 87A594 802BED54 15E00007 */  bnez       $t7, .Lhd_code_802BED74


    /* 87A598 802BED58 00000000 */   nop
    /* 87A59C 802BED5C 0C0AFBFD */  jal        func_hd_code_802BEFF4
    /* 87A5A0 802BED60 00000000 */   nop
    /* 87A5A4 802BED64 3C0F803F */  lui        $t7, %hi(D_hd_code_803F780C)
    /* 87A5A8 802BED68 91EF780C */  lbu        $t7, %lo(D_hd_code_803F780C)($t7)
    /* 87A5AC 802BED6C 15E00005 */  bnez       $t7, .Lhd_code_802BED84
    /* 87A5B0 802BED70 00000000 */   nop
  .Lhd_code_802BED74:
    /* 87A5B4 802BED74 0C0AF378 */  jal        func_hd_code_802BCDE0
    /* 87A5B8 802BED78 00000000 */   nop
    /* 87A5BC 802BED7C 14600056 */  bnez       $v1, .Lhd_code_802BEED8
    /* 87A5C0 802BED80 00000000 */   nop
  .Lhd_code_802BED84:
    /* 87A5C4 802BED84 0C0AFA8C */  jal        func_hd_code_802BEA30
    /* 87A5C8 802BED88 00000000 */   nop
    /* 87A5CC 802BED8C 8F2F0030 */  lw         $t7, 0x30($t9)
    /* 87A5D0 802BED90 24010038 */  addiu      $at, $zero, 0x38
    /* 87A5D4 802BED94 15E10008 */  bne        $t7, $at, .Lhd_code_802BEDB8
    /* 87A5D8 802BED98 00000000 */   nop
    /* 87A5DC 802BED9C 17000004 */  bnez       $t8, .Lhd_code_802BEDB0
    /* 87A5E0 802BEDA0 00000000 */   nop
    /* 87A5E4 802BEDA4 240F0001 */  addiu      $t7, $zero, 0x1
    /* 87A5E8 802BEDA8 3C01803F */  lui        $at, %hi(D_hd_code_803F7805)
    /* 87A5EC 802BEDAC A02F7805 */  sb         $t7, %lo(D_hd_code_803F7805)($at)
  .Lhd_code_802BEDB0:
    /* 87A5F0 802BEDB0 10000005 */  b          .Lhd_code_802BEDC8
    /* 87A5F4 802BEDB4 240F0000 */   addiu     $t7, $zero, 0x0
  .Lhd_code_802BEDB8:
    /* 87A5F8 802BEDB8 978F0010 */  lhu        $t7, 0x10($gp)
    /* 87A5FC 802BEDBC 8F3C0000 */  lw         $gp, 0x0($t9)
    /* 87A600 802BEDC0 0C0AFFDB */  jal        func_hd_code_802BFF6C
    /* 87A604 802BEDC4 939C0004 */   lbu       $gp, 0x4($gp)
  .Lhd_code_802BEDC8:
    /* 87A608 802BEDC8 3C1C802F */  lui        $gp, %hi(D_hd_code_802E8BE4)
    /* 87A60C 802BEDCC 279C8BE4 */  addiu      $gp, $gp, %lo(D_hd_code_802E8BE4)
    /* 87A610 802BEDD0 240C000A */  addiu      $t4, $zero, 0xA
    /* 87A614 802BEDD4 A38C0000 */  sb         $t4, 0x0($gp)
    /* 87A618 802BEDD8 3C1C802F */  lui        $gp, %hi(D_hd_code_802E8BE8)
    /* 87A61C 802BEDDC 29E101F5 */  slti       $at, $t7, 0x1F5
    /* 87A620 802BEDE0 10200003 */  beqz       $at, .Lhd_code_802BEDF0
    /* 87A624 802BEDE4 279C8BE8 */   addiu     $gp, $gp, %lo(D_hd_code_802E8BE8)
    /* 87A628 802BEDE8 10000003 */  b          .Lhd_code_802BEDF8
    /* 87A62C 802BEDEC AF8F0000 */   sw        $t7, 0x0($gp)
  .Lhd_code_802BEDF0:
    /* 87A630 802BEDF0 240C01F4 */  addiu      $t4, $zero, 0x1F4
    /* 87A634 802BEDF4 AF8C0000 */  sw         $t4, 0x0($gp)
  .Lhd_code_802BEDF8:
    /* 87A638 802BEDF8 257CFFFF */  addiu      $gp, $t3, -0x1
    /* 87A63C 802BEDFC 232C00EC */  addi       $t4, $t9, 0xEC /* handwritten instruction */
    /* 87A640 802BEE00 019C6021 */  addu       $t4, $t4, $gp
    /* 87A644 802BEE04 918D0000 */  lbu        $t5, 0x0($t4)
    /* 87A648 802BEE08 01AF6821 */  addu       $t5, $t5, $t7
    /* 87A64C 802BEE0C 29A10064 */  slti       $at, $t5, 0x64
    /* 87A650 802BEE10 14200002 */  bnez       $at, .Lhd_code_802BEE1C
    /* 87A654 802BEE14 00000000 */   nop
    /* 87A658 802BEE18 240D0064 */  addiu      $t5, $zero, 0x64
  .Lhd_code_802BEE1C:
    /* 87A65C 802BEE1C A18D0000 */  sb         $t5, 0x0($t4)
    /* 87A660 802BEE20 3C01803F */  lui        $at, %hi(D_hd_code_803F77FE)
    /* 87A664 802BEE24 0C0AFE26 */  jal        func_hd_code_802BF898
    /* 87A668 802BEE28 A42F77FE */   sh        $t7, %lo(D_hd_code_803F77FE)($at)
    /* 87A66C 802BEE2C 24010064 */  addiu      $at, $zero, 0x64
    /* 87A670 802BEE30 15A10029 */  bne        $t5, $at, .Lhd_code_802BEED8
    /* 87A674 802BEE34 00000000 */   nop
    /* 87A678 802BEE38 0C0AFC7C */  jal        func_hd_code_802BF1F0
    /* 87A67C 802BEE3C 00000000 */   nop
    /* 87A680 802BEE40 0C0B050E */  jal        func_hd_code_802C1438
    /* 87A684 802BEE44 00000000 */   nop
    /* 87A688 802BEE48 0C0B026E */  jal        func_hd_code_802C09B8
    /* 87A68C 802BEE4C 00000000 */   nop
    /* 87A690 802BEE50 0C0B03A3 */  jal        func_hd_code_802C0E8C
    /* 87A694 802BEE54 00000000 */   nop
    /* 87A698 802BEE58 0C0AFCE1 */  jal        func_hd_code_802BF384
    /* 87A69C 802BEE5C 00000000 */   nop
    /* 87A6A0 802BEE60 3C0C802F */  lui        $t4, %hi(D_hd_code_802E8BE4)
    /* 87A6A4 802BEE64 258C8BE4 */  addiu      $t4, $t4, %lo(D_hd_code_802E8BE4)
    /* 87A6A8 802BEE68 2405000F */  addiu      $a1, $zero, 0xF
    /* 87A6AC 802BEE6C A1850000 */  sb         $a1, 0x0($t4)
    /* 87A6B0 802BEE70 3C0C802F */  lui        $t4, %hi(D_hd_code_802E8BE8)
    /* 87A6B4 802BEE74 258C8BE8 */  addiu      $t4, $t4, %lo(D_hd_code_802E8BE8)
    /* 87A6B8 802BEE78 24050190 */  addiu      $a1, $zero, 0x190
    /* 87A6BC 802BEE7C AD850000 */  sw         $a1, 0x0($t4)
    /* 87A6C0 802BEE80 8F2C0004 */  lw         $t4, 0x4($t9)
    /* 87A6C4 802BEE84 8F2D0008 */  lw         $t5, 0x8($t9)
  .Lhd_code_802BEE88:
    /* 87A6C8 802BEE88 118D0013 */  beq        $t4, $t5, .Lhd_code_802BEED8
    /* 87A6CC 802BEE8C 00000000 */   nop
    /* 87A6D0 802BEE90 958E0052 */  lhu        $t6, 0x52($t4)
    /* 87A6D4 802BEE94 15CB0002 */  bne        $t6, $t3, .Lhd_code_802BEEA0
    /* 87A6D8 802BEE98 00000000 */   nop
    /* 87A6DC 802BEE9C A1800051 */  sb         $zero, 0x51($t4)
  .Lhd_code_802BEEA0:
    /* 87A6E0 802BEEA0 91850057 */  lbu        $a1, 0x57($t4)
    /* 87A6E4 802BEEA4 14AB000A */  bne        $a1, $t3, .Lhd_code_802BEED0
    /* 87A6E8 802BEEA8 00000000 */   nop
    /* 87A6EC 802BEEAC 232500EC */  addi       $a1, $t9, 0xEC /* handwritten instruction */
    /* 87A6F0 802BEEB0 25CEFFFF */  addiu      $t6, $t6, -0x1
    /* 87A6F4 802BEEB4 00AE2821 */  addu       $a1, $a1, $t6
    /* 87A6F8 802BEEB8 90A50000 */  lbu        $a1, 0x0($a1)
    /* 87A6FC 802BEEBC 24010064 */  addiu      $at, $zero, 0x64
    /* 87A700 802BEEC0 10A10003 */  beq        $a1, $at, .Lhd_code_802BEED0
    /* 87A704 802BEEC4 00000000 */   nop
    /* 87A708 802BEEC8 24050001 */  addiu      $a1, $zero, 0x1
    /* 87A70C 802BEECC A1850051 */  sb         $a1, 0x51($t4)
  .Lhd_code_802BEED0:
    /* 87A710 802BEED0 1000FFED */  b          .Lhd_code_802BEE88
    /* 87A714 802BEED4 218C0060 */   addi      $t4, $t4, 0x60 /* handwritten instruction */
  .Lhd_code_802BEED8:
    /* 87A718 802BEED8 24020001 */  addiu      $v0, $zero, 0x1
    /* 87A71C 802BEEDC 3C01803F */  lui        $at, %hi(D_hd_code_803F7803)
    /* 87A720 802BEEE0 A0227803 */  sb         $v0, %lo(D_hd_code_803F7803)($at)
    /* 87A724 802BEEE4 3C02803A */  lui        $v0, %hi(D_hd_code_803A7408)
    /* 87A728 802BEEE8 24427408 */  addiu      $v0, $v0, %lo(D_hd_code_803A7408)
    /* 87A72C 802BEEEC 8C420000 */  lw         $v0, 0x0($v0)
  .Lhd_code_802BEEF0:
    /* 87A730 802BEEF0 80430000 */  lb         $v1, 0x0($v0)
    /* 87A734 802BEEF4 107E0013 */  beq        $v1, $fp, .Lhd_code_802BEF44
    /* 87A738 802BEEF8 00000000 */   nop
    /* 87A73C 802BEEFC 0461FFFC */  bgez       $v1, .Lhd_code_802BEEF0
    /* 87A740 802BEF00 20420001 */   addi      $v0, $v0, 0x1 /* handwritten instruction */
    /* 87A744 802BEF04 257CFFFF */  addiu      $gp, $t3, -0x1
    /* 87A748 802BEF08 272C00EC */  addiu      $t4, $t9, 0xEC
    /* 87A74C 802BEF0C 019C6021 */  addu       $t4, $t4, $gp
    /* 87A750 802BEF10 918D0000 */  lbu        $t5, 0x0($t4)
    /* 87A754 802BEF14 24010064 */  addiu      $at, $zero, 0x64
    /* 87A758 802BEF18 11A10007 */  beq        $t5, $at, .Lhd_code_802BEF38
    /* 87A75C 802BEF1C 00000000 */   nop
    /* 87A760 802BEF20 24050001 */  addiu      $a1, $zero, 0x1
    /* 87A764 802BEF24 3C01803A */  lui        $at, %hi(D_hd_code_803A7424)
    /* 87A768 802BEF28 0C0AFC99 */  jal        func_hd_code_802BF264
    /* 87A76C 802BEF2C A0257424 */   sb        $a1, %lo(D_hd_code_803A7424)($at)
    /* 87A770 802BEF30 10000004 */  b          .Lhd_code_802BEF44
    /* 87A774 802BEF34 00000000 */   nop
  .Lhd_code_802BEF38:
    /* 87A778 802BEF38 24050001 */  addiu      $a1, $zero, 0x1
    /* 87A77C 802BEF3C 3C01803F */  lui        $at, %hi(D_hd_code_803F7802)
    /* 87A780 802BEF40 A0257802 */  sb         $a1, %lo(D_hd_code_803F7802)($at)
  .Lhd_code_802BEF44:
    /* 87A784 802BEF44 0C0AFD9A */  jal        func_hd_code_802BF668
    /* 87A788 802BEF48 00000000 */   nop
    /* 87A78C 802BEF4C 0C0AFD4D */  jal        func_hd_code_802BF534
    /* 87A790 802BEF50 00000000 */   nop
    /* 87A794 802BEF54 10000002 */  b          .Lhd_code_802BEF60
    /* 87A798 802BEF58 00000000 */   nop
  .Lhd_code_802BEF5C:
    /* 87A79C 802BEF5C 24050000 */  addiu      $a1, $zero, 0x0
  .Lhd_code_802BEF60:
    /* 87A7A0 802BEF60 DFBF0000 */  ld         $ra, 0x0($sp)
    /* 87A7A4 802BEF64 DFAB0008 */  ld         $t3, 0x8($sp)
    /* 87A7A8 802BEF68 DFAC0010 */  ld         $t4, 0x10($sp)
    /* 87A7AC 802BEF6C DFAD0018 */  ld         $t5, 0x18($sp)
    /* 87A7B0 802BEF70 DFAE0020 */  ld         $t6, 0x20($sp)
    /* 87A7B4 802BEF74 DFAF0028 */  ld         $t7, 0x28($sp)
    /* 87A7B8 802BEF78 DFB00030 */  ld         $s0, 0x30($sp)
    /* 87A7BC 802BEF7C DFB10038 */  ld         $s1, 0x38($sp)
    /* 87A7C0 802BEF80 DFB20040 */  ld         $s2, 0x40($sp)
    /* 87A7C4 802BEF84 DFB30048 */  ld         $s3, 0x48($sp)
    /* 87A7C8 802BEF88 DFB40050 */  ld         $s4, 0x50($sp)
    /* 87A7CC 802BEF8C DFBC0058 */  ld         $gp, 0x58($sp)
    /* 87A7D0 802BEF90 DFBE0060 */  ld         $fp, 0x60($sp)
    /* 87A7D4 802BEF94 03E00008 */  jr         $ra
    /* 87A7D8 802BEF98 27BD0068 */   addiu     $sp, $sp, 0x68
  endlabel func_hd_code_802BEBB0
