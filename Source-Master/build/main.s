#Copyright (C) 2022 VegaASM
#This code is licensed to you under the terms of the GNU GPL, version 2;
#see http://www.gnu.org/licenses/old-licenses/gpl-2.0.txt

	.file	"main.c"
	.machine ppc
	.section	".text"
	.globl __eabi
	.section	.rodata.str1.1,"aMS",@progbits,1

#Custom/extra strings
.LC1:
    .string "/title/00010004/524d43XX/data/rksys.dat" #RMC?
.LC2:
    .string "\n\n  _       _                        ___   ___\n  \\\\     //    || || |\\  || ||    | _ | | __| || //\n   \\\\   // __  || || | \\ || ||    || || ||    ||//\n    \\\\_// |__| ||_|| ||\\\\|| ||__  ||_|| ||__  ||\\\\\n     \\_/       |___| || \\_| |___| |___| |___| || \\\\\n\nWelcome to \x1b[45m\x1b[30mV-Unlock\x1b[40m\x1b[37m (Vega's MKW Unlocker App).\n\nThis app will unlock everything for every license for all your MKW Data Saves. Press A on your controller to Continue. Press Home (Wii Remote / Classic) or Start (GCN) to abort back to \x1b[36mHBC\x1b[37m.\n\nFor any questions or bug reports, please visit \x1b[32mwww.MarioKartWii.com\x1b[37m.\n\n\n\n\n\n\n\n\n\n\n\nVersion: 0.5\nRelease Date: Mar 4, 2022"
.LC3:
    .string "\n\n\x1b[33mUnlocking..."
.LC4:
    .string "\n\n\x1b[31mISFS Init Error. Auto-exiting to HBC. Please wait..."
.LC5:
    .string "\n\n\x1b[31mISFS Open Error. Auto-exiting to HBC. Please wait..."
.LC6:
    .string "\n\n\x1b[31mMemalign Error. Auto-exiting to HBC. Please wait..."
.LC7:
    .string "\n\n\x1b[31mISFS Read Error. Auto-exiting to HBC. Please wait..."
.LC8:
    .string "\n\n\x1b[31mISFS Close Error. Auto-exiting to HBC. Please wait..."
.LC9:
    .string "\n\n\x1b[31mISFS Write Error. Auto-exiting to HBC. Please wait..."
.LC10:
    .string "\n\n\x1b[32mSuccess!\x1b[37m Auto-exiting to \x1b[36mHBC\x1b[37m. Please wait..."
.LC12:
    .string "\n\n\x1b[33mAbort!\x1b[37m Exiting to \x1b[36mHBC\x1b[37m. Please wait..."
.LC13:
    .string "\x1b[2J"
.LC14:
    .string "\n\nChoose your \x1b[33mStar Rank\x1b[37m.\n\nWii Remote (-) / GCN (X) / Classic (X) = No Star Rank\nWii Remote (1) / GCN (L) / Classic (L) = 1 Star\nWii Remote (2) / GCN (R) / Classic (R) = 2 Star\nWii Remote (+) / GCN (Y) / Classic (Y) = 3 Star\n\nPress Home (Wii Remote / Classic) or Start (GCN) to abort back to \x1b[36mHBC\x1b[37m.\n\nPress B to go back."
.LC15:
    .string "\n\nChoose one of the VR+BR options.\n\nWii Remote (-) / GCN (X) / Classic (X) = Do not change VR+BR\nWii Remote (1) / GCN (L) / Classic (L) = Set VR+BR to 5000\nWii Remote (+) / GCN (Y) / Classic (Y) = Set VR+BR to 9999\n\nPress Home (Wii Remote / Classic) or Start (GCN) to abort back to \x1b[36mHBC\x1b[37m.\n\nPress B to go back."
