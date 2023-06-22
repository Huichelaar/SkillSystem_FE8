TODO:
  - Client mentioned customizing statscreen, should be able to use MSS far more easily now that we're using buildfile.
  - Expand MESSAGES to help find stuff (parameters) if anything moves at later points in ROMhack.
    - Put pair-up window TSA in messages.
    - Put statboost struct instances in messages.
  - Test without any pair-up active.
  - Test in arena or disable arena option when paired-up?
  - Do these tests with and without BGs. 0x202bd32 unset 0x2 and 0x4 for no BGs, set both for BGS.
  - Do these tests with paired-up unit not having an equipped weapon.
    - Test dual guard with enemy initiating (vantage+ for player phase?)
    - test pair-up with different weapons and corresponding anims.
    - Test pair-up banim when healing.
    - Test pair-up banim when one anim, (fortify staff).
    - Test pair-up being danced for.
    - Test dual strike triggering death quote. and non DS triggering death quote.
    - Test pair-up banim at 2-range (heal and combat).
    - Test pair-up banim at long-range (heal and combat).
    - Test Silencer and Triangle attack I guess.
    - Test with paired-up unit missing attack and with non-paired-up unit missing attack.
    - Test when DualGuard is triggered in the first round.
    - Test enemy proccing skill immediately after Dual Strike round.
    - Test Dual Strike round being the last round.
  - grepWin all TODO and FIXME in PairUp directory to make sure you're not forgetting anything.
  
  - Level up uses BGPalette 0 (used for gauge icons). Undraw icons during level-up?
  

Notes:
  - Client mentioned not wanting str/mag split. Mention this has been set in config file.
  - Replaced these skills:
    - Dragon Fang has been replaced with offensive pair up/Dual Strike skill.
    - Great Shield has been replaced with defensive pair up/Dual Guard skill.
  - Mention last four bytes in banim name string need to be left alone.
  - Mention that animDistX & animDistY should be even numbers or battle anims might misalign a little when swapping.
  - If pair-up unit has weapon equipped, priority is given to item-specific banims. If pair-up unit is unarmed, priority is given to whatever armed anim is first in the list. If you put handaxe anims before 1-range axe anims, you won't need magic axe anims.
  - Mention it's best for C06 and C0D to not be far apart in Neoma and Kylorde battle animations, depending on length of swaptime.
    
Credits TODO:
  - Sme for her Refuge patch.