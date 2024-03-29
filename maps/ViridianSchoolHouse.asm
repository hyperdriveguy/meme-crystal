ViridianSchoolHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  9, VIRIDIAN_CITY, 8
	warp_event  3,  9, VIRIDIAN_CITY, 8

	db 0 ; coord events

	db 3 ; bg events
	bg_event  3,  0, SIGNPOST_JUMPTEXT, ViridianSchoolHouseBlackboardText
	bg_event  6,  1, SIGNPOST_JUMPTEXT, ViridianSchoolHouseBookshelfText
	bg_event  7,  1, SIGNPOST_JUMPTEXT, ViridianSchoolHouseBookshelfText

	db 6 ; object events
	object_event  4,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianSchoolHouseTeacherText, -1
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, ViridianSchoolHouseNotesText, -1
	object_event  3,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianSchoolHouseLass1Text, -1
	object_event  5,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, ViridianSchoolHouseYoungsterScript, -1
	object_event  2,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianSchoolHouseLass2Text, -1
	object_event  3,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ViridianSchoolHouseGameBoyKidScript, -1

ViridianSchoolHouseTeacherText:
	text "I know this is a"
	line "lot of material,"

	para "but please pay"
	line "attention!"
	done

ViridianSchoolHouseNotesText:
	text "The page is cover-"
	line "ed in doodles."
	para "A maze, flowers,"
	line "the letter S…"
	done

ViridianSchoolHouseLass1Text:
	text "Wait! I thought"
	line "that, like, all"

	para "Fire-type moves"
	line "were special?"
	done

ViridianSchoolHouseYoungsterScript:
	checkevent EVENT_GOT_WEAK_POLICY_FROM_VIRIDIAN
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	buttonsound
	verbosegiveitem WEAK_POLICY
	iffalse_endtext
	setevent EVENT_GOT_WEAK_POLICY_FROM_VIRIDIAN
	thisopenedtext

.Text2:
	text "“What doesn't KO"
	line "a Pokemon makes"
	cont "it stronger.”"

	para "That's the effect"
	line "of a Weak Policy."
	done

.Text1:
	text "The teacher gave"
	line "me extra copies of"

	para "these. Here,"
	line "take one."
	done

ViridianSchoolHouseGameBoyKidScript:
	showtextfaceplayer ViridianSchoolHouseGameBoyKidText
	objectface LAST_TALKED, DOWN
	end

ViridianSchoolHouseGameBoyKidText:
	text "I'm taking notes"
	line "on my phone!"

	para "I'm not goofing"
	line "off! Really!"
	done

ViridianSchoolHouseLass2Text:
	text "I'm in the pro-"
	line "tagonist's seat!"

	para "So why is my life"
	line "so boring?"
	done

ViridianSchoolHouseBlackboardText:
	text "Physical moves use"
	line "the Attack and"
	cont "Defense stats."

	para "Special moves use"
	line "the Spcl.Atk and"
	cont "Spcl.Def stats."

	para "Status moves do"
	line "not cause damage"
	cont "directly."
	done

ViridianSchoolHouseBookshelfText:
	text "It's full of text-"
	line "books and study"
	cont "guides."
	done