.LC16:
    .string "\n\nApply Wii Wheel 100%% Stat? (Golden Wii Wheel)\n\nWii Remote (-) / GCN (X) / Classic (X) = No (don't change my percentage)\nWii Remote (1) / GCN (L) / Classic (L) = No (reset percentage to 0)\nWii Remote (+) / GCN (Y) / Classic (Y) = Yes\n\nPress Home (Wii Remote / Classic) or Start (GCN) to abort back to \x1b[36mHBC\x1b[37m.\n\nPress B to go back.\n\nPlease note that once you continue past this screen, the app will initiate and you \x1b[41m\x1b[33mcannot\x1b[40m\x1b[37m abort!"
.LC17:
    .string "\n\n\x1b[31mChecksum Error. Auto-exiting to HBC. Please wait..."
    .align 2 #The CRC Table start address needs to be divisble by 4
    
#CRC Lookup Table
crc_table:
.byte    0
.byte    0
.byte    0
.byte    0
.byte 0x1D
.byte 0xB7 # +
.byte 0x10
.byte 0x64 # d
.byte 0x3B # ;
.byte 0x6E # n
.byte 0x20
.byte 0xC8 # +
.byte 0x26 # &
.byte 0xD9 # +
.byte 0x30 # 0
.byte 0xAC # ¼
.byte 0x76 # v
.byte 0xDC # _
.byte 0x41 # A
.byte 0x90 # É
.byte 0x6B # k
.byte 0x6B # k
.byte 0x51 # Q
.byte 0xF4 # (
.byte 0x4D # M
.byte 0xB2 # ¦
.byte 0x61 # a
.byte 0x58 # X
.byte 0x50 # P
.byte    5
.byte 0x71 # q
.byte 0x3C # <
.byte 0xED # f
.byte 0xB8 # +
.byte 0x83 # â
.byte 0x20
.byte 0xF0 # =
.byte  0xF
.byte 0x93 # ô
.byte 0x44 # D
.byte 0xD6 # +
.byte 0xD6 # +
.byte 0xA3 # ú
.byte 0xE8 # F
.byte 0xCB # -
.byte 0x61 # a
.byte 0xB3 # ¦
.byte 0x8C # î
.byte 0x9B # ¢
.byte 0x64 # d
.byte 0xC2 # -
.byte 0xB0 # ¦
.byte 0x86 # å
.byte 0xD3 # +
.byte 0xD2 # -
.byte 0xD4 # +
.byte 0xA0 # á
.byte  0xA
.byte 0xE2 # G
.byte 0x78 # x
.byte 0xBD # +
.byte 0xBD # +
.byte 0xF2 # =
.byte 0x1C

.LC0:
	.string	"\033[2;0H"
	.section	.text.startup,"ax",@progbits
	.align 2
	.globl main
	.type	main, @function
main:
.LFB64:
	.cfi_startproc
	stwu 1,-16(1)
	.cfi_def_cfa_offset 16
	mflr 0
	stw 0,20(1)
	stmw 30,8(1)
	.cfi_offset 65, 4
	.cfi_offset 30, -8
	.cfi_offset 31, -4
	bl __eabi
	bl VIDEO_Init
	lis 31,.LANCHOR0@ha
	bl WPAD_Init
	la 30,.LANCHOR0@l(31)
	bl PAD_Init
	bl IOSPATCH_Apply
	li 3,0
	bl VIDEO_GetPreferredMode
	stw 3,.LANCHOR0@l(31)
	bl SYS_AllocateFramebuffer
	lwz 9,.LANCHOR0@l(31)
	li 5,20
	li 4,20
	addis 3,3,0x4000
	lhz 6,4(9)
	lhz 7,8(9)
	slwi 8,6,1
	stw 3,4(30)
	bl CON_Init
	lwz 3,.LANCHOR0@l(31)
	bl VIDEO_Configure
	lwz 3,4(30)
	bl VIDEO_SetNextFramebuffer
	li 3,0
	bl VIDEO_SetBlack
	bl VIDEO_Flush
	bl VIDEO_WaitVSync
	lwz 9,.LANCHOR0@l(31)
	lwz 9,0(9)
	andi. 9,9,0x1
	beq+ 0, console_setup
	bl VIDEO_WaitVSync

#Initial Console setup
console_setup:
lis r3, .LC0@ha
la r3,.LC0@l (r3)
crxor 6, 6, 6
bl printf

