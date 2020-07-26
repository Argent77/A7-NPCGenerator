// *** NPC dialog ***
BEGIN ~A7CHRNPC~

// NPC introduction
IF ~NumTimesTalkedTo(0) Class(Myself,MONK) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ Intro.1.Monk
  SAY @1013 /* Hello, <SIRMAAM>! I'm waiting for a chance to learn more about the world, and thus about myself. Do you need another companion? */

  + ~OR(2) !Global("A7CHR-SKIPCHECK","LOCALS",0) !Global("A7CHR-CHECKED","LOCALS",0)~ + @1002 /* Yes, please join the party. */
    DO ~SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
        SetGlobal("A7CHR-CHECKED","LOCALS",1)
        ChangeAIScript("DPLAYER3",DEFAULT)
        JoinParty()~ EXIT
  + ~OR(2) !Global("A7CHR-SKIPCHECK","LOCALS",0) !Global("A7CHR-CHECKED","LOCALS",0)~ + @1014 /* Sure, you can tag along for a while. */
    DO ~ChangeAIScript("DPLAYER3",DEFAULT)
        ChangeEnemyAlly(Myself,FAMILIAR)
        AddFamiliar()
        ApplySpellRES("a7chrxv",Myself)
        SetGlobal("A7CHR-FOLLOWER","LOCALS",1)
        SetGlobal("A7CHR-CHECKED","LOCALS",1)~ EXIT

  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GOOD) ReputationGT(Player1,8) ReputationLT(Player1,13) CheckStatGT(Player1,13,CHR)~ + @1002 /* Yes, please join the party. */ + Join.Good.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GOOD) ReputationGT(Player1,8) ReputationLT(Player1,13) CheckStatGT(Player1,13,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Follow.Good.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GOOD) ReputationGT(Player1,12)~ + @1002 /* Yes, please join the party. */ + Join.Good.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GOOD) ReputationGT(Player1,12)~ + @1014 /* Sure, you can tag along for a while. */ + Follow.Good.1

  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GOOD) ReputationLT(Player1,9)~ + @1002 /* Yes, please join the party. */ + Reject.Good.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GOOD) ReputationLT(Player1,9)~ + @1014 /* Sure, you can tag along for a while. */ + Reject.Good.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GOOD) ReputationGT(Player1,8) ReputationLT(Player1,13) CheckStatLT(Player1,14,CHR)~ + @1002 /* Yes, please join the party. */ + Reject.Good.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GOOD) ReputationGT(Player1,8) ReputationLT(Player1,13) CheckStatLT(Player1,14,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Reject.Good.1

  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GENEUTRAL) ReputationLT(Player1,5) CheckStatGT(Player1,13,CHR)~ + @1002 /* Yes, please join the party. */ + Join.Neutral.3
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GENEUTRAL) ReputationLT(Player1,5) CheckStatGT(Player1,13,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Follow.Neutral.3
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GENEUTRAL) ReputationGT(Player1,4) ReputationLT(Player1,17) CheckStatLT(Player1,14,CHR)~ + @1002 /* Yes, please join the party. */ + Join.Neutral.2
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GENEUTRAL) ReputationGT(Player1,4) ReputationLT(Player1,17) CheckStatLT(Player1,14,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Follow.Neutral.2
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GENEUTRAL) ReputationGT(Player1,4) ReputationLT(Player1,17) CheckStatGT(Player1,13,CHR)~ + @1002 /* Yes, please join the party. */ + Join.Neutral.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GENEUTRAL) ReputationGT(Player1,4) ReputationLT(Player1,17) CheckStatGT(Player1,13,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Follow.Neutral.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GENEUTRAL) ReputationGT(Player1,16) CheckStatGT(Player1,13,CHR)~ + @1002 /* Yes, please join the party. */ + Join.Neutral.2
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GENEUTRAL) ReputationGT(Player1,16) CheckStatGT(Player1,13,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Follow.Neutral.2

  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GENEUTRAL) ReputationLT(Player1,5) CheckStatLT(Player1,14,CHR)~ + @1002 /* Yes, please join the party. */ + Reject.Neutral.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GENEUTRAL) ReputationLT(Player1,5) CheckStatLT(Player1,14,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Reject.Neutral.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GENEUTRAL) ReputationGT(Player1,16) CheckStatLT(Player1,14,CHR)~ + @1002 /* Yes, please join the party. */ + Reject.Neutral.2
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_GENEUTRAL) ReputationGT(Player1,16) CheckStatLT(Player1,14,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Reject.Neutral.2

  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationLT(Player1,9) CheckStatLT(Player1,14,CHR)~ + @1002 /* Yes, please join the party. */ + Join.Evil.2
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationLT(Player1,9) CheckStatLT(Player1,14,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Follow.Evil.2
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationLT(Player1,9) CheckStatGT(Player1,13,CHR)~ + @1002 /* Yes, please join the party. */ + Join.Evil.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationLT(Player1,9) CheckStatGT(Player1,13,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Follow.Evil.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationGT(Player1,8) ReputationLT(Player1,13) CheckStatLT(Player1,14,CHR)~ + @1002 /* Yes, please join the party. */ + Join.Evil.3
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationGT(Player1,8) ReputationLT(Player1,13) CheckStatLT(Player1,14,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Follow.Evil.3
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationGT(Player1,8) ReputationLT(Player1,13) CheckStatGT(Player1,13,CHR)~ + @1002 /* Yes, please join the party. */ + Join.Evil.2
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationGT(Player1,8) ReputationLT(Player1,13) CheckStatGT(Player1,13,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Follow.Evil.2
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationGT(Player1,12) ReputationLT(Player1,17) CheckStatGT(Player1,13,CHR)~ + @1002 /* Yes, please join the party. */ + Join.Evil.4
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationGT(Player1,12) ReputationLT(Player1,17) CheckStatGT(Player1,13,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Follow.Evil.4

  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationGT(Player1,12) ReputationLT(Player1,17) CheckStatLT(Player1,14,CHR)~ + @1002 /* Yes, please join the party. */ + Reject.Evil.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationGT(Player1,12) ReputationLT(Player1,17) CheckStatLT(Player1,14,CHR)~ + @1014 /* Sure, you can tag along for a while. */ + Reject.Evil.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationGT(Player1,16)~ + @1002 /* Yes, please join the party. */ + Reject.Evil.1
  + ~Global("A7CHR-SKIPCHECK","LOCALS",0) Global("A7CHR-CHECKED","LOCALS",0) Alignment(Myself,MASK_EVIL) ReputationGT(Player1,16)~ + @1014 /* Sure, you can tag along for a while. */ + Reject.Evil.1

  ++ @1003 /* No. */ EXIT
END

IF ~NumTimesTalkedTo(0) Class(Myself,BARD_ALL) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ Intro.1.Bard
  SAY @1008 /* Hello, <SIRMAAM>! I'm waiting for a chance to entertain everyone in the world with my songs and poems. Do you need another companion? */
  COPY_TRANS SAFE ~A7CHRNPC~ Intro.1.Monk
END

IF ~NumTimesTalkedTo(0) Class(Myself,PALADIN_ALL) !Alignment(Myself,MASK_EVIL) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ Intro.1.Paladin
  SAY @1009 /* Hello, <SIRMAAM>! I'm waiting for a chance to smite evil in the name of my god. Do you need another companion? */
  COPY_TRANS SAFE ~A7CHRNPC~ Intro.1.Monk
END

IF ~NumTimesTalkedTo(0) Class(Myself,PALADIN_ALL) Alignment(Myself,MASK_EVIL) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ Intro.1.AntiPaladin
  SAY @1010 /* Hello, <SIRMAAM>! I'm waiting for a chance to wreak havoc in the world for the glory of my patron. Do you need another companion? */
  COPY_TRANS SAFE ~A7CHRNPC~ Intro.1.Monk
END

IF ~NumTimesTalkedTo(0) Class(Myself,RANGER_ALL) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ Intro.1.Ranger
  SAY @1012 /* Hello, <SIRMAAM>! I'm waiting for a chance to hunt down monsters that threaten nature and people. Do you need another companion? */
  COPY_TRANS SAFE ~A7CHRNPC~ Intro.1.Monk
END

IF ~NumTimesTalkedTo(0) Class(Myself,MAGE_ALL) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ Intro.1.Mage
  SAY @1005 /* Hello, <SIRMAAM>! I'm waiting for a chance to discover lost knowledge of the arcane arts. Do you need another companion? */
  COPY_TRANS SAFE ~A7CHRNPC~ Intro.1.Monk
END

IF ~NumTimesTalkedTo(0) Class(Myself,CLERIC_ALL) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ Intro.1.Cleric
  SAY @1006 /* Hello, <SIRMAAM>! I'm waiting for a chance to preach the words and deeds of my deity all over the realms. Do you need another companion? */
  COPY_TRANS SAFE ~A7CHRNPC~ Intro.1.Monk
END

IF ~NumTimesTalkedTo(0) Class(Myself,THIEF_ALL) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ Intro.1.Thief
  SAY @1007 /* Hello, <SIRMAAM>! I'm waiting for a chance to find all the hidden treasures of the world. Do you need another companion? */
  COPY_TRANS SAFE ~A7CHRNPC~ Intro.1.Monk
END

IF ~NumTimesTalkedTo(0) Class(Myself,DRUID_ALL) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ Intro.1.Druid
  SAY @1011 /* Hello, <SIRMAAM>! I'm waiting for a chance to help mother nature in all of Faerûn. Do you need another companion? */
  COPY_TRANS SAFE ~A7CHRNPC~ Intro.1.Monk
END

IF ~NumTimesTalkedTo(0) Class(Myself,FIGHTER_ALL) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ Intro.1.Fighter
  SAY @1004 /* Hello, <SIRMAAM>! I'm waiting for a chance to prove myself in battle. Do you need another companion? */
  COPY_TRANS SAFE ~A7CHRNPC~ Intro.1.Monk
END

IF ~NumTimesTalkedTo(0) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ Intro.1.Generic
  SAY @1000 /* Hello, <SIRMAAM>! I'm waiting for a chance to go out adventuring. Do you need another companion? */
  COPY_TRANS SAFE ~A7CHRNPC~ Intro.1.Monk
END


// NPC request for joining
IF ~!NumTimesTalkedTo(0) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0) Global("A7CHR-KICKEDOUT","LOCALS",0)~ Intro.2
  SAY @1001 /* Greetings again! Have you changed your mind? Do you need another companion? */
  COPY_TRANS SAFE ~A7CHRNPC~ Intro.1.Monk
END


// *** Initial join/follow request, continued ***
// Good-aligned NPC: join for free
IF ~~ Join.Good.1
  SAY @1026 /* I'm happy to do so. */
  IF ~~ DO ~SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)
            ChangeAIScript("DPLAYER3",DEFAULT)
            JoinParty()~ EXIT
END

// Good-aligned NPC: follow for free
IF ~~ Follow.Good.1
  SAY @1027 /* I'll follow along. */
  IF ~~ DO ~ChangeAIScript("DPLAYER3",DEFAULT)
            ChangeEnemyAlly(Myself,FAMILIAR)
            AddFamiliar()
            ApplySpellRES("a7chrxv",Myself)
            SetGlobal("A7CHR-FOLLOWER","LOCALS",1)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)~ EXIT
END

// Good-aligned NPC: reject
IF ~~ Reject.Good.1
  SAY @1028 /* I don't think my goals will align with yours. Maybe next time. */
  IF ~~ EXIT
END

// Neutral-aligned NPC: join for free
IF ~~ Join.Neutral.1
  SAY @1026 /* I'm happy to do so. */
  IF ~~ DO ~SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)
            ChangeAIScript("DPLAYER3",DEFAULT)
            JoinParty()~ EXIT
END

// Neutral-aligned NPC: follow for free
IF ~~ Follow.Neutral.1
  SAY @1027 /* I'll follow along. */
  IF ~~ DO ~ChangeAIScript("DPLAYER3",DEFAULT)
            ChangeEnemyAlly(Myself,FAMILIAR)
            AddFamiliar()
            ApplySpellRES("a7chrxv",Myself)
            SetGlobal("A7CHR-FOLLOWER","LOCALS",1)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)~ EXIT
END

// Neutral-aligned NPC: join for 250 gold
IF ~~ Join.Neutral.2
  SAY @1029 /* I'd be happy to do so for a fee. How about 250 gold? */
  + ~PartyGoldGT(249)~ + @1039 /* Alright, I'll pay your fee. */ DO ~TakePartyGold(250) DestroyGold(250)~ + Join.Neutral.2.Accept
  + ~PartyGoldLT(250)~ + @1040 /* I don't have enough gold. Maybe later. */ + Join.Neutral.2.Reject
  ++ @1041 /* I don't want to pay your fee. Goodbye. */ EXIT
END

IF ~~ Join.Neutral.2.Accept
  SAY @1042 /* Excellent! Let us depart then. */
  IF ~~ DO ~SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)
            ChangeAIScript("DPLAYER3",DEFAULT)
            JoinParty()~ EXIT
