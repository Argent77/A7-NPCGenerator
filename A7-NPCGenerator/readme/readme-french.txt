Générateur de PNJ
~~~~~~~~~~~~~~~~~

Version :        1.7
Auteur :         Argent77

Téléchargement : https://github.com/Argent77/A7-NPCGenerator/releases
Discussion:      https://www.gibberlings3.net/forums/topic/31809-npc-generator-npc-creation-made-easy
                 https://forums.beamdog.com/discussion/80057/mod-npc-generator-npc-creation-made-easy


Présentation générale
~~~~~~~~~~~~~~~~~~~~~

N'avez-vous jamais regretté que le jeu ne vous permette de créer qu'une partie initiale composée du protagoniste et (avec un certain effort) d'un petit nombre de personnages supplémentaires ? Plus maintenant !
Ce mod vous permet d'installer un nombre quelconque de personnages prégénérés ou exportés en tant que PNJ ordinaires.
Vous pouvez les rencontrer à des endroits prédéterminés où vous avez la possibilité de les inviter dans votre groupe ou de les faire vous suivre sans occuper de place dans le groupe à n'importe quel moment du jeu.
Les PNJ renvoyés peuvent recevoir l'ordre d'attendre ou de retourner au lieu de rencontre initial.

Le mod n'est pas enregistré dans le WeiDU.log et peut donc être appelé à tout moment et aussi souvent que vous le souhaitez pour installer ou retirer des PNJ du jeu.

