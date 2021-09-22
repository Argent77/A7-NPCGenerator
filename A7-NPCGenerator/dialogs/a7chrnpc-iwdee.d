// *** NPC dialog (IWD:EE version) ***
BEGIN ~A7CHRNPC~

// NPC introduction
IF ~NumTimesTalkedTo(0) Class(Myself,MONK) !InParty(Myself) Global("A7CHR-FOLLOWER","LOCALS",0)~ Intro.1.Monk
  SAY @1013 /* Hello, <SIRMAAM>! I'm waiting for a chance to learn more about the world, and thus about myself. Do you need another companion? */
  ++ @1002 /* Yes, please join the party. */
    DO ~SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
        ChangeAIScript("DPLAYER3",DEFAULT)
        JoinParty()~ EXIT
  ++ @1014 /* Sure, you can tag along for a while. */
    DO ~ChangeAIScript("DPLAYER3",DEFAULT)
        ChangeEnemyAlly(Myself,FAMILIAR)
        AddFamiliar()
        ApplySpellRES("a7chrxv",Myself)
        SetGlobal("A7CHR-FOLLOWER","LOCALS",1)~ EXIT
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


// NPC is follower
IF ~!InParty(Myself) !Global("A7CHR-FOLLOWER","LOCALS",0)~ Follower.1
  SAY @1015 /* Do you want me to keep following you? */
  ++ @1017 /* Yes, please do. */ EXIT
  ++ @1018 /* Please join the party. */
    DO ~SetGlobal("A7CHR-FOLLOWER","LOCALS",0)
        SetGlobal("A7CHR-AISCRIPT","LOCALS",0)
        ApplySpellRES("a7chrxv2",Myself)
        RemoveFamiliar()
        ChangeEnemyAlly(Myself,NEUTRAL)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",0)
        ChangeAIScript("DPLAYER3",DEFAULT) JoinParty()~ EXIT
  ++ @1019 /* No, please stop following us. */
    DO ~SetGlobal("A7CHR-FOLLOWER","LOCALS",0)
        SetGlobal("A7CHR-AISCRIPT","LOCALS",0)
        ApplySpellRES("a7chrxv2",Myself)
        RemoveFamiliar()
        ChangeEnemyAlly(Myself,NEUTRAL)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",1)~ EXIT
  ++ @1024 /* No, please return to the meeting place. */
    DO ~SetGlobal("A7CHR-FOLLOWER","LOCALS",0)
        SetGlobal("A7CHR-AISCRIPT","LOCALS",0)
        ApplySpellRES("a7chrxv2",Myself)
        RemoveFamiliar()
        ChangeEnemyAlly(Myself,NEUTRAL)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",1)
        SetGlobal("A7CHR-RETURN","LOCALS",1)~ EXIT
  ++ @1020 /* No, please stop following us, and give us all your gear */
    DO ~SetGlobal("A7CHR-FOLLOWER","LOCALS",0)
        SetGlobal("A7CHR-AISCRIPT","LOCALS",0)
        GivePartyAllEquipment()
        ApplySpellRES("a7chrxv2",Myself)
        RemoveFamiliar()
        ChangeEnemyAlly(Myself,NEUTRAL)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",1)~ EXIT
  ++ @1025 /* No, please return to the meeting place, and give us all your gear */
    DO ~SetGlobal("A7CHR-FOLLOWER","LOCALS",0)
        SetGlobal("A7CHR-AISCRIPT","LOCALS",0)
        GivePartyAllEquipment()
        ApplySpellRES("a7chrxv2",Myself)
        RemoveFamiliar()
        ChangeEnemyAlly(Myself,NEUTRAL)
        SetGlobal("A7CHR-DIALOG-INIT","LOCALS",1)
        SetGlobal("A7CHR-RETURN","LOCALS",1)~ EXIT
  ++ @1100 /* Please change your current behavior. */ + Follower.Script.1
END

IF ~~ Follower.Script.1
  SAY @1101 /* What do you want me to do? */
  %responses_aiscript%
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