END

IF ~~ Join.Neutral.2.Reject
  SAY @1044 /* Alright, until then. */
  IF ~~ EXIT
END

// Neutral-aligned NPC: follow for 250 gold
IF ~~ Follow.Neutral.2
  SAY @1030 /* I'd be willing to do so for a fee. How about 250 gold? */
  + ~PartyGoldGT(249)~ + @1039 /* Alright, I'll pay your fee. */ DO ~TakePartyGold(250) DestroyGold(250)~ + Follow.Neutral.2.Accept
  + ~PartyGoldLT(250)~ + @1040 /* I don't have enough gold. Maybe later. */ + Follow.Neutral.2.Reject
  ++ @1041 /* I don't want to pay your fee. Goodbye. */ EXIT
END

IF ~~ Follow.Neutral.2.Accept
  SAY @1043 /* Thanks a lot! I'll follow along. */
  IF ~~ DO ~ChangeAIScript("DPLAYER3",DEFAULT)
            ChangeEnemyAlly(Myself,FAMILIAR)
            AddFamiliar()
            ApplySpellRES("a7chrxv",Myself)
            SetGlobal("A7CHR-FOLLOWER","LOCALS",1)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)~ EXIT
END

IF ~~ Follow.Neutral.2.Reject
  SAY @1044 /* Alright, until then. */
  IF ~~ EXIT