#Initial Resetting of the Console; also used for main_menu console reset if backing from star rank menu
main_menu:    
lis r3, .LC13@ha
la r3, .LC13@l (r3)
crxor 6, 6, 6
bl printf

#Welcome Message
lis r3, .LC2@ha
la r3, .LC2@l (r3)
crxor 6, 6, 6
bl printf

#Idle for Main Menu
idle:

#Scan Buttons
bl WPAD_ScanPads
li r3, 0
bl WPAD_ButtonsDown
mr r31, r3
bl PAD_ScanPads
li r3, 0
bl PAD_ButtonsDown

#Main Menu, only check for A for start/home
andi. r0, r3, 0x1000 #GCN Start
bne- exit_hbc
andi. r0, r31, 0x0080 #Wheel/Chuck Home
bne- exit_hbc
andis. r0, r31, 0x0800 #Classic Home
bne- exit_hbc
andi. r0, r3, 0x0100 #GCN A
bne- star_rank_menu
andi. r0, r31, 0x0008 #Wheel/Chuck A
bne- star_rank_menu
andis. r0, r31, 0x0010 #Classic A
beq+ sync_video_and_loop

#Star Rank Menu activated; reset console
star_rank_menu:
lis r3, .LC13@ha
la r3, .LC13@l (r3)
crxor 6, 6, 6
bl printf

#Display the Star Rank Menu
lis r3, .LC14@ha
la r3, .LC14@l (r3)
crxor 6, 6, 6
bl printf

#Star Rank Menu Idle loop
idle_star_rank:

#Scan Buttons
bl WPAD_ScanPads
li r3, 0
bl WPAD_ButtonsDown
mr r31, r3
bl PAD_ScanPads
li r3, 0
bl PAD_ButtonsDown

andi. r0, r3, 0x1000 #GCN Start
bne- exit_hbc
andi. r0, r31, 0x0080 #Wheel/Chuck Home
bne- exit_hbc
andis. r0, r31, 0x0800 #Classic Home
bne- exit_hbc

#r30 = Star Rank
li r30, 0x0300 #0 Stars (A rank)
andi. r0, r3, 0x0400 #GCN X
bne- vrbr_menu
andi. r0, r31, 0x0010 #Wheel/Chuck Minus
bne- vrbr_menu
andis. r0, r31, 0x0008 #Classic X
bne- vrbr_menu

li r30, 0x0200 #1 Star
andi. r0, r3, 0x0040 #GCN L
bne- vrbr_menu
andi. r0, r31, 0x0002 #Wheel/Chuck 1
bne- vrbr_menu
andis. r0, r31, 0x2000 #Classic L
bne- vrbr_menu

li r30, 0x0100 #2 Stars
andi. r0, r3, 0x0020 #GCN R
bne- vrbr_menu
andi. r0, r31, 0x0001 #Wheel/Chuck 2
bne- vrbr_menu
andis. r0, r31, 0x0200 #Classic R
bne- vrbr_menu

li r30, 0 #3 Stars
andi. r0, r3, 0x0800 #GCN Y
bne- vrbr_menu
andi. r0, r31, 0x1000 #Wheel/Chuck +
bne- vrbr_menu
andis. r0, r31, 0x0020 #Classic Y
bne- vrbr_menu

#B (back) button check
andi. r0, r3, 0x0200 #GCN B
bne- main_menu
andi. r0, r31, 0x0004 #Wheel/Chuck B
bne- main_menu
andis. r0, r31, 0x0040 #Classic B
bne- main_menu

bl VIDEO_WaitVSync
b idle_star_rank

#VR+BR Menu activated, reset console
vrbr_menu:
lis r3, .LC13@ha
la r3, .LC13@l (r3)
crxor 6, 6, 6
bl printf

#Display the VR+BR Menu
lis r3, .LC15@ha
la r3, .LC15@l (r3)
crxor 6, 6, 6
bl printf

#VR+BR Menu Idle loop
idle_vrbr_rank:

