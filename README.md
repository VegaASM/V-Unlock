# V-Unlock
Vega's MKW Unlocker HBC app.

Version: 0.5

Author: Vega

Release Date: Mar 4, 2022

How to Use:
Move the V-Unlock folder into the apps folder of your SD/USB device. Launch the app. Follow the on-screen instructions. If you instead want to compile from Source, read the compilation instructions below.

What the App does:
This app will allow you to unlock everything for every license for all your MKW data saves. You have the ability to choose what Star Rank you want, whether or not you want 9999 VR+BR, and whether or not you want 100% Wii Wheel Stat.

About Possible Errors:
If any error occurs, the app will display such error on the screen.

Possible/Untested Issues:
Possibly many, lol. This app is still very 'beta'. Please report any bugs to www.MarioKartWii.com.

How to Compile from Source:
Requirements: DevkitPPC installed on your computer. Basic knowledge of using DevkitPPC's binutils.

Compilation example (Linux):
1: cd /path/to/your/binutils

2: ./powerpc-eabi-as -mregnames -mbroadway /path/to/Source-Master/build/IOSPatch.s -o /path/to/Source-Master/build/IOSPatch.o

3: ./powerpc-eabi-as -mregnames -mbroadway /path/to/Source-Master/build/main.s -o /path/to/Source-Master/build/main.o

4: cd /path/to/Source-Master

5: make

6: Replace the boot.dol that's in the V-Unlock folder with the new Source-Master.dol that was created from Step 6. Rename Source-Master.dol to boot.dol.

History:
v0.5 (Proper Manners) - Mar 4, 2022: The Star Rank editing mechanism (in regards to cups, trophies, rank etc) was never done 100% 'properly' in past versions. A halfword write (at various specific spots) was used which wrote over unrelated bits. Now only the related bits are flipped to their correct state to ensure no other aspects of the game are effected. Added extra option for VR+BR to reset it back to 5000. Optimized a majority of the source to be more 'proper' and easier to read. Binary package has been recompiled using the latest version of DevkitPPC at the time (Release 40; 11.2.0).

v0.4.1 (Lol typo) - Jun 10, 2020: Fixed some typos.

v0.4 (For the Sources) - Apr 22, 2020: Fixed a bug where star rank option would be modified unwillingly if the user backs away from the Wii Wheel Menu Screen. Added a large printf-made V-Unlock graphic at the Main Screen. Source is now included with the binary download.

v0.3 (Auto Mii) - Apr 1, 2020: Added extra on screen options for whether or not to apply VR+BR, and whether or not to apply 100% Wii Wheel Stat. App auto exits (with brief pause) after success message has been displayed. Upgraded icon.png. Classic controller support added.

v0.2 (Noob Alert) - Mar 23, 2020: App unlocks all data saves with game ID of RMCX. X = Any capital letter. GCN controller support added.

v0.1 (The Beginning) - Mar 21, 2020: App compiles and can run. Only works for RMCP data save.
