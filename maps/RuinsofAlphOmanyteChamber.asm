RuinsofAlphOmanyteChamber_MapScriptHeader:
	db 1 ; scene scripts
	scene_script RuinsofAlphOmanyteChamberTrigger0

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, UnknownScript_0x58bf8

	db 5 ; warp events
	warp_event  3,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  4,  9, RUINS_OF_ALPH_OUTSIDE, 3
	warp_event  3,  3, RUINS_OF_ALPH_INNER_CHAMBER, 6
	warp_event  4,  3, RUINS_OF_ALPH_INNER_CHAMBER, 7
	warp_event  4,  0, RUINS_OF_ALPH_OMANYTE_ITEM_ROOM, 1

	db 0 ; coord events

	db 6 ; bg events
	bg_event  2,  3, SIGNPOST_JUMPTEXT, RuinsofAlphStatueText
	bg_event  5,  3, SIGNPOST_JUMPTEXT, RuinsofAlphStatueText
	bg_event  3,  2, SIGNPOST_UP, MapRuinsofAlphOmanyteChamberSignpost2Script
	bg_event  4,  2, SIGNPOST_UP, MapRuinsofAlphOmanyteChamberSignpost3Script
	bg_event  3,  0, SIGNPOST_UP, MapRuinsofAlphOmanyteChamberSignpost4Script
	bg_event  4,  0, SIGNPOST_UP, MapRuinsofAlphOmanyteChamberSignpost5Script

	db 0 ; object events

RuinsofAlphOmanyteChamberTrigger0:
	special SpecialOmanyteChamber
	checkevent EVENT_WALL_OPENED_IN_OMANYTE_CHAMBER
	iffalse .End
	priorityjump UnknownScript_0x58c12
.End
	end

UnknownScript_0x58bf8:
	checkevent EVENT_WALL_OPENED_IN_OMANYTE_CHAMBER
	iftrue UnknownScript_0x58c02
	changeblock 4, 0, $24
UnknownScript_0x58c02:
	checkevent EVENT_SOLVED_OMANYTE_PUZZLE
	iffalse UnknownScript_0x58c09
	return

UnknownScript_0x58c09:
	changeblock 2, 2, $1
	changeblock 4, 2, $2
	return

UnknownScript_0x58c12:
	pause 30
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	playsound SFX_STRENGTH
	changeblock 4, 0, $25
	reloadmappart
	earthquake 50
	setscene $1
	endtext

MapRuinsofAlphOmanyteChamberSignpost2Script:
	refreshscreen
	writebyte $1
	special Special_UnownPuzzle
	closetext
	iftrue UnknownScript_0x58c36
	end

UnknownScript_0x58c36:
	setevent EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	setevent EVENT_SOLVED_OMANYTE_PUZZLE
	setflag ENGINE_UNLOCKED_UNOWNS_2
	setmapscene RUINS_OF_ALPH_INNER_CHAMBER, $1
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 15
	changeblock 2, 2, $14
	changeblock 4, 2, $15
	reloadmappart
	playsound SFX_STRENGTH
	earthquake 80
	applyonemovement PLAYER, skyfall_top
	playsound SFX_KINESIS
	waitsfx
	pause 20
	warpcheck
	end

MapRuinsofAlphOmanyteChamberSignpost3Script:
	unowntypeface
	showtext UnknownText_0x58d26
	restoretypeface
	end

MapRuinsofAlphOmanyteChamberSignpost5Script:
	checkevent EVENT_WALL_OPENED_IN_OMANYTE_CHAMBER
	iftrue_jumptext UnknownText_0x58ea2
MapRuinsofAlphOmanyteChamberSignpost4Script:
	opentext
	writetext UnknownText_0x58e4f
	writebyte $2
	special Special_DisplayUnownWords
	endtext

UnknownText_0x58d26:
	text "This #mon"
	line "drifted in the"

	para "sea by twisting"
	line "its ten tentacles."
	done
