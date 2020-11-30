NPC Generator
~~~~~~~~~~~~~

Version:    1.2
Author:     Argent77

Download:   https://github.com/Argent77/A7-NPCGenerator/releases
Discussion: https://www.gibberlings3.net/forums/topic/31809-npc-generator-npc-creation-made-easy
            https://forums.beamdog.com/discussion/80057/mod-npc-generator-npc-creation-made-easy


Overview
~~~~~~~~

Have you ever regretted that the game only allowed you to create an initial party consisting of
the protagonist and (with some effort) a small number of additional characters? Not anymore!

This mod allows you to install any number of pregenerated or exported characters as regular NPCs.
They can be met at predetermined locations where you have the chance to invite them into your
party or have them tag along without occupying party slots at any time in the game. Kicked out
NPCs can be instructed to wait or return to the original meeting place.

The mod isn't registered in the WeiDU.log and can therefore be called at any time and as often as
you like to install or remove NPCs to or from the game.

The mod supports the following games and game variants:
- Original BG2
- Tutu/EasyTutu
- BGT (Baldur's Gate Trilogy)
- BG:EE
- SoD (Siege of Dragonspear)
- BG2:EE
- EET (Enhanced Edition Trilogy)
- IWD:EE

The mod is currently available in English, German and Russian.


Installation
~~~~~~~~~~~~

This is a WeiDU mod, that means it is very easy to install. Simply unpack the downloaded archive
into your game directory and run "setup-A7-NPCGenerator.exe". Follow the instructions and you are
ready to start.

The mod provides options for manual and automated installations. See "Components" below for more
details.


Components
~~~~~~~~~~

*** 1. Add custom NPCs to the game (for BG2, Tutu, BGT, BG:EE, SoD, BG2:EE, EET and IWD:EE) ***

With this component it is possible to install any number of individual characters or all available
characters at once.

For each game there are one or more meeting places available.
BG1:
- The Friendly Arms Inn - First floor

Siege of Dragonspear:
Characters can be met at different locations since the game prevents you from visiting some of them
at one point or another. Characters will move automatically to any of the locations at first visit.
- Elfsong Tavern (Baldur's Gate) - First and second floor
- Coast Way Crossing - Flaming Fist Encampment
- Troll Claw Woods - Flaming Fist Encampment
- Coalition Camp - Spread over southeastern parts of the camp

BG2 - Shadows of Amn:
- Copper Coronet in the Slums of Athkatla

BG2 - Throne of Bhaal:
Characters can be met at different locations since the game prevents you from visiting some of them
at one point or another. Characters will move automatically to any of the locations at first visit.
- Saradush Tavern (Tankard Tree)
- Amkethran Inn (The Zephir)

IWD:
Characters can be met at different locations since the game prevents you from visiting some of them
at one point or another. Characters will move automatically to any of the locations at first visit.
- "Winter's Cradle" Tavern and Snowdrift Inn (both Easthaven)
- Root Cellar Tavern and Evening Shade Inn (both Kuldahar)
- The Whistling Gallows - first and second floor, in Lonelywood (HoW campaign only)

Note: Since the Winter's Cradle Tavern in Easthaven is used as the starting area NPCs will gather
      at this place only after the party leaves the tavern to avoid interference with the opening
      cutscene.

This component provides two installation modes:

Manual installation:
A character selection menu allows you to select one or more characters for installation. The mod
scans the "characters" folder for exported character files and/or characters in the game resources
(depending on selected option) and lists available characters with a short summary of gender,
alignment, class/kit and level.
To select a character, enter the number of the menu entry. A selection can be reverted by entering
the number of an already selected character again. Enter 'A' to install all available characters
at once. Otherwise, enter 'X' to finish selection and start the actual installation process.
If one or more characters have been selected for installation you can also decide whether these
characters should automatically adapt their experience to the level of the protagonist when they
join up. XP adaptation works in both directions. Experience of a high-level NPC may be reduced to
match the XP of a low-level protagonist.

Automated installation:
This mode is controlled by the file "settings.tpa" which can be found in the mod's base folder.
Installation requires no manual input and is therefore the best choice for mod managers or
scripted mod installations.
By default it will install all available characters from the "characters" folder and enable XP
adaptation. See the settings file (settings.tpa) for more detailed comments about individual
settings.

NOTE 1:
NPCs in companion mode have the spell effect "Clear Fog of War" applied, so that they don't vanish
into the fog of war when they move out of party range. However, this effect is supported for only
up to 8 characters by the game engine, party members included. Additional followers can still be
selected while in the fog of war, but don't clear it.
Because of technical limitations this effect can be dispelled via Ctrl+R cheat in the original
BG2 engine if cheat keys are enabled. The NPC has to be kicked out and invited again to have the
effect re-applied. Enhanced Editions are not affected.

NOTE 2:
Unlike regular party members NPCs in companion mode do not automatically gain experience from
killing monsters or completing quests. The former issue has been worked around by granting an
approximated amount of XP for monsters killed by the NPCs themselves. The level up process is
still only available when the NPC is a regular party member.


*** 2. Enable/Disable alignment checks for custom NPCs (not available for IWD:EE) ***

By default installed NPCs won't always join or follow the party right away. If their goals don't
align with the party's they might ask for a fee or outright refuse to join.

This check is only performed when asked to join or follow the first time. Subsequent requests are
always accepted.

With this component it is possible to toggle this check on or off. When disabled then every
installed NPC will automatically join or follow your party when asked. NPCs in IWD:EE will always
join or follow your party when asked.

The requirements for NPCs are as follows:
Good-aligned NPCs:
- Join for free if reputation is between 9 and 12 and the protagonist's charisma is 14 or higher.
- Join for free if reputation is 13 or higher.
Neutral NPCs:
- Join for free if reputation is between 5 and 16 and the protagonist's charisma is 14 or higher.
- Join for 250 gold if reputation is between 5 and 16 and the protagonist's charisma is 13 or lower.
- Join for 250 gold if reputation is 17 or higher and the protagonist's charisma is 14 or higher.
- Join for 500 gold if reputation is 4 or lower and the protagonist's charisma is 14 or higher.
Evil NPCs:
- Join for free if reputation is 8 or lower and the protagonist's charisma is 14 or higher.
- Join for 250 gold if reputation is 8 or lower and the protagonist's charisma is 13 or lower.
- Join for 250 gold if reputation is between 9 and 12 and the protagonist's charisma is 14 or higher.
- Join for 500 gold if reputation is between 9 and 12 and the protagonist's charisma is 13 or lower.
- Join for 1000 gold if reputation is between 13 and 16 and the protagonist's charisma is 14 or higher.

NOTE:
This option is set on a per NPC basis as soon as the party enters the respective area. Toggling
this check later won't have an effect on these NPCs unless you load an earlier save. Alternatively
you can enable or disable the check manually for selected NPCs in the debug console of the game.

To disable the alignment check of an NPC execute this code while the mouse cursor is placed over the
NPC's selection circle (replace "CLUAConsole" by "C" for the Enhanced Edition games):
CLUAConsole:SetGlobal("A7CHR-SKIPCHECK","LOCALS",1)

To enable the alignment check of an NPC execute this code while the mouse cursor is placed over the
NPC's selection circle (replace "CLUAConsole" by "C" for the Enhanced Edition games):
CLUAConsole:SetGlobal("A7CHR-SKIPCHECK","LOCALS",0)


*** 3. Remove custom NPCs from the game ***

This component allows you to remove installed characters from the game. You can choose whether to
uninstall selected characters individually or all installed characters at once.

NOTE:
Because NPCs are stored in saved games this option has only an effect if you haven't visited any
of the meeting places of the characters yet. However, some options won't work anymore if these
characters have been uninstalled (such as returning to the original meeting place or moving from
one meeting place to another).


Credits
~~~~~~~

Coding and testing: Argent77

Russian translation: yota13


Copyright Notice
~~~~~~~~~~~~~~~~

The mod "NPC Generator" is licensed under the "Creative Commons Attribution-ShareAlike 4.0
International License" (http://creativecommons.org/licenses/by-sa/4.0/).


History
~~~~~~~

1.3
- Added NPC/follower removal at the end of SoD campaign
- Properly deal with followers during SoA Spellhold dream sequence

1.2
- Added Russian translation (thanks yota13)
- Internal optimizations

1.1
- NPC followers gain experience from killing creatures.
- Invalid character data (kits, spells, items, etc.) is automatically fixed when NPCs are installed.
- Fixed typos in readme.

1.0
- Initial release