#Scan Buttons
bl WPAD_ScanPads
li r3, 0
bl WPAD_ButtonsDown
mr r31, r3
bl PAD_ScanPads
li r3, 0
bl PAD_ButtonsDown

andi. r0, r3, 0x1000 #GCN Start
bne- exit_hbc
andi. r0, r31, 0x0080 #Wheel/Chuck Home
bne- exit_hbc
andis. r0, r31, 0x0800 #Classic Home
bne- exit_hbc

#r29 = VR+BR (VR set to FFFF will disable the writing of it)
lis r29, 0x270F
ori r29, r29, 0x270F
andi. r0, r3, 0x0800 #GCN Y
bne- wheel_menu
andi. r0, r31, 0x1000 #Wheel/Chuck +
bne- wheel_menu
andis. r0, r31, 0x0020 #Classic Y
bne- wheel_menu

lis r29, 0x1388
ori r29, r29, 0x1388
andi. r0, r3, 0x0040 #GCN L
bne- wheel_menu
andi. r0, r31, 0x0002 #Wheel/Chuck 1
bne- wheel_menu
andis. r0, r31, 0x2000 #Classic L
bne- wheel_menu

li r29, -1
andi. r0, r3, 0x0400 #GCN X
bne- wheel_menu
andi. r0, r31, 0x0010 #Wheel/Chuck Minus
bne- wheel_menu
andis. r0, r31, 0x0008 #Classic X
bne- wheel_menu

#B (back) button check
andi. r0, r3, 0x0200 #GCN B
bne- star_rank_menu
andi. r0, r31, 0x0004 #Wheel/Chuck B
bne- star_rank_menu
andis. r0, r31, 0x0040 #Classic B
bne- star_rank_menu

bl VIDEO_WaitVSync
b idle_vrbr_rank

#Wii Wheel Menu activated, reset console
wheel_menu:
lis r3, .LC13@ha
la r3, .LC13@l (r3)
crxor 6, 6, 6
bl printf

#Display the Wii Wheel Menu
lis r3, .LC16@ha
la r3, .LC16@l (r3)
crxor 6, 6, 6
bl printf

#VR+BR Menu Idle loop
idle_wheel_rank:

#Scan Buttons
bl WPAD_ScanPads
li r3, 0
bl WPAD_ButtonsDown
mr r31, r3
bl PAD_ScanPads
li r3, 0
bl PAD_ButtonsDown

andi. r0, r3, 0x1000 #GCN Start
bne- exit_hbc
andi. r0, r31, 0x0080 #Wheel/Chuck Home
bne- exit_hbc
andis. r0, r31, 0x0800 #Classic Home
bne- exit_hbc

#r28 = Wheel option (1 = set to 100%, 0 = reset to 0%, -1 = leave alone)
lis r28, 0x0001
ori r28, r28, 0x869F
andi. r0, r3, 0x0800 #GCN Y
bne- init
andi. r0, r31, 0x1000 #Wheel/Chuck +
bne- init
andis. r0, r31, 0x0020 #Classic Y
bne- init

li r28, 0
andi. r0, r3, 0x0040 #GCN L
bne- init
andi. r0, r31, 0x0002 #Wheel/Chuck 1
bne- init
andis. r0, r31, 0x2000 #Classic L
bne- init

li r28, -1
andi. r0, r3, 0x0400 #GCN X
bne- init
andi. r0, r31, 0x0010 #Wheel/Chuck Minus
bne- init
andis. r0, r31, 0x0008 #Classic X
bne- init

#B (back) button check
andi. r0, r3, 0x0200 #GCN B
bne- vrbr_menu
andi. r0, r31, 0x0004 #Wheel/Chuck B
bne- vrbr_menu
andis. r0, r31, 0x0040 #Classic B
bne- vrbr_menu

bl VIDEO_WaitVSync
b idle_wheel_rank

#Run the app!
init:

#Display the unlocking... message
#Reset Console
lis r3, .LC13@ha
la r3, .LC13@l (r3)
crxor 6, 6, 6
bl printf

