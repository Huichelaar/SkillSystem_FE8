TODO:
  - Client mentioned customizing statscreen, should be able to use MSS far more easily now that we're using buildfile.
  - Expand MESSAGES to help find stuff (parameters) if anything moves at later points in ROMhack.
    - Put pair-up window TSA in messages.
    - Put statboost struct instances in messages.
  - Test without any pair-up active.
  - Test heroes movement with and without PAU_showBothMapSprites.
  - Test status recover (whether naturally or by staff works with PAU_showBothMapSprites and without).
  - Test in arena or disable arena option when paired-up?
  - Do these tests with and without BGs. 0x202bd32 unset 0x2 and 0x4 for no BGs, set both for BGS.
  - Do these tests with paired-up unit not having an equipped weapon.
    - Test dual guard with enemy initiating (vantage+ for player phase?)
    - test pair-up with different weapons and corresponding anims.
    - test fog bump.
    - Test pair-up banim when healing.
    - Test pair-up dancing and being danced for.
    - Test pair-up banim when one anim, (fortify and latona staff).
    - Test dual strike triggering death quote. and non DS triggering death quote.
    - Test pair-up banim at 2-range (heal and combat).
    - Test pair-up banim at long-range (heal and combat).
    - Test Silencer and Triangle attack I guess.
    - Test with paired-up unit missing attack and with non-paired-up unit missing attack.
    - Test enemy proccing skill immediately after Dual Strike round.
    - Test Dual Strike round being the last round.
  - Delete unnecessary anim stuff, like bishop. Unset str/mag split, don't give eirika or ephraim staff ranks.
  - grepWin all temp, TODO and FIXME in PairUp directory to make sure you're not forgetting anything.

Notes:
  - Client mentioned not wanting str/mag split. Mention this has been set in config file.
  - Replaced these skills:
    - Dragon Fang has been replaced with offensive pair up/Dual Strike skill.
    - Great Shield has been replaced with defensive pair up/Dual Guard skill.
  - Mention last four bytes in banim name string need to be left alone.
  - Mention that animDistX & animDistY should be even numbers or battle anims might misalign a little when swapping.
  - If pair-up unit has weapon equipped, priority is given to item-specific banims. If pair-up unit is unarmed, priority is given to whatever armed anim is first in the list. If you put handaxe anims before 1-range axe anims, you won't need magic axe anims.
    
Credits TODO:
  - Sme for her Refuge patch.