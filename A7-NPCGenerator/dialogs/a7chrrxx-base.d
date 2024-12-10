BEGIN ~%resurrect_dlg%~
// %resurrect_dlg%: DLG resource name
// %script_name%: Script name of NPC
// %npc_name%: Display name of the NPC
// %npc_level%: Level of the NPC
// %resurrect_itm%: Resurrection item resref
// %resurrect_price%: Gold amount to pay
// %state_price%: Evaluated string for dialog state to pay level-dependent price
// %reply_price_pay%: Evaluated string for dialog reply to pay level-dependent price

IF ~General("%script_name%",UNDEAD)~ undead.1
  SAY @1310 /* Undead companions cannot be resurrected. */
  IF ~~ DO ~DestroyItem("%resurrect_itm%")~ EXIT
END

IF ~!Dead("%script_name%")~ notdead.1
  SAY @1311 /* <npc_name> doesn't appear to be dead. */
  IF ~~ DO ~DestroyItem("%resurrect_itm%")~ EXIT
END

IF ~OR(2) !InMyArea("%script_name%") !Range("%script_name%",30)~ notrange.1
  SAY @1316 /* You are too far away from %npc_name%'s resting place. */
  IF ~~ EXIT
END