#Unlocking Message
lis r3, .LC3@ha
la r3,.LC3@l (r3)
crxor 6, 6, 6
bl printf

#Boot ISFS
bl ISFS_Initialize
cmpwi r3, 0
blt- err_isfsinit

#Start of Mega Loop
#41 = 3431 = RMCA
#42 = 3432 = RMCB
#43 = 3433 = RMCC
#44 = 3434 = RMCD
#45 = 3435 = RMCE
#46 = 3436 = RMCF
#47 = 3437 = RMCG
#48 = 3438 = RMCH
#49 = 3439 = RMCI
# first step
#4a = 3461 = RMCJ
#4b = 3462 = RMCK
#4c = 3463 = RMCL
#4d = 3464 = RMCM
#4e = 3465 = RMCN
#4f = 3466 = RMCO
# second step
#50 = 3530 = RMCP
#51 = 3531 = RMCQ
#52 = 3532 = RMCR
#53 = 3533 = RMCS
#54 = 3534 = RMCT
#55 = 3535 = RMCU
#56 = 3536 = RMCV
#57 = 3537 = RMCW
#58 = 3538 = RMCX
#59 = 3539 = RMCY
# third step
#5a = 3561 = RMCZ
li r31, 0x3430 #This is 1 before 41 in ASCII Data SAVE ID 

#Mega Loop
mega_loop:
addi r31, r31, 1 #Increment to next ASCII
cmpwi r31, 0x343A
beq- first_step
cmpwi r31, 0x3467
beq- second_step
cmpwi r31, 0x353A
beq- third_step
cmplwi r31, 0x3561
bgt- success #Data save checklist completed; success! Literally everything is done!
b edit_path_string

first_step:
li r31, 0x3461
b edit_path_string

second_step:
li r31, 0x3530
b edit_path_string

third_step:
li r31, 0x3561

#Edit the .LC1 label
edit_path_string:
lis r3, .LC1@ha
la r3, .LC1@l (r3)
sth r31, 0x16 (r3) #Update the file path
mr r27, r3 #Backup file string address for later reuse

#Open Data Save; r3 set
li r4, 1 #Read Permissions
bl ISFS_Open
cmpwi r3, -106 #ISFS Return code for file not found
beq- mega_loop #If file not found, try next ASCII
cmpwi r3, 0
blt- err_isfsopen #Any other negative value is an error
mr r26, r3 #backup fd

#Allocate 32 Byte Aligned Buffer
li r3, 32
lis r4, 0x0002
ori r4, r4, 0x8000
mr r25, r4 #Backup Data Save size for later checks
bl memalign
cmpwi r3, 0
beq- err_memalign
mr r24, r3 #Backup Memalign Pointer

#Dump Data Save Contents to Memory Buffer
mr r3, r26 #fd
mr r4, r24 #Address Pointer to Dump to (memalign pointer)
mr r5, r25 #Data Save size
bl ISFS_Read
cmpw r3, r25
bne- err_isfsread

#Close File
mr r3, r26
bl ISFS_Close
cmpwi r3, 0
bne- err_isfsclose

#Pre License-Loop Config
addi r3, r24, 0x0008 #Points to the RKPD spot of the 1st license
lis r4, 0
ori r4, r4, 0x8CC0 #Each license is separated by 0x8CC0 bytes, this is the pointer increment amount after each loop iteration
li r5, 4 #License loop tracker, 4 for 4 licenses
lis r6, 0x524B #RKPD magic ascii
ori r6, r6, 0x5044

#License-Loop
#r3 + 0 (word)  = RKPD Ascii
#r3 + 0x30 (double-word) = Double-word Unlock bits
#r3 + 0xB0 (word) = VR+BR halfwords
#r3 + 0xC0 (word) = Wii Wheel Races
#r3 + 0x20F (word) = Cup stuff, scroll down to cup loop for more details
#Increment by 0x60 to move onto next Cup. Total of 32 cups.
license_loop:

#No point checking for an existing license since all new licenses will be made, just force make it all. Exiting licenses will not be corrupted by this, it's just rewriting over the same word value that was already present.
stw r6, 0 (r3)

