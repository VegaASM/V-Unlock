	.file	"IOSPatch.c"
	.machine ppc
	.section	".text"
	.align 2
	.type	apply_patch.constprop.0, @function
apply_patch.constprop.0:
.LFB75:
	.cfi_startproc
	stwu 1,-48(1)
	.cfi_def_cfa_offset 48
	lis 9,0x8000
	mflr 0
	ori 9,9,0x3134
	stmw 23,12(1)
	.cfi_register 65, 0
	.cfi_offset 23, -36
	.cfi_offset 24, -32
	.cfi_offset 25, -28
	.cfi_offset 26, -24
	.cfi_offset 27, -20
	.cfi_offset 28, -16
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lis 27,0x9400
	stw 0,52(1)
	.cfi_offset 65, 4
	mr 26,3
	lwz 31,0(9)
	mr 25,4
	mr 24,5
	mr 29,6
	mr 23,7
	li 28,0
	subf 27,6,27
.L2:
	cmplw 0,31,27
	blt+ 0,.L5
	addi 11,1,48
	mr 3,28
	b _restgpr_23_x
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_restore 65
.L5:
	.cfi_restore_state
	mr 5,25
	mr 4,26
	mr 3,31
	bl memcmp
	cmpwi 0,3,0
	bne+ 0,.L3
	addi 28,28,1
	add 30,31,23
	li 9,0
	mtctr 29
.L4:
	lbzx 10,24,9
	stbx 10,30,9
	addi 9,9,1
	bdnz .L4
	rlwinm 30,30,0,0,26
	li 4,64
	mr 3,30
	bl DCFlushRange
	li 4,64
	mr 3,30
	bl ICInvalidateRange
.L3:
	addi 31,31,1
	b .L2
	.cfi_endproc
.LFE75:
	.size	apply_patch.constprop.0, .-apply_patch.constprop.0
	.align 2
	.globl IOSPATCH_Apply
	.type	IOSPATCH_Apply, @function
IOSPATCH_Apply:
.LFB74:
	.cfi_startproc
	stwu 1,-24(1)
	.cfi_def_cfa_offset 24
	mflr 0
	stmw 29,12(1)
	.cfi_register 65, 0
	.cfi_offset 29, -12
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	lis 29,0xcd80
	ori 29,29,0x64
	stw 0,28(1)
	.cfi_offset 65, 4
	lwz 9,0(29)
	cmpwi 0,9,-1
	beq- 0,.L10
.L12:
	li 3,0
.L9:
	addi 11,1,24
	b _restgpr_29_x
	.cfi_remember_state
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 65
.L10:
	.cfi_restore_state
	lis 31,0xcd8b
	ori 31,31,0x420a
#APP
 # 212 "/opt/devkitpro/libogc/include/ogc/machine/processor.h" 1
	lwz 9,0(31) ; sync
 # 0 "" 2
#NO_APP
	rlwinm 9,9,0,16,31
#APP
 # 218 "/opt/devkitpro/libogc/include/ogc/machine/processor.h" 1
	stw 9,0(31) ; eieio
 # 0 "" 2
#NO_APP
	lis 30,.LANCHOR0@ha
	lis 5,es_set_ahbprot_patch@ha
	la 30,.LANCHOR0@l(30)
	li 7,25
	li 6,1
	la 5,es_set_ahbprot_patch@l(5)
	li 4,14
	mr 3,30
	bl apply_patch.constprop.0
	cmpwi 0,3,0
	beq- 0,.L12
	bl WPAD_Shutdown
	bl IOS_GetVersion
	bl IOS_ReloadIOS
	bl WPAD_Init
	li 4,2
	li 3,0
	bl WPAD_SetDataFormat
	lwz 9,0(29)
	cmpwi 0,9,-1
	bne+ 0,.L12
#APP
 # 212 "/opt/devkitpro/libogc/include/ogc/machine/processor.h" 1
	lwz 9,0(31) ; sync
 # 0 "" 2
#NO_APP
	rlwinm 9,9,0,16,31
#APP
 # 218 "/opt/devkitpro/libogc/include/ogc/machine/processor.h" 1
	stw 9,0(31) ; eieio
 # 0 "" 2
