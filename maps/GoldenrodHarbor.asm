GoldenrodHarbor_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 31, 16, GOLDENROD_HARBOR_GATE, 1
	warp_event 31, 17, GOLDENROD_HARBOR_GATE, 2

	db 0 ; coord events

	db 3 ; bg events
	bg_event 29, 19, SIGNPOST_JUMPTEXT, GoldenrodHarborSignText
	bg_event 28, 15, SIGNPOST_JUMPTEXT, GoldenrodHarborCrateSignText
	bg_event 22, 21, SIGNPOST_ITEM + REVIVE, EVENT_GOLDENROD_HARBOR_HIDDEN_REVIVE

	db 12 ; object events
	object_event 17,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, GoldenrodHarborFisherScript, -1
	object_event 13,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_GENERICTRAINER, 1, GenericTrainerFisherPaton, -1
	itemball_event 13,  3, STAR_PIECE, 1, EVENT_GOLDENROD_HARBOR_STAR_PIECE
	object_event 27, 15, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, pokemart, MARTTYPE_ADVENTURER, MART_GOLDENROD_HARBOR, -1
	object_event 22, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, GoldenrodHarborPokefanmScript, -1
	object_event 21, 15, SPRITE_MAGIKARP, SPRITEMOVEDATA_DOLL, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, GoldenrodHarborMagikarpText, -1
	object_event 16, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, GoldenrodHarborYoungsterScript, -1
	object_event 14, 20, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, trade, TRADE_WITH_JACQUES_FOR_GRIMER, -1
	object_event 40, 16, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_GOLDENROD_CITY_ROCKET_SCOUT
	object_event 31,  8, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_GENERICTRAINER, 5, GenericTrainerSwimmerfKatie, -1
	object_event 18, 28, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerSwimmermJames, -1
	object_event 18, 19, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, GoldenrodHarborLass2Text, -1

GoldenrodHarborFisherScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_HYPER_VOICE_INTRO
	iftrue GoldenrodHarborTutorHyperVoiceScript
	writetext GoldenrodHarborFisherText
	waitbutton
	setevent EVENT_LISTENED_TO_HYPER_VOICE_INTRO
GoldenrodHarborTutorHyperVoiceScript:
	writetext Text_GoldenrodHarborTutorHyperVoice
	waitbutton
	checkitem SILVER_LEAF
	iffalse .NoSilverLeaf
	writetext Text_GoldenrodHarborTutorQuestion
	yesorno
	iffalse .TutorRefused
	writebyte HYPER_VOICE
	writetext Text_GoldenrodHarborTutorClear
	special Special_MoveTutor
	ifequal $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_GoldenrodHarborTutorRefused

.NoSilverLeaf
	jumpopenedtext Text_GoldenrodHarborTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_GoldenrodHarborTutorTaught

GenericTrainerFisherPaton:
	generictrainer FISHER, PATON, EVENT_BEAT_FISHER_PATON, FisherPatonSeenText, FisherPatonBeatenText

	text "You're working"
	line "on a #dex?"
	cont "That's neat!"
	done

GenericTrainerSwimmerfKatie:
	generictrainer SWIMMERF, KATIE, EVENT_BEAT_SWIMMERF_KATIE, SwimmerfKatieSeenText, SwimmerfKatieBeatenText

	text "Why is the sea"
	line "blue?"

	para "I heard it ref-"
	line "lects the sky…"

	para "But then why is"
	line "the sky blue?"
	done

GenericTrainerSwimmermJames:
	generictrainer SWIMMERM, JAMES, EVENT_BEAT_SWIMMERM_JAMES, SwimmermJamesSeenText, SwimmermJamesBeatenText

	text "Can't a Swimmer"
	line "use a rowboat"
	cont "sometimes?"
	done

GoldenrodHarborPokefanmScript:
	faceplayer
	opentext
	writetext GoldenrodHarborDollVendorText
.Start:
	special PlaceMoneyTopRight
	loadmenudata .MenuData
	verticalmenu
	closewindow
	ifequal $1, .MagikarpDoll
	ifequal $2, .MarillDoll
	ifequal $3, .OctilleryDoll
	endtext

.MagikarpDoll:
	checkmoney $0, 1400
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_MAGIKARP_DOLL
	iftrue .AlreadyBought
	takemoney $0, 1400
	setevent EVENT_DECO_MAGIKARP_DOLL
	writetext GoldenrodHarborMagikarpDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodHarborMagikarpDollSentText
	waitbutton
	jump .Start

.MarillDoll:
	checkmoney $0, 5600
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_MARILL_DOLL
	iftrue .AlreadyBought
	takemoney $0, 5600
	setevent EVENT_DECO_MARILL_DOLL
	writetext GoldenrodHarborMarillDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodHarborMarillDollSentText
	waitbutton
	jump .Start

.OctilleryDoll:
	checkmoney $0, 11200
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_OCTILLERY_DOLL
	iftrue .AlreadyBought
	takemoney $0, 11200
	setevent EVENT_DECO_OCTILLERY_DOLL
	writetext GoldenrodHarborOctilleryDollText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodHarborOctilleryDollSentText
	waitbutton
	jump .Start

.NotEnoughMoney:
	writetext GoldenrodHarborNoMoneyText
	waitbutton
	jump .Start

.AlreadyBought:
	writetext GoldenrodHarborAlreadyBoughtText
	waitbutton
	jump .Start

.MenuData:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Magikarp    ¥1400@"
	db "Marill      ¥5600@"
	db "Octillery  ¥11200@"
	db "Cancel@"

GoldenrodHarborYoungsterScript:
	faceplayer
	opentext
	writetext GoldenrodHarborPlantVendorText