#Apply VR+BR stuff
cmpwi r29, -1
beq- apply_wheel_stuff
stw r29, 0xB0 (r3)

#Apply Wii Wheel stuff
apply_wheel_stuff:
cmpwi r28, -1
beq- do_unlocks
stw r28, 0xC0 (r3)

#Unlock everything (Double-word = 0xFFFFFFFF031FFFFC)
do_unlocks:
li r0, -1
stw r0, 0x30 (r3)
lis r0, 0x031F
ori r0, r0, 0xFFFC
stw r0, 0x34 (r3)

#Set up the Cup loop
addi r7, r3, 0x01AF #0x20F - 0x60
li r0, 32
mtctr r0

#Apply Star Rank, set Trophy colors to Gold, set Completion Flag
#Cup word map
#Bits 0 & 1 = Trophy Cup color. 0x0 = Gold, 0x1 = Silver, 0x2 = Bronaze, 0x3 = No Cup
#Bits 2 thru 18 = Unknown
#Bits 19 thru 23 = Star Rank. 0x0 = 3 stars, 0x1 = 2, 0x2 = 1, 0x3 = A, 0x4 = B, 0x5 = C, 0x6 = D, 0x7 = E, 0x8 = F
#Bit 24 = Completion flag
#Bits 25 thru 31 = Unknown
cup_loop:
lwzu r0, 0x60 (r7) #Update address
rlwinm r0, r0, 0, 0x3FFFFFFF #Set first 2 bits of byte low, this ensures gold trophies regardless of Star Rank
ori r0, r0, 0x0080 #Flip completion flag high
rlwinm r0, r0, 0, 0xFFFFF0FF #Remove previous Star Rank
or r0, r0, r30 #Insert new Star Rank
stw r0, 0 (r7)
bdnz+ cup_loop

#Decrement License loop
subic. r5, r5, 1
add r3, r3, r4 #Add 0x8CC0 to r3 to land at next RKPD license spot
bne+ license_loop

#Generate new checksum
mr r3, r24 #Move backed up Memalign Pointer to r3
addi r4, r25, -4 #Subtract 0x4 from data save size to get byte size amount, 0x27FFC

cmpwi r4, 0
lis r7, crc_table@ha
li r8, -1
addi r7, r7, crc_table@l
beq- end_crc
rlwinm. r0,r4,30,2,31
mtctr r0
beq- move_ctr_r4
main_crc_loop:
lbz r9,0(r3)
rlwinm r6,r8,28,4,31
xor r0,r8,r9
rlwinm r5,r9,28,4,31
rlwinm r0,r0,2,26,29
lbz r9,1(r3)
lwzx r0,r7,r0
xor r6,r6,r0
xor r0,r6,r5
rlwinm r5,r9,28,4,31
rlwinm r0,r0,2,26,29
rlwinm r6,r6,28,4,31
lwzx r0,r7,r0
xor r8,r6,r0
xor r0,r8,r9
lbz r9,2(r3)
rlwinm r0,r0,2,26,29
rlwinm r6,r8,28,4,31
lwzx r0,r7,r0
xor r6,r6,r0
xor r0,r6,r5
rlwinm r5,r9,28,4,31
rlwinm r0,r0,2,26,29
rlwinm r6,r6,28,4,31
lwzx r0,r7,r0
xor r8,r6,r0
xor r0,r8,r9
lbz r9,3(r3)
rlwinm r0,r0,2,26,29
rlwinm r6,r8,28,4,31
lwzx r0,r7,r0
addi r3,r3,4
xor r6,r6,r0
xor r0,r6,r5
rlwinm r5,r9,28,4,31
rlwinm r0,r0,2,26,29
rlwinm r6,r6,28,4,31
lwzx r0,r7,r0
xor r8,r6,r0
xor r0,r8,r9
rlwinm r0,r0,2,26,29
rlwinm r6,r8,28,4,31
lwzx r0,r7,r0
xor r6,r6,r0
xor r0,r6,r5
rlwinm r0,r0,2,26,29
rlwinm r6,r6,28,4,31
lwzx r0,r7,r0
xor r8,r6,r0
bdnz+ main_crc_loop
andi. r4,r4,3
beq- end_crc
move_ctr_r4:
mtctr r4
small_crc_loop:
lbz r9,0(r3)
rlwinm r6,r8,28,4,31
addi r3,r3,1
xor r0,r8,r9
rlwinm r5,r9,28,4,31
rlwinm r0,r0,2,26,29
lwzx r0,r7,r0
xor r6,r6,r0
xor r0,r6,r5
rlwinm r0,r0,2,26,29
rlwinm r6,r6,28,4,31
lwzx r0,r7,r0
xor r8,r6,r0
bdnz+ small_crc_loop
end_crc:
not r3,r8

