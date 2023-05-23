TODO:
  - Expand MESSAGES to help find stuff (parameters) if anything moves at later points in ROMhack.
    - Put pair-up window TSA in messages.
    - Put statboost struct instances in messages.
  - Make procDragonFang and procGreatShield always fail. Should work inline.

Notes:

  - Broke/changed these skills:
    - Dragon Fang has been replaced with offensive pair up/Dual Strike skill.
    - Great Shield has been replaced with defensive pair up/Dual Guard skill.
    - Life and Death has been broken. Its skill icon is used for shield pair-up gauge icons. Certain stats aren't affected by the presence of LaD anymore as I needed its statgetter slots for the pair-up bonuses.
    - Fury, similar to LaD. Needed for sword pair-up gauge icons.
    - More...

  - BattleProcCalcLoop at 0xB82DD5.
  - Proc_DragonFang address at 0xB82E40. Routine at 0xB73FC8.

When implementing patch to FEBuilderGBA project:
  - Steps to take before inserting EA script (patch). These should be in same order as defs in PairUp.event:
    - Update FREESPACE to correct address.
    - Make sure occupied commandslots are still redundant, 0xB82438.
    - Make sure gGameSaveChunks and gSuspendSaveChunks are still in the same place, 0xB83E34 and 0xB83EF0 respectively.

    - If changing textIDs, make sure to change the values in "text/text.txt"!

  - Steps to take after inserting EA script (patch):
    - Create a " Pair-up" command text.
    - Create a " Pair-up" command help text.
    - Create a " Drop" command help text.
    - Repoint action menu commands. EA sends messages regarding where commands' usability and effect routines are stored. Two commands: " Pair-up" and " Drop". " Drop" is different from " Rescue"'s equivalent, as it unsets pair-up flag and resets pair-up gauge as well.
    
Credits TODO:
  - Sme for her Refuge patch.