.Start:
	special PlaceMoneyTopRight
	loadmenudata .MenuData
	verticalmenu
	closewindow
	ifequal $1, .MagnaPlant
	ifequal $2, .TropicPlant
	ifequal $3, .JumboPlant
	endtext

.MagnaPlant:
	checkmoney $0, 6400
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_PLANT_1
	iftrue .AlreadyBought
	takemoney $0, 6400
	setevent EVENT_DECO_PLANT_1
	writetext GoldenrodHarborMagnaPlantText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodHarborMagnaPlantSentText
	waitbutton
	jump .Start

.TropicPlant:
	checkmoney $0, 9600
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_PLANT_2
	iftrue .AlreadyBought
	takemoney $0, 9600
	setevent EVENT_DECO_PLANT_2
	writetext GoldenrodHarborTropicPlantText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodHarborTropicPlantSentText
	waitbutton
	jump .Start

.JumboPlant:
	checkmoney $0, 12800
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_PLANT_3
	iftrue .AlreadyBought
	takemoney $0, 12800
	setevent EVENT_DECO_PLANT_3
	writetext GoldenrodHarborJumboPlantText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodHarborJumboPlantSentText
	waitbutton
	jump .Start

.NotEnoughMoney:
	writetext GoldenrodHarborNoMoneyText
	waitbutton
	jump .Start

.AlreadyBought:
	writetext GoldenrodHarborAlreadyBoughtText
	waitbutton
	jump .Start

.MenuData:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 19 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Magna P.    ¥6400@"
	db "Tropic P.   ¥9600@"
	db "Jumbo P.   ¥12800@"
	db "Cancel@"

GoldenrodHarborFisherText:
	text "If you're fishing,"
	line "you have to be"

	para "quiet so you don't"
	line "scare the #mon."

	para "But to be heard"
	line "over the waves,"

	para "you have to say"
	line "things LOUD!"
	done

Text_GoldenrodHarborTutorHyperVoice:
	text "I can teach your"
	line "#mon how to"

	para "use Hyper Voice"
	line "for a Silver Leaf."
	done

Text_GoldenrodHarborTutorNoSilverLeaf:
	text "You don't have a"
	line "Silver Leaf!"
	done

Text_GoldenrodHarborTutorQuestion:
	text "Should I teach"
	line "your #mon"
	cont "Hyper Voice?"
	done

Text_GoldenrodHarborTutorRefused:
	text "OK then."
	done

Text_GoldenrodHarborTutorClear:
	text ""
	done

Text_GoldenrodHarborTutorTaught:
	text "Now your #mon"
	line "knows how to use"
	cont "Hyper Voice!"
	done

FisherPatonSeenText:
	text "The fish I caught"
	line "was attached to"
	cont "another #mon!"
	done

FisherPatonBeatenText:
	text "Aren't #mon"
	line "interesting?"
	done

SwimmerfKatieSeenText:
	text "Swimming in the"
	line "deep blue sea"
	cont "feels wonderful!"
	done

SwimmerfKatieBeatenText:
	text "I lost…"
	line "Now I feel blue…"
	done

SwimmermJamesSeenText:
	text "I can swim, but"
	line "I can also row!"
	done

SwimmermJamesBeatenText:
	text "Maybe I can't"
	line "battle…"
	done

GoldenrodHarborMagikarpText:
	text "This is a Fish"
	line "#mon! Huh?"

	para "It's only a doll…"
	done

GoldenrodHarborDollVendorText:
	text "Welcome! I have"
	line "adorable aquatic"
	cont "dolls for sale."
	done

GoldenrodHarborMagikarpDollText:
	text "<PLAYER> bought"
	line "Magikarp Doll."
	done

GoldenrodHarborMagikarpDollSentText:
	text "Magikarp Doll"
	line "was sent home."
	done

GoldenrodHarborMarillDollText:
	text "<PLAYER> bought"
	line "Marill Doll."
	done

GoldenrodHarborMarillDollSentText:
	text "Marill Doll"
	line "was sent home."
	done

GoldenrodHarborOctilleryDollText:
	text "<PLAYER> bought"
	line "Octillery Doll."
	done

GoldenrodHarborOctilleryDollSentText:
	text "Octillery Doll"
	line "was sent home."
	done

GoldenrodHarborNoMoneyText:
	text "You can't afford"
	line "that!"
	done

GoldenrodHarborAlreadyBoughtText:
	text "You already have"
	line "that!"
	done

GoldenrodHarborPlantVendorText:
	text "Welcome! I have"
	line "a selection of"

	para "exotic plants to"
	line "adorn your home."
	done

GoldenrodHarborMagnaPlantText:
	text "<PLAYER> bought"
	line "Magna Plant."
	done

GoldenrodHarborMagnaPlantSentText:
	text "Magna Plant"
	line "was sent home."
	done

GoldenrodHarborTropicPlantText:
	text "<PLAYER> bought"
	line "Tropic Plant."
	done

GoldenrodHarborTropicPlantSentText:
	text "Tropic Plant"
	line "was sent home."
	done

GoldenrodHarborJumboPlantText:
	text "<PLAYER> bought"
	line "Jumbo Plant."
	done

GoldenrodHarborJumboPlantSentText:
	text "Jumbo Plant"
	line "was sent home."
	done

GoldenrodHarborLass2Text:
	text "All this water,"
	line "it's totally…"

	para "bloop-bloop,"
	line "splish-splish."

	para "Don't you agree?"
	done

GoldenrodHarborSignText:
	text "Goldenrod Harbor"
	done

GoldenrodHarborCrateSignText:
	text "A crate full of"
	line "rare items!"
	done