END

// Neutral-aligned NPC: join for 500 gold
IF ~~ Join.Neutral.3
  SAY @1031 /* I'd be happy to do so for a fee. How about 500 gold? */
  + ~PartyGoldGT(499)~ + @1039 /* Alright, I'll pay your fee. */ DO ~TakePartyGold(500) DestroyGold(500)~ + Join.Neutral.3.Accept
  + ~PartyGoldLT(500)~ + @1040 /* I don't have enough gold. Maybe later. */ + Join.Neutral.3.Reject
  ++ @1041 /* I don't want to pay your fee. Goodbye. */ EXIT
END

IF ~~ Join.Neutral.3.Accept
  SAY @1042 /* Excellent! Let us depart then. */
  IF ~~ DO ~SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)
            ChangeAIScript("DPLAYER3",DEFAULT)
            JoinParty()~ EXIT
END

IF ~~ Join.Neutral.3.Reject
  SAY @1044 /* Alright, until then. */
  IF ~~ EXIT
END

// Neutral-aligned NPC: follow for 500 gold
IF ~~ Follow.Neutral.3
  SAY @1032 /* I'd be willing to do so for a fee. How about 500 gold? */
  + ~PartyGoldGT(499)~ + @1039 /* Alright, I'll pay your fee. */ DO ~TakePartyGold(500) DestroyGold(500)~ + Follow.Neutral.3.Accept
  + ~PartyGoldLT(500)~ + @1040 /* I don't have enough gold. Maybe later. */ + Follow.Neutral.3.Reject
  ++ @1041 /* I don't want to pay your fee. Goodbye. */ EXIT