#Verify checksum
cmpwi r3, 0
beq- err_checksum

#Write new checksum
addis r4, r24, 0x0002
stw r3, 0x7FFC (r4)

#Reopen File
mr r3, r27 #File Path Address
li r4, 2 #Write Permissions
bl ISFS_Open
cmpwi r3, 0
blt- err_isfsopen
mr r26, r3 #Backup fd

#Write Updated Data Save Contents to NAND
mr r4, r24 #Memalign pointer
mr r5, r25 #Data Save size
bl ISFS_Write
cmpw r3, r25
bne- err_isfswrite

#Close File
mr r3, r26 #fd
bl ISFS_Close
cmpwi r3, 0
bne- err_isfsclose

#Repeat the Mega Loop
b mega_loop

#Success!
success:
#Reset Console
lis r3, .LC13@ha
la r3, .LC13@l (r3)
crxor 6, 6, 6
bl printf

#Success Message
lis r3, .LC10@ha
la r3,.LC10@l (r3)
b end_program #Successful exit back to HBC

#Error Handlers
err_isfsinit:
lis r3, .LC4@ha
la r3, .LC4@l (r3)
b end_program

err_isfsopen:
lis r3, .LC5@ha
la r3, .LC5@l (r3)
b end_program

err_memalign:
lis r3, .LC6@ha
la r3, .LC6@l (r3)
b end_program

err_isfsread:
lis r3, .LC7@ha
la r3, .LC7@l (r3)
b end_program

err_isfsclose:
lis r3, .LC8@ha
la r3, .LC8@l (r3)
b end_program

err_isfswrite:
lis r3, .LC9@ha
la r3, .LC9@l (r3)
b end_program

err_checksum:
lis r3, .LC17@ha
la r3, .LC17@l (r3)

#End Program
end_program:

#Printf current Message (will be an error or the success message)
crxor 6, 6, 6
bl printf
bl ISFS_Deinitialize

#Auto Exit
#Broadway does 60.75 ticks/nops per Microsecond
#We need 2,000,000 Microseconds to elapse aka 2 seconds
#Thus we need 121,500,000 (0x073DF160) ticks
lis r0, 0x039E #Divide by two, one tick for nop in loop, one for bdnz in loop
ori r0, r0, 0xF8B0
mtctr r0

wait_loop:
nop
bdnz+ wait_loop
b leave_app

#Exit HBC Call (for on purpose abort)
#Reset Console
exit_hbc:
lis r3, .LC13@ha
la r3, .LC13@l (r3)
crxor 6, 6, 6
bl printf

#Display Abort HBC Message
lis r3, .LC12@ha
la r3,.LC12@l (r3)
crxor 6, 6, 6
bl printf

#EXIT HBC (for success or failure)
leave_app:
li r3, 0
bl exit

#Video syncing for main menu
sync_video_and_loop:
bl VIDEO_WaitVSync
b idle

	.cfi_endproc
.LFE64:
	.size	main, .-main
	.section	".bss"
	.align 2
	.set	.LANCHOR0,. + 0
	.type	rmode, @object
	.size	rmode, 4
rmode:
	.zero	4
	.type	xfb, @object
	.size	xfb, 4
xfb:
	.zero	4
	.ident	"GCC: (devkitPPC release 40) 11.2.0"
