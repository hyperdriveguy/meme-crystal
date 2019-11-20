SaffronStakeCenter_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  6, 11, SAFFRON_CITY, 21
	warp_event  7, 11, SAFFRON_CITY, 21

	db 0 ; coord events

	db 4 ; bg events
	bg_event  9,  0, SIGNPOST_READ, SaffronStakeCenterChalkboard
	bg_event 10,  0, SIGNPOST_READ, SaffronStakeCenterChalkboard
	bg_event 11,  0, SIGNPOST_READ, SaffronStakeCenterChalkboard
	bg_event 12,  0, SIGNPOST_READ, SaffronStakeCenterChalkboard
	db 0 ; object events


SaffronStakeCenterChalkboard:
	opentext
	writetext SaffronStakeCenterChalkboardText
	waitbutton
.Loop:
	loadmenudata .MenuHeader
	_2dmenu
	closewindow
	ifequal $1, .Premortal
	ifequal $2, .Veil
	ifequal $3, .Mortal
	ifequal $4, .Death
	ifequal $5, .SpiritWorld
	ifequal $6, .Resurrection
	ifequal $7, .Judgement
	ifequal $8, .Kingdoms
	endtext

.Premortal:
	writetext StakeCenterChalkboardPremortalText
	waitbutton
	jump .Loop
	
.Veil:
	writetext StakeCenterChalkboardVeilText
	waitbutton
	jump .Loop

.Mortal:
	writetext StakeCenterChalkboardMortalText
	waitbutton
	jump .Loop

.Death:
	writetext StakeCenterChalkboardDeathText
	waitbutton
	jump .Loop

.SpiritWorld:
	writetext StakeCenterChalkboardSpiritWorldText
	waitbutton
	jump .Loop

.Resurrection:
	writetext StakeCenterChalkboardResurrectionText
	waitbutton
	jump .Loop

.Judgement:
	writetext StakeCenterChalkboardJudgementText
	waitbutton
	jump .Loop

.Kingdoms:
	writetext StakeCenterChalkboardKingdomsText
	waitbutton
	jump .Loop

.MenuHeader:
	db $40 ; flags
	db 00, 00 ; start coords
	db 17, 19 ; end coords
	dw .Data
	db 1 ; default option

.Data:
	db $80 ; flags
	dn 8, 1 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(SaffronStakeCenterChalkboard), 0

.Text:
	db "Premortal@"
	db "Veil@"
	db "Mortal@"
	db "Death@"
	db "Spirit World@"
	db "Resurrection@"
	db "Judgement@"
	db "Kingdoms@"

SaffronStakeCenterChalkboardText:
	text "The chalkboard has"
	line "A diagram drawn on"
	cont "it."
	
	para "The title reads:"
	
	para "THE PLAN OF"
	line "SALVATION"
	done
	
StakeCenterChalkboardPremortalText:
	text "Before we were"
	line "born, we were"
	cont "spirits."
	
	para "There were two"
	line "plans presented in"
	cont "this stage:"
	
	para "God's perfect plan"
	line "that respected the"
	cont "agency of man,"
	
	para "and Satan's plan,"
	line "which did not, and"
	cont "he wanted glory."
	
	para "God's plan was"
	line "chosen, but those"
	cont "who followed Satan"
	cont "were cast out."
	done
	
StakeCenterChalkboardVeilText:
	text "Passing from the"
	line "Premortal to"
	cont "Mortal life, a"
	para "veil was placed on"
	line "our minds."
	
	para "Because of the"
	line "veil, we do not"
	cont "remember the"
	cont "Premortal life."
	done

StakeCenterChalkboardMortalText:
	text "In order to"
	line "progress, we"
	cont "needed bodies."
	
	para "In this life we"
	line "make choices."
	
	para "We are tested to"
	line "see if we will"
	cont "choose the right."
	
	para "But we aren't per-"
	line "fect. We often"
	cont "falter."
	
	para "If we utilize the"
	line "Atonement of Jesus"
	cont "Christ and make"
	para "covenants needed"
	line "for salvation, we"
	cont "can be saved."
	done

StakeCenterChalkboardDeathText:
	text "Death is a necce-"
	line "sary part of the"
	cont "plan."
	
	para "It is where the"
	line "spirit separates"
	cont "from the body."
	
	para "See Resurrection"
	done

StakeCenterChalkboardSpiritWorldText:
	text "As spirits, we"
	line "carry some of our"
	cont "attributes we"
	para "gained in mortal"
	line "life."
	
	para "We will not have a"
	line "perfect knowledge"
	cont "yet however."
	
	para "Those who did not"
	line "have a chance to"
	cont "learn about the"
	para "gospel in mortal"
	line "will get chance to"
	cont "accept it here."
	done
	
StakeCenterChalkboardResurrectionText:
	text "Resurrection is"
	line "the reuniting of"
	cont "body and spirit."
	
	para "All who chose"
	line "God's plan in the"
	cont "Premortal life"
	para "will be Resurr-"
	line "ected because of"
	cont "Jesus Christ."
	done

StakeCenterChalkboardJudgementText:
	text "There will be a"
	line "day when all our"
	cont "sins will be"
	para "brought before"
	line "God."
	
	para "However, if we are"
	line "truly penitent, He"
	cont "will remember them"
	cont "no more."
	done

StakeCenterChalkboardKingdomsText:
	text "After judgment, we"
	line "will go to a king-"
	cont "dom of heaven."
	
	para "There are three"
	line "degrees of glory:"
	
	para "Celestial,"
	
	para "Terrestial,"
	
	para "and Telestial."
	
	para "In order to get in"
	line "to the Celestial"
	cont "Kingdom, all"
	para "neccesary cove-"
	line "nants must be"
	cont "made."
	done