END

IF ~~ Follow.Neutral.3.Accept
  SAY @1043 /* Thanks a lot! I'll follow along. */
  IF ~~ DO ~ChangeAIScript("DPLAYER3",DEFAULT)
            ChangeEnemyAlly(Myself,FAMILIAR)
            AddFamiliar()
            ApplySpellRES("a7chrxv",Myself)
            SetGlobal("A7CHR-FOLLOWER","LOCALS",1)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)~ EXIT
END

IF ~~ Follow.Neutral.3.Reject
  SAY @1044 /* Alright, until then. */
  IF ~~ EXIT
END

// Neutral-aligned NPC: reject (low rep)
IF ~~ Reject.Neutral.1
  SAY @1028 /* I don't think my goals will align with yours. Maybe next time. */
  IF ~~ EXIT
END

// Neutral-aligned NPC: reject (high rep)
IF ~~ Reject.Neutral.2
  SAY @1028 /* I don't think my goals will align with yours. Maybe next time. */
  IF ~~ EXIT
END

// Evil-aligned NPC: join for free
IF ~~ Join.Evil.1
  SAY @1026 /* I'm happy to do so. */
  IF ~~ DO ~SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)
            ChangeAIScript("DPLAYER3",DEFAULT)
            JoinParty()~ EXIT
