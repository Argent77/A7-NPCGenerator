// Resurrection price for specified level
IF ~Dead("%script_name%") Level("%script_name%",%npc_level%)~ dead.%npc_level%
  SAY ~%state_price%~ /* <npc_name> can be resurrected for <resurrect_price> gold. */
  + ~OR(2) PartyGold(%resurrect_price%) PartyGoldGT(%resurrect_price%)~ + ~%reply_price_pay%~ /* Pay <resurrect_price> gold to resurrect <npc_name>. */
    DO ~DestroyItem("%resurrect_itm%") TakePartyGold(%resurrect_price%) MoveGlobalObject("%script_name%",Myself) ReallyForceSpellDeadRES("a7chrres","%script_name%")~ EXIT
  + ~OR(2) PartyGold(%resurrect_price%) PartyGoldGT(%resurrect_price%)~ + @1314 /* Don't resurrect <npc_name> for now. */ EXIT
  + ~PartyGoldLT(%resurrect_price%)~ + @1315 /* You don't have enough gold to resurrect <npc_name>. */ EXIT
END