#NO_APP
	lis 5,isfs_permissions_patch@ha
	lis 3,isfs_permissions_old@ha
	li 7,0
	li 6,6
	la 5,isfs_permissions_patch@l(5)
	li 4,6
	la 3,isfs_permissions_old@l(3)
	bl apply_patch.constprop.0
	addi 5,30,16
	mr 31,3
	li 7,0
	li 6,2
	li 4,4
	addi 3,30,20
	lis 30,hash_patch@ha
	bl apply_patch.constprop.0
	lis 5,es_identify_patch@ha
	add 31,31,3
	lis 3,es_identify_old@ha
	li 7,2
	li 6,2
	la 5,es_identify_patch@l(5)
	li 4,4
	la 3,es_identify_old@l(3)
	la 30,hash_patch@l(30)
	bl apply_patch.constprop.0
	li 7,1
	add 31,31,3
	lis 3,hash_old@ha
	li 6,1
	mr 5,30
	li 4,4
	la 3,hash_old@l(3)
	bl apply_patch.constprop.0
	li 7,1
	add 31,31,3
	lis 3,new_hash_old@ha
	li 6,1
	mr 5,30
	li 4,4
	la 3,new_hash_old@l(3)
	bl apply_patch.constprop.0
	lis 5,addticket_patch@ha
	add 31,31,3
	lis 3,addticket_vers_check@ha
	li 7,0
	li 6,1
	la 5,addticket_patch@l(5)
	li 4,4
	la 3,addticket_vers_check@l(3)
	bl apply_patch.constprop.0
	add 3,31,3
	b .L9
	.cfi_endproc
.LFE74:
	.size	IOSPATCH_Apply, .-IOSPATCH_Apply
	.globl es_set_ahbprot_patch
	.globl es_set_ahbprot_pattern
	.globl addticket_patch
	.globl addticket_vers_check
	.globl new_hash_old
	.globl hash_patch
	.globl hash_old
	.globl es_identify_patch
	.globl es_identify_old
	.globl isfs_permissions_patch
	.globl isfs_permissions_old
	.section	.rodata
	.align 2
	.set	.LANCHOR0,. + 0
	.type	es_set_ahbprot_pattern, @object
	.size	es_set_ahbprot_pattern, 14
es_set_ahbprot_pattern:
	.string	"h[\"\354"
	.ascii	"R\030\233h\033F\230\007\333"
	.zero	2
	.type	setuid_patch, @object
	.size	setuid_patch, 2
setuid_patch:
	.ascii	"F\300"
	.zero	2
	.type	setuid_old, @object
	.size	setuid_old, 4
setuid_old:
	.ascii	"\321*\0349"
	.section	.sdata,"aw"
	.align 2
	.type	es_set_ahbprot_patch, @object
	.size	es_set_ahbprot_patch, 1
es_set_ahbprot_patch:
	.ascii	"\001"
	.zero	3
	.type	addticket_patch, @object
	.size	addticket_patch, 1
addticket_patch:
	.ascii	"\340"
	.zero	3
	.type	addticket_vers_check, @object
	.size	addticket_vers_check, 4
addticket_vers_check:
	.ascii	"\322\001NV"
	.type	new_hash_old, @object
	.size	new_hash_old, 4
new_hash_old:
	.ascii	" \007K\013"
	.type	hash_patch, @object
	.size	hash_patch, 1
hash_patch:
	.zero	1
	.zero	3
	.type	hash_old, @object
	.size	hash_old, 4
hash_old:
	.ascii	" \007#\242"
	.type	es_identify_patch, @object
	.size	es_identify_patch, 2
es_identify_patch:
	.zero	2
	.zero	2
	.type	es_identify_old, @object
	.size	es_identify_old, 4
es_identify_old:
	.ascii	"(\003\321#"
	.type	isfs_permissions_patch, @object
	.size	isfs_permissions_patch, 6
isfs_permissions_patch:
	.ascii	"B\213\340\001%f"
	.zero	2
	.type	isfs_permissions_old, @object
	.size	isfs_permissions_old, 6
isfs_permissions_old:
	.ascii	"B\213\320\001%f"
	.ident	"GCC: (devkitPPC release 40) 11.2.0"