END

// Evil-aligned NPC: follow for free
IF ~~ Follow.Evil.1
  SAY @1027 /* I'll follow along. */
  IF ~~ DO ~ChangeAIScript("DPLAYER3",DEFAULT)
            ChangeEnemyAlly(Myself,FAMILIAR)
            AddFamiliar()
            ApplySpellRES("a7chrxv",Myself)
            SetGlobal("A7CHR-FOLLOWER","LOCALS",1)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)~ EXIT
END

// Evil-aligned NPC: join for 250 gold
IF ~~ Join.Evil.2
  SAY @1033 /* I could be persuaded to join for a fee. How about 250 gold? */
  + ~PartyGoldGT(249)~ + @1039 /* Alright, I'll pay your fee. */ DO ~TakePartyGold(250) DestroyGold(250)~ + Join.Evil.2.Accept
  + ~PartyGoldLT(250)~ + @1040 /* I don't have enough gold. Maybe later. */ + Join.Evil.2.Reject
  ++ @1041 /* I don't want to pay your fee. Goodbye. */ EXIT
END

IF ~~ Join.Evil.2.Accept
  SAY @1042 /* Excellent! Let us depart then. */
  IF ~~ DO ~SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)
            ChangeAIScript("DPLAYER3",DEFAULT)
            JoinParty()~ EXIT
END

IF ~~ Join.Evil.2.Reject
  SAY @1044 /* Alright, until then. */
  IF ~~ EXIT
END

// Evil-aligned NPC: follow for 250 gold
IF ~~ Follow.Evil.2
  SAY @1034 /* I could be persuaded to tag along for a fee. How about 250 gold? */
  + ~PartyGoldGT(249)~ + @1039 /* Alright, I'll pay your fee. */ DO ~TakePartyGold(250) DestroyGold(250)~ + Follow.Evil.2.Accept
  + ~PartyGoldLT(250)~ + @1040 /* I don't have enough gold. Maybe later. */ + Follow.Evil.2.Reject
  ++ @1041 /* I don't want to pay your fee. Goodbye. */ EXIT
END

IF ~~ Follow.Evil.2.Accept
  SAY @1043 /* Thanks a lot! I'll follow along. */
  IF ~~ DO ~ChangeAIScript("DPLAYER3",DEFAULT)
            ChangeEnemyAlly(Myself,FAMILIAR)
            AddFamiliar()
            ApplySpellRES("a7chrxv",Myself)
            SetGlobal("A7CHR-FOLLOWER","LOCALS",1)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)~ EXIT
END

IF ~~ Follow.Evil.2.Reject
  SAY @1044 /* Alright, until then. */
  IF ~~ EXIT
END

// Evil-aligned NPC: join for 500 gold
IF ~~ Join.Evil.3
  SAY @1035 /* I could be persuaded to join for a fee. How about 500 gold? */
  + ~PartyGoldGT(499)~ + @1039 /* Alright, I'll pay your fee. */ DO ~TakePartyGold(500) DestroyGold(500)~ + Join.Evil.3.Accept
  + ~PartyGoldLT(500)~ + @1040 /* I don't have enough gold. Maybe later. */ + Join.Evil.3.Reject
  ++ @1041 /* I don't want to pay your fee. Goodbye. */ EXIT
END

