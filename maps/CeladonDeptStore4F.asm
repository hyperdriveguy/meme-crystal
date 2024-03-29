CeladonDeptStore4F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 12,  0, CELADON_DEPT_STORE_5F, 1
	warp_event 15,  0, CELADON_DEPT_STORE_3F, 2
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 14,  0, SIGNPOST_JUMPTEXT, CeladonDeptStore4FDirectoryText

	db 4 ; object events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_CELADON_4F, -1
	object_event  7,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x70f21, -1
	object_event  8,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x70f55, -1
	object_event 15,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, PosterClerkScript, -1

PosterClerkScript:
	faceplayer
	opentext
	writetext PosterClerkText
.Start:
	special PlaceMoneyTopRight
	loadmenudata .MenuData
	verticalmenu
	closewindow
	ifequal $1, .MarillPoster
	ifequal $2, .ClefairyPoster
	ifequal $3, .PikachuPoster
	endtext

.MarillPoster:
	checkmoney $0, 3200
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_POSTER_3
	iftrue .AlreadyBought
	takemoney $0, 3200
	setevent EVENT_DECO_POSTER_3
	writetext BoughtMarillPosterText
	playsound SFX_TRANSACTION
	waitbutton
	writetext MarillPosterSentText
	waitbutton
	jump .Start

.ClefairyPoster:
	checkmoney $0, 4800
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_POSTER_2
	iftrue .AlreadyBought
	takemoney $0, 4800
	setevent EVENT_DECO_POSTER_2
	writetext BoughtClefairyPosterText
	playsound SFX_TRANSACTION
	waitbutton
	writetext ClefairyPosterSentText
	waitbutton
	jump .Start

.PikachuPoster:
	checkmoney $0, 6400
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_POSTER_1
	iftrue .AlreadyBought
	takemoney $0, 6400
	setevent EVENT_DECO_POSTER_1
	writetext BoughtPikachuPosterText
	playsound SFX_TRANSACTION
	waitbutton
	writetext PikachuPosterSentText
	waitbutton
	jump .Start

.NotEnoughMoney:
	writetext PosterClerkNoMoneyText
	waitbutton
	jump .Start

.AlreadyBought:
	writetext PosterClerkAlreadyBoughtText
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
	db "Marill      ¥3200@"
	db "Clefairy    ¥4800@"
	db "Pikachu     ¥6400@"
	db "Cancel@"

PosterClerkText:
	text "Welcome! Would you"
	line "like a poster?"
	done

PosterClerkNoMoneyText:
	text "You don't have"
	line "enough money."
	done

PosterClerkAlreadyBoughtText:
	text "You bought that"
	line "already."
	done

BoughtMarillPosterText:
	text "<PLAYER> bought"
	line "Marill Poster."
	done

MarillPosterSentText:
	text "Marill Poster"
	line "was sent home."
	done

BoughtClefairyPosterText:
	text "<PLAYER> bought"
	line "Clefairy Poster."
	done

ClefairyPosterSentText:
	text "Clefairy Poster"
	line "was sent home."
	done

BoughtPikachuPosterText:
	text "<PLAYER> bought"
	line "Pikachu Poster."
	done

PikachuPosterSentText:
	text "Pikachu Poster"
	line "was sent home."
	done

UnknownText_0x70f21:
	text "I'm here to buy"
	line "Lovely Mail for"
	cont "my girlfriend."
	done

UnknownText_0x70f55:
	text "This is the only"
	line "place where you"

	para "can buy posters."
	line "I collect them!"
	done

CeladonDeptStore4FDirectoryText:
	text "Express Yourself"
	line "With Gifts!"

	para "4F: Wiseman Gifts"
	done