Le mod prend en charge les jeux et variantes de jeux suivants :
- Original BG2
- Tutu/EasyTutu
- BGT (Baldur's Gate Trilogy)
- BG:EE
- SoD (Siege of Dragonspear)
- BG2:EE
- EET (Enhanced Edition Trilogy)
- IWD:EE

Le mod est actuellement disponible en anglais, allemand, russe et français.


Installation
~~~~~~~~~~~~

Ceci est un mod WeiDU, ce qui signifie qu'il est très facile à installer. Il suffit de décompresser l'archive téléchargée dans le répertoire de votre jeu et d'exécuter  "setup-A7-NPCGenerator.exe". Suivez les instructions et vous serez prêt(e) à commencer.

Le mod offre des options pour les installations manuelles et automatisées. Voir "Composants" ci-dessous pour plus de détails.

Note pour Siege of Dragonspear (SoD) :
GOG et Steam installent tous deux l'extension "Siege of Dragonspear" d'une manière qui n'est pas moddable à l'origine. Vous devez installer un mod appelé "DLC Merger" sur votre installation SoD avant que ce mod ou tout autre mod basé sur WeiDU ne puisse être installé.
Il peut être téléchargé ici : https://github.com/Argent77/A7-DlcMerger/releases/latest


Composants
~~~~~~~~~~

*** 1. Ajouter des PNJ personnalisés au jeu (pour BG2, Tutu, BGT, BG:EE, SoD, BG2:EE, EET et IWD:EE) ***

Avec ce composant, il est possible d'installer un nombre quelconque de personnages individuellement ou tous les personnages disponibles en une seule fois.

Pour chaque jeu il y a un ou plusieurs lieux de rencontre disponibles.
BG1 :
- l'Auberge de Brasamical - Premier étage

Siege of Dragonspear :
Les personnages peuvent être rencontrés à différents endroits puisque le jeu vous empêche de visiter certains d'entre eux à un moment ou à un autre. Les personnages se déplaceront automatiquement vers n'importe quel lieu lors de leur première visite.
- La Taverne du Chant de l'elfe (Porte de Baldur) - Premier et deuxième étage
- Pont de la voie côtière - Campement du Poing Enflammé
- Bois des Griffes de Troll - Campement du Poing Enflammé
- Camp de la Coalition - Réparti sur les parties sud-est du camp

BG2 - Shadows of Amn :
- La Couronne de cuivre dans les bas-quartiers d'Athkatla

BG2 - Throne of Bhaal :
Les personnages peuvent être rencontrés à différents endroits puisque le jeu vous empêche de visiter certains d'entre eux à un moment ou à un autre. Les personnages se déplaceront automatiquement vers n'importe quel lieu lors de leur première visite.
- La taverne de Saradush (l'Arbre à chopines)
- L'auberge d'Amkethran (Le Zéphyr)

IWD :
Les personnages peuvent être rencontrés à différents endroits puisque le jeu vous empêche de visiter certains d'entre eux à un moment ou à un autre. Les personnages se déplaceront automatiquement vers n'importe quel lieu lors de leur première visite.
- "Taverne du Berceau de l'hiver" et "Auberge des Congères" (toutes les deux à Havredest)
- "La Cave aux racines" et "l'Ombre du soir" (toutes les deux à Kuldahar)
- "Le Gibet siffleur" - Premier et deuxième étage, à Bois Isolé (Campagne HoW)

Note : Comme la Taverne du berceau de l'hiver à Easthaven est utilisée comme zone de départ, les PNJ ne se rassembleront à cet endroit qu'après que le groupe aura quitté la taverne, afin d'éviter toute interférence avec la scène d'ouverture.

Ce composant offre deux modes d'installation :

Installation manuelle :
Un menu de sélection des personnages vous permet de choisir un ou plusieurs personnages à installer. Le mod recherche dans le dossier "characters" les fichiers de personnages exportés et/ou les personnages présents dans les ressources du jeu (en fonction de l'option sélectionnée) et répertorie les personnages disponibles avec un bref résumé de leur sexe, alignement, classe/kit et niveau.
Pour sélectionner un personnage, saisissez le numéro de l'entrée du menu. Il est possible d'annuler une sélection en saisissant à nouveau le numéro d'un personnage déjà sélectionné. Saisissez 'A' pour installer tous les caractères disponibles en une seule fois. Sinon, saisissez "X" pour terminer la sélection et lancer le processus d'installation proprement dit.
Si un ou plusieurs personnages ont été sélectionnés pour l'installation, vous pouvez également décider si ces personnages doivent automatiquement adapter leur expérience au niveau du protagoniste lorsqu'ils se joignent à lui. L'adaptation de l'expérience fonctionne dans les deux sens. L'expérience d'un PNJ de haut niveau peut être réduite pour correspondre à l'XP d'un protagoniste de bas niveau.

Installation automatisée :
Ce mode est contrôlé par le fichier "settings.tpa" qui se trouve dans le dossier de base du mod.
L'installation ne nécessite aucune entrée manuelle et constitue donc le meilleur choix pour les gestionnaires de mods ou les installations de mods scriptées.
Par défaut, il installe tous les personnages disponibles dans le dossier "characters" et active l'adaptation d'XP. Voir le fichier settings (settings.tpa) pour des commentaires plus détaillés sur les paramètres individuels.

NOTE 1 :
Les PNJ en mode compagnon bénéficient de l'effet du sort "Effacer le brouillard de guerre", afin qu'ils ne disparaissent pas dans le brouillard de guerre lorsqu'ils se déplacent hors de portée du groupe. Cependant, cet effet n'est supporté que par 8 personnages maximum en même temps par le moteur de jeu, membres du groupe inclus. Des suiveurs supplémentaires peuvent toujours être sélectionnés dans le brouillard de guerre, mais ne le dissipent pas.

En raison de limitations techniques, cet effet peut être dissipé par le code de triche Ctrl+R dans le moteur original de BG2 si les touches de triche sont activées. Le PNJ doit être expulsé et invité à nouveau pour que l'effet soit réappliqué. Les éditions améliorées ne sont pas concernées.

NOTE 2 :
Contrairement aux membres du groupe, les PNJ en mode compagnon ne gagnent pas automatiquement de l'expérience en tuant des monstres ou en accomplissant des quêtes. Ce problème a été résolu en accordant une quantité approximative d'XP pour les monstres tués par les PNJ eux-mêmes. Le processus de montée en niveau n'est toujours disponible que lorsque le PNJ est un membre régulier du groupe.

NOTE 3 :
Pour BG2, BGT, BG2:EE et EET, il est possible de créer des épilogues personnalisés pour des PNJ individuels qui sont affichés à la fin du jeu avec les épilogues des PNJ du jeu normal.

Pour activer les épilogues pour un personnage, vous devez créer un fichier texte avec le texte de l'épilogue dans le même dossier que le fichier du personnage. Le fichier doit être enregistré sous le même nom que le fichier du personnage mais avec l'extension ".EPI".
Pour permettre au jeu d'afficher des épilogues différents en fonction du choix fait par le protagoniste à la fin du jeu, vous devez créer deux fichiers texte qui sont, là encore, enregistrés sous le même nom que le fichier de personnage mais avec l'extension ".EP1" si le protagoniste choisit de s'élever et ".EP2" si le protagoniste choisit une vie mortelle.

Les fichiers de caractères exportés se trouvent dans le sous-dossier "characters" qui est situé dans le répertoire contenant les fichiers de configuration "baldur.ini" ou "baldur.lua". Pour les jeux classiques, il s'agit généralement du répertoire d'installation du jeu lui-même. Pour les éditions améliorées, il s'agit d'un dossier dans le dossier des documents spécifiques à l'utilisateur du système.

Exemple :
MYCHAR.CHR : Le fichier de personnage créé et exporté par le jeu.

Option 1 :
MYCHAR.EPI : Un fichier texte avec l'épilogue qui est montré indépendamment du choix du protagoniste.

Option 2 :
MYCHAR.EP1 : Un fichier texte contenant l'épilogue qui s'affiche lorsque le protagoniste choisit l'ascension.
MYCHAR.EP2 : Un fichier texte avec l'épilogue qui s'affiche lorsque le protagoniste choisit une vie mortelle.

L'option 2 a la préférence si les deux options d'épilogue sont détectées.


*** 2. Activer/désactiver les contrôles d'alignement pour les PNJ personnalisés (non disponible pour IWD:EE) ***

Par défaut, les PNJ installés ne rejoignent ou ne suivent pas toujours immédiatement le groupe. Si leurs objectifs ne correspondent pas à ceux du groupe, ils peuvent demander une rémunération ou refuser catégoriquement de se joindre à eux.

Cette vérification n'est effectuée que lors de la première demande d'adhésion ou de suivi. Les demandes ultérieures sont toujours acceptées.

Avec ce composant, il est possible d'activer ou de désactiver cette vérification. Lorsqu'elle est désactivée, tous les PNJ installés rejoindront ou suivront automatiquement votre groupe lorsqu'on le leur demandera. Les PNJ dans IWD:EE rejoindront ou suivront toujours votre groupe lorsqu'on le leur demandera.

Les conditions requises pour les PNJ sont les suivantes :
PNJ d'alignement bon
- Rejoins gratuitement si la réputation est comprise entre 9 et 12 et si le charisme du protagoniste est 14 ou plus.
- Rejoins gratuitement si la réputation est 13 ou plus.
PNJ neutre :
- Rejoins gratuitement si la réputation est comprise entre 5 et 16 et si le charisme du protagoniste est 14 ou plus.
- Rejoins pour 250 pièces d'or si la réputation est comprise entre 5 et 16 et si le charisme du protagoniste est 13 ou moins.
- Rejoins pour 250 pièces d'or si la réputation est 17 ou plus et si le charisme du protagoniste est 14 ou plus.
- Rejoins pour 500 pièces d'or si la réputation est 4 ou moins et si le charisme du protagoniste est 14 ou plus.
PNJ mauvais :
- Rejoins gratuitement si la réputation est 8 ou moins et si le charisme du protagoniste est 14 ou plus.
- Rejoins pour 250 pièces d'or si la réputation est 8 ou moins et si le charisme du protagoniste est 13 ou moins.
- Rejoins pour 250 pièces d'or si la réputation est comprise entre 9 et 12 et si le charisme du protagoniste est 14 ou plus.
- Rejoins pour 500 pièces d'or si la réputation est comprise entre 9 et 12 et si le charisme du protagoniste est 13 ou moins.
- Rejoins pour 1000 pièces d'or si la réputation est comprise entre 13 et 16 et si le charisme du protagoniste est 14 ou plus.

NOTE :
Cette option est définie pour chaque PNJ dès que le groupe entre dans la zone concernée. Le fait d'activer cette vérification plus tard n'aura aucun effet sur ces PNJ, sauf si vous chargez une sauvegarde antérieure. Vous pouvez également activer ou désactiver manuellement cette vérification pour certains PNJ dans la console de débogage du jeu.

Pour désactiver la vérification de l'alignement d'un PNJ, exécutez ce code lorsque le curseur de la souris est placé sur le cercle de sélection du PNJ (remplacez "CLUAConsole" par "C" pour les jeux de l'édition améliorée) : CLUAConsole:SetGlobal("A7CHR-SKIPCHECK", "LOCALS",1)

Pour activer la vérification de l'alignement d'un PNJ, exécutez ce code lorsque le curseur de la souris est placé sur le cercle de sélection du PNJ (remplacez "CLUAConsole" par "C" pour les jeux de l'édition améliorée) : CLUAConsole:SetGlobal("A7CHR-SKIPCHECK", "LOCALS",0)


*** 3. Supprimer les PNJ personnalisés du jeu ***

Ce composant vous permet de supprimer du jeu les personnages installés. Vous pouvez choisir de désinstaller les personnages sélectionnés individuellement ou tous les personnages installés en une seule fois.

NOTE :
Les PNJ étant stockés dans les parties sauvegardées, cette option n'a d'effet que si vous n'avez pas encore visité l'un des lieux de rencontre des personnages. Cependant, certaines options ne fonctionneront plus si ces personnages ont été désinstallés (comme le retour au lieu de rencontre d'origine ou le déplacement d'un lieu de rencontre à un autre).


Remerciements
~~~~~~~~~~~~~

Codage et test : Argent77

Traduction russe : yota13

Traduction française : Deratiseur


Avis de droit d'auteur
~~~~~~~~~~~~~~~~~~~~~~

Le mod "Magasin magique de Vergadain" est sous licence "Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License"
(https://creativecommons.org/licenses/by-nc-sa/4.0/).


Historique
~~~~~~~~~~

1.7
- Fixed combat script selection for NPCs in follower mode
- Updated mod compatibility and installation order in the readme and PI ini file

1.6
- Ajout de la traduction française (merci Deratiseur)
- Ajout d'une option permettant d'assigner des scripts d'IA aux PNJ en mode suiveur via le dialogue.

1.5
- Ajout de la prise en charge des épilogues personnalisés à la fin de BG2:ToB pour les PNJ installés.
- Un texte biographique personnalisé est attribué aux PNJ installés s'il est disponible.
- Affichage d'un message explicatif si les PNJ ne sont pas disponibles pour l'installation
- Correction des PNJ qui deviennent hostiles lorsqu'ils sont touchés par un tir ami en mode suiveur.

1.4
- Ajout des métadonnées pour Project Infinity
- Ajout d'une traduction allemande pour les invites de WeiDU
- Correction de problèmes potentiels d'affichage des noms de composants dans WeiDU.log et Project Infinity
- Améliorations de la compatibilité

1.3
- Ajout de la suppression des PNJ/suiveurs à la fin de la campagne SoD
- Gestion correcte des suiveurs pendant la séquence de rêve de SoA Spellhold.
- Correction des symboles IDS manquants dans IWD:EE

1.2
- Ajout de la traduction russe (merci yota13)
- Optimisations internes

1.1
- Les PNJ suiveurs gagnent de l'expérience en tuant des créatures.
- Les données invalides des personnages (kits, sorts, objets, etc.) sont automatiquement corrigées lorsque les PNJ sont installés.
- Correction de fautes de frappe dans le readme.

1.0
- Version initiale