IF ~~ Join.Evil.3.Accept
  SAY @1042 /* Excellent! Let us depart then. */
  IF ~~ DO ~SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)
            ChangeAIScript("DPLAYER3",DEFAULT)
            JoinParty()~ EXIT
END

IF ~~ Join.Evil.3.Reject
  SAY @1044 /* Alright, until then. */
  IF ~~ EXIT
END

// Evil-aligned NPC: follow for 500 gold
IF ~~ Follow.Evil.3
  SAY @1036 /* I could be persuaded to tag along for a fee. How about 500 gold? */
  + ~PartyGoldGT(499)~ + @1039 /* Alright, I'll pay your fee. */ DO ~TakePartyGold(500) DestroyGold(500)~ + Follow.Evil.3.Accept
  + ~PartyGoldLT(500)~ + @1040 /* I don't have enough gold. Maybe later. */ + Follow.Evil.3.Reject
  ++ @1041 /* I don't want to pay your fee. Goodbye. */ EXIT
END

IF ~~ Follow.Evil.3.Accept
  SAY @1043 /* Thanks a lot! I'll follow along. */
  IF ~~ DO ~ChangeAIScript("DPLAYER3",DEFAULT)
            ChangeEnemyAlly(Myself,FAMILIAR)
            AddFamiliar()
            ApplySpellRES("a7chrxv",Myself)
            SetGlobal("A7CHR-FOLLOWER","LOCALS",1)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)~ EXIT
END

IF ~~ Follow.Evil.3.Reject
  SAY @1044 /* Alright, until then. */
  IF ~~ EXIT
END

// Evil-aligned NPC: join for 1000 gold
IF ~~ Join.Evil.4
  SAY @1037 /* I could be persuaded to join for a fee. How about 1000 gold? */
  + ~PartyGoldGT(999)~ + @1039 /* Alright, I'll pay your fee. */ DO ~TakePartyGold(1000) DestroyGold(1000)~ + Join.Evil.4.Accept
  + ~PartyGoldLT(1000)~ + @1040 /* I don't have enough gold. Maybe later. */ + Join.Evil.4.Reject
  ++ @1041 /* I don't want to pay your fee. Goodbye. */ EXIT
END

IF ~~ Join.Evil.4.Accept
  SAY @1042 /* Excellent! Let us depart then. */
  IF ~~ DO ~SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)
            ChangeAIScript("DPLAYER3",DEFAULT)
            JoinParty()~ EXIT
END

IF ~~ Join.Evil.4.Reject
  SAY @1044 /* Alright, until then. */
  IF ~~ EXIT
END

// Evil-aligned NPC: follow for 1000 gold
IF ~~ Follow.Evil.4
  SAY @1038 /* I could be persuaded to tag along for a fee. How about 1000 gold? */
  + ~PartyGoldGT(999)~ + @1039 /* Alright, I'll pay your fee. */ DO ~TakePartyGold(1000) DestroyGold(1000)~ + Follow.Evil.4.Accept
  + ~PartyGoldLT(1000)~ + @1040 /* I don't have enough gold. Maybe later. */ + Follow.Evil.4.Reject
  ++ @1041 /* I don't want to pay your fee. Goodbye. */ EXIT
END

IF ~~ Follow.Evil.4.Accept
  SAY @1043 /* Thanks a lot! I'll follow along. */
  IF ~~ DO ~ChangeAIScript("DPLAYER3",DEFAULT)
            ChangeEnemyAlly(Myself,FAMILIAR)
            AddFamiliar()
            ApplySpellRES("a7chrxv",Myself)
            SetGlobal("A7CHR-FOLLOWER","LOCALS",1)
            SetGlobal("A7CHR-CHECKED","LOCALS",1)~ EXIT
END

IF ~~ Follow.Evil.4.Reject
  SAY @1044 /* Alright, until then. */
  IF ~~ EXIT
END

// Evil-aligned NPC: reject
IF ~~ Reject.Evil.1
  SAY @1028 /* I don't think my goals will align with yours. Maybe next time. */
  IF ~~ EXIT
END


