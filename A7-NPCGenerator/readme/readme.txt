NPC Generator
~~~~~~~~~~~~~

Version:    0.9beta
Author:     Argent77

Download:   https://github.com/Argent77/A7-NPCGenerator/releases
Discussion: https://


Overview
~~~~~~~~

Have you ever regretted that the game only allowed you to create the protagonist or (with some
effort) up to five additional characters? Not anymore!

This mod allows you to install any number of pregenerated or exported characters as regular NPCs.
They can be met at predetermined locations where you have the chance to invite them into your
party or have them tag along without occupying party slots at any time in the game. Kicked out
NPCs can be instructed to wait or return to the original meeting place.

The mod supports the following games and game variants:
- Original BG2
- Tutu/EasyTutu
- BGT (Baldur's Gate Trilogy)
- BG:EE (with or without "Siege of Dragonspear" expansion)
- BG2:EE
- EET (Enhanced Edition Trilogy)
- IWD:EE

The mod is currently available in English and German.


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

This component provides two installation modes:

Manual installation:
A character selection menu allows you to select one or more characters for installation. The mod
scans the "characters" folder for exported character files and/or characters in the game resources
(depending on selected option) and lists available characters with a short summary of gender,
class/kit and level.
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

NOTE #1:
This component won't be registered in the WeiDU.log and can therefore be called anytime and as
many times you want to install characters as NPCs. To uninstall NPCs use the second component of
the mod ("Remove custom NPCs from the game").

NOTE #2:
NPCs in companion mode have the spell effect "Clear Fog of War" applied, so that they don't vanish
into the fog of war when they move out of party range. However, this effect is supported for only
up to 8 characters by the game engine, party members included. Additional followers can still be
selected while in the fog of war, but don't clear it.
Because of technical limitations this effect can be dispelled via Ctrl+R cheat in the original
BG2 engine if cheat keys are enabled. The NPC has to be kicked out and invited again to have the
effect re-applied. Enhanced Editions are not affected.


*** 2. Remove custom NPCs from the game ***

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


Copyright Notice
~~~~~~~~~~~~~~~~

The mod "NPC Generator" is licensed under the "Creative Commons Attribution-ShareAlike 4.0
International License" (http://creativecommons.org/licenses/by-sa/4.0/).


History
~~~~~~~

1.0
- Initial release
