# Pair-Up
This directory contains most of the stuff to do with the implementation of Pair-Up. Granted, there's a lot of systems outside this directory that needed to change as well to properly get Pair-Up to work, so not everything is here.

The main important file to keep an eye on is [PairUp.event](PairUp.event). There are a number of parameters in here that you might wish to change. Details on what these parameters do and affect can also be found in the same file. This file also contains MESSAGEs which will display where the values of these parameters are stored in the ROM once you build it. You can comment these out if you don't need the info/it's too much clutter.

## Implementation/Features/Limitations
A unit with the Dual Strike skill, and another unit with the Dual Guard skill can pair-up, similar to FE Fates system of pair-up. This pairup features a backup unit, a mostly passive unit like a rescuee, and a main unit, the one that mostly receives and deals damage, etc. Instead of a shield gauge, the two units now have a pair-up gauge which when filled up triggers Dual Guard (the next incoming attack is blocked) or Dual Strike (the next outgoing attack is followed-up by another attack with the same damage, and a guaranteed hit), depending on whether the backup unit (which I also refer to as the backupUnit in code comments) has the Dual Strike or the Dual Guard skill. The idea is to combine both FE Fates' Pair-Up and Tag Team into one system.

Only one unit can have the Dual Strike skill, only one unit can have the Dual Guard skill and these should not be the same unit. As there is only one location in RAM used to keep track of the pair-up gauge, it's not possible to have multiple paired-up units. PairUp is not made with enemy AI in mind, so only give the two skills to ally units.

Paired-up units neither receive nor provide support bonuses to one another or any other units. Instead they get certain boosts to their stats as set by the `PAU_offStatBoost` and `PAU_defStatBoost` tables in [PairUp.event](PairUp.event). If the backup unit has Dual Strike, they'll provide the boosts in `PAU_offStatBoost`, `PAU_defStatBoost` for Dual Guard. The main unit's movement will be set to the minimum of the two units' movement, as long as they're paired up.

Pair-up is implemented as a special form of rescue, without the stat-lowering effect that comes with rescue. This means that a paired-up unit can not rescue other units.

A paired-up unit can switch which unit is backup and which unit is main at any time, as long as the terrain the main unit stands on currently is also accessible by the backup unit. This action is free, so you can still perform an attack or some such after switching.

### Battle animations

In order to get both the main unit and the backup unit's battle animation sprite to show, I had to use a custom program, [AAA](../../../../../banims/anims/AAA.exe) (also has its [own repository](https://github.com/Huichelaar/AAA) on github),  to prepare battle animations. Any battle animation that can end up being used by a unit that can pair up, needs to be assembled through AAA to properly display in-game during pair-up.

You need to add the following options to the start of the script to ensure the animation displays correctly when paired-up:
```
@ UNCOMPFRAMEDATA
@ UNCOMPOAMDATA
@ HALFSIZESHEETS
```
Then, you can drag'n'drop the script's `.txt` file to `AAA.bat` which will run AAA on the script and produce a `<scriptname>Installer.event` file which you can `#include` in [AnimInstaller.event](../../../../../banims/anims/AnimInstaller.event). You'll also want to change the default value in the `AnimTableEntry` macro in the `<scriptname>Installer.event` file to the slot you want to replace.

The resulting entry in the battle animation table will have some bits set at +0x8. These might be read as a character of the name of the battle animation, but they're actually there so the game can identify how to treat these animations, so don't change their values.

### For use with FEBuilderGBA
Now, if you're using buildfiles everything so far should cover most needs. If you wish to continue working on the built ROM in [FEBuilderGBA](https://github.com/FEBuilderGBA/FEBuilderGBA), there's a few more things to keep in mind:
-  I'll point to the MESSAGEs in [PairUp.event](PairUp.event) again. Keep note of where these parameters are stored in ROM, so that if you wish to change them after the ROM's been built, you can find them easily.
- The pairup battle animations will likely not display correctly in FEBuilderGBA's preview, as their framedata and oamdata is not compressed. I had to leave this data uncompressed for technical reasons, but it does mean you can't preview the animations in FEBuilderGBA. I'm not in charge of the tool though, so this information may be outdated when you're reading this.
- Due to changes I made to [activationanims.s](../../../Internals/activationanims.s), FEBuilderGBA may not be able to find skills, preventing you from changing which characters/classes get what skills. This information may be outdated when you're reading this.
- Note that fixing bugs is a lot harder when not having the option to re-build. A project of this scale is bound to have a few bugs that I've missed. I'd appreciate it if you reconsider working with buildfiles instead, and using this as your base buildfile, instead of as your base ROM.

## Credits
The usual [SkillSys credits](../../../../../CREDITS.md) apply of course. Also thanks to Sme for her [Refuge patch](https://drive.google.com/file/d/14g97lHRbISstcD4OxbfKXguc3pMg_zKh/view), which I referenced for the PairUp action.