// NPC is follower
IF ~!InParty(Myself) !Global("A7CHR-FOLLOWER","LOCALS",0)~ Follower.1
  SAY @1015 /* Do you want me to keep following you? */
  ++ @1017 /* Yes, please do. */ EXIT
  ++ @1018 /* Please join the party. */
    DO ~SetGlobal("A7CHR-FOLLOWER","LOCALS",0)
        ApplySpellRES("a7chrxv2",Myself)
        RemoveFamiliar()
        ChangeEnemyAlly(Myself,NEUTRAL)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
        ChangeAIScript("DPLAYER3",DEFAULT) JoinParty()~ EXIT
  ++ @1019 /* No, please stop following us. */
    DO ~SetGlobal("A7CHR-FOLLOWER","LOCALS",0)
        ApplySpellRES("a7chrxv2",Myself)
        RemoveFamiliar()
        ChangeEnemyAlly(Myself,NEUTRAL)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",1)~ EXIT
  ++ @1024 /* No, please return to the meeting place. */
    DO ~SetGlobal("A7CHR-FOLLOWER","LOCALS",0)
        ApplySpellRES("a7chrxv2",Myself)
        RemoveFamiliar()
        ChangeEnemyAlly(Myself,NEUTRAL)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",1)
        SetGlobal("A7CHR-RETURN","LOCALS",1)~ EXIT
  ++ @1020 /* No, please stop following us, and give us all your gear */
    DO ~SetGlobal("A7CHR-FOLLOWER","LOCALS",0)
    GivePartyAllEquipment()
    ApplySpellRES("a7chrxv2",Myself)
    RemoveFamiliar()
    ChangeEnemyAlly(Myself,NEUTRAL)
    SetGlobal("A7CHR-DIALOG-INIT","LOCALS",1)~ EXIT
  ++ @1025 /* No, please return to the meeting place, and give us all your gear */
    DO ~SetGlobal("A7CHR-FOLLOWER","LOCALS",0)
        GivePartyAllEquipment()
        ApplySpellRES("a7chrxv2",Myself)
        RemoveFamiliar()
        ChangeEnemyAlly(Myself,NEUTRAL)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",1)
        SetGlobal("A7CHR-RETURN","LOCALS",1)~ EXIT
END

// NPC is party member
IF ~InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ PartyMember.1
  SAY @1016 /* Do you still want me in the party? */
  ++ @1021 /* Yes. */ EXIT
  ++ @1022 /* No, I'd rather have you tag along. */
    DO ~LeaveParty()
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
        ChangeEnemyAlly(Myself,FAMILIAR)
        AddFamiliar()
        ApplySpellRES("a7chrxv",Myself)
        SetGlobal("A7CHR-FOLLOWER","LOCALS",1)~ EXIT
  ++ @1023 /* No, please wait for us here. */
    DO ~LeaveParty()
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",1)~ EXIT
  ++ @1024 /* No, please return to the meeting place. */
    DO ~LeaveParty()
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",1)
        SetGlobal("A7CHR-RETURN","LOCALS",1)~ EXIT
END

// NPC has been kicked out via "Reform Party" option or by script
IF ~!InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0) !Global("A7CHR-KICKEDOUT","LOCALS",0)~ KickedOut.1
  SAY @1016 /* Do you still want me in the party? */
  ++ @1021 /* Yes. */
    DO ~SetGlobal("A7CHR-KICKEDOUT","LOCALS",0)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
        ChangeAIScript("DPLAYER3",DEFAULT)
        JoinParty()~ EXIT
  ++ @1022 /* No, I'd rather have you tag along. */
    DO ~SetGlobal("A7CHR-KICKEDOUT","LOCALS",0)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
        ChangeEnemyAlly(Myself,FAMILIAR)
        AddFamiliar()
        ApplySpellRES("a7chrxv",Myself)
        SetGlobal("A7CHR-FOLLOWER","LOCALS",1)~ EXIT
  ++ @1023 /* No, please wait for us here. */
    DO ~SetGlobal("A7CHR-KICKEDOUT","LOCALS",0)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",1)~ EXIT
  ++ @1024 /* No, please return to the meeting place. */
    DO ~SetGlobal("A7CHR-KICKEDOUT","LOCALS",0)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",1)
        SetGlobal("A7CHR-RETURN","LOCALS",1)~ EXIT
END
