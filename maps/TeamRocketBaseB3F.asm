TeamRocketBaseB3F_MapScriptHeader:
	db 1 ; scene scripts
	scene_script TeamRocketBaseB3FTrigger0

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, TeamRocketBaseB3FCheckGiovanniDoor

	db 4 ; warp events
	warp_event  3,  2, TEAM_ROCKET_BASE_B2F, 2
	warp_event 27,  2, TEAM_ROCKET_BASE_B2F, 3
	warp_event  3,  6, TEAM_ROCKET_BASE_B2F, 4
	warp_event 27, 14, TEAM_ROCKET_BASE_B2F, 5

	db 3 ; coord events
	coord_event 10,  8, 2, UnknownScript_0x6e04b
	coord_event 11,  8, 2, UnknownScript_0x6e052
	coord_event  8, 10, 1, RocketBaseRival

	db 10 ; bg events
	bg_event 10,  9, SIGNPOST_IFNOTSET, BossDoor
	bg_event 11,  9, SIGNPOST_IFNOTSET, BossDoor
	bg_event 10,  1, SIGNPOST_JUMPSTD, teamrocketoath
	bg_event 11,  1, SIGNPOST_JUMPSTD, teamrocketoath
	bg_event 12,  1, SIGNPOST_JUMPSTD, teamrocketoath
	bg_event 13,  1, SIGNPOST_JUMPSTD, teamrocketoath
	bg_event  4, 13, SIGNPOST_JUMPSTD, teamrocketoath
	bg_event  5, 13, SIGNPOST_JUMPSTD, teamrocketoath
	bg_event  6, 13, SIGNPOST_JUMPSTD, teamrocketoath
	bg_event  7, 13, SIGNPOST_JUMPSTD, teamrocketoath

	db 14 ; object events
	object_event 25, 14, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, LanceGetPasswordScript, EVENT_TEAM_ROCKET_BASE_B3F_LANCE_PASSWORDS
	object_event  8,  3, SPRITE_PETREL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEAM_ROCKET_BASE_B3F_PETREL
	object_event  7,  2, SPRITE_MURKROW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, RocketBaseMurkrow, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event  4,  5, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_TEAM_ROCKET_BASE
	object_event 21,  7, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_TRAINER, 0, SlowpokeTailGrunt, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event  5, 14, SPRITE_ROCKET, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, PERSONTYPE_TRAINER, 3, RaticateTailGrunt, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event 23, 11, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_GENERICTRAINER, 0, GenericTrainerRocketScientistRoss, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event 11, 15, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerRocketScientistMitch, EVENT_TEAM_ROCKET_BASE_POPULATION
	object_event 24, 14, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, UnknownText_0x6e235, EVENT_TEAM_ROCKET_BASE_POPULATION
	itemball_event  1, 12, PROTEIN, 1, EVENT_TEAM_ROCKET_BASE_B3F_PROTEIN
	itemball_event  3, 12, X_SPCL_DEF, 1, EVENT_TEAM_ROCKET_BASE_B3F_X_SPCL_DEF
	itemball_event 28,  9, FULL_HEAL, 1, EVENT_TEAM_ROCKET_BASE_B3F_FULL_HEAL
	itemball_event 17,  2, ICE_HEAL, 1, EVENT_TEAM_ROCKET_BASE_B3F_ICE_HEAL
	itemball_event 14, 10, ULTRA_BALL, 1, EVENT_TEAM_ROCKET_BASE_B3F_ULTRA_BALL

	const_def 1 ; object constants
	const TEAMROCKETBASEB3F_LANCE
	const TEAMROCKETBASEB3F_PETREL
	const TEAMROCKETBASEB3F_MURKROW
	const TEAMROCKETBASEB3F_SILVER

TeamRocketBaseB3FTrigger0:
	priorityjump LanceGetPasswordScript
	end

TeamRocketBaseB3FCheckGiovanniDoor:
	checkevent EVENT_OPENED_DOOR_TO_GIOVANNIS_OFFICE
	iftrue .OpenSesame
	return

.OpenSesame:
	changeblock 10, 8, $7
	return

LanceGetPasswordScript:
	objectface PLAYER, LEFT
	pause 5
	objectface TEAMROCKETBASEB3F_MURKROW, RIGHT
	pause 20
	applyonemovement TEAMROCKETBASEB3F_LANCE, step_right
	showtext LanceGetPasswordText
	applymovement TEAMROCKETBASEB3F_LANCE, MovementData_0x6e12c
	disappear TEAMROCKETBASEB3F_LANCE
	setscene $1
	end

RocketBaseRival:
	objectface PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	appear TEAMROCKETBASEB3F_SILVER
	applymovement TEAMROCKETBASEB3F_SILVER, RocketBaseRivalEnterMovement
	objectface PLAYER, LEFT
	playmusic MUSIC_RIVAL_ENCOUNTER
	showtext RocketBaseRivalText
	playsound SFX_TACKLE
	applymovement PLAYER, RocketBaseRivalShovesPlayerMovement
	applymovement TEAMROCKETBASEB3F_SILVER, RocketBaseRivalLeaveMovement
	disappear TEAMROCKETBASEB3F_SILVER
	setscene $2
	special RestartMapMusic
	end

UnknownScript_0x6e04b:
	applymovement PLAYER, MovementData_0x6e133
	jump UnknownScript_0x6e056

UnknownScript_0x6e052:
	applymovement PLAYER, MovementData_0x6e13a
UnknownScript_0x6e056:
	pause 30
	showemote EMOTE_SHOCK, TEAMROCKETBASEB3F_PETREL, 15
	playmusic MUSIC_ROCKET_ENCOUNTER
	objectface TEAMROCKETBASEB3F_PETREL, DOWN
	showtext UnknownText_0x6e400
	applyonemovement TEAMROCKETBASEB3F_PETREL, step_down
	winlosstext UnknownText_0x6e511, 0
	setlasttalked TEAMROCKETBASEB3F_PETREL
	loadtrainer PETREL, PETREL2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PETREL_2
	showtext UnknownText_0x6e548
	applymovement TEAMROCKETBASEB3F_PETREL, MovementData_0x6e144
	playsound SFX_TACKLE
	applymovement TEAMROCKETBASEB3F_PETREL, MovementData_0x6e147
	disappear TEAMROCKETBASEB3F_PETREL
	setscene $3
	end

RocketBaseMurkrow:
	showtext RocketBaseMurkrowText
	setevent EVENT_LEARNED_HAIL_GIOVANNI
	end

SlowpokeTailGrunt:
	trainer GRUNTF, 5, EVENT_BEAT_ROCKET_GRUNTF_5, GruntF5SeenText, GruntF5BeatenText, 0, GruntF5Script

GruntF5Script:
	end_if_just_battled
	showtext UnknownText_0x6e611
	setevent EVENT_LEARNED_SLOWPOKETAIL
	end

RaticateTailGrunt:
	trainer GRUNTM, 28, EVENT_BEAT_ROCKET_GRUNTM_28, GruntM28SeenText, GruntM28BeatenText, 0, GruntM28Script

GruntM28Script:
	end_if_just_battled
	showtext UnknownText_0x6e737
	setevent EVENT_LEARNED_RATICATE_TAIL
	end

GenericTrainerRocketScientistRoss:
	generictrainer ROCKET_SCIENTIST, ROSS, EVENT_BEAT_ROCKET_SCIENTIST_ROSS, RocketScientistRossSeenText, RocketScientistRossBeatenText

	text "A radio signal"
	line "that drives #-"
	cont "mon mad…"

	para "My experiment is a"
	line "complete success."

	para "My promotion is"
	line "assured. This loss"

	para "means absolutely"
	line "nothing."
	done

GenericTrainerRocketScientistMitch:
	generictrainer ROCKET_SCIENTIST, MITCH, EVENT_BEAT_ROCKET_SCIENTIST_MITCH, RocketScientistMitchSeenText, RocketScientistMitchBeatenText

	text "If we turn up the"
	line "power of our radio"

	para "signal for broad-"
	line "cast nationwide…"

	para "The very thought"
	line "excites me!"
	done

BossDoor:
	dw EVENT_OPENED_DOOR_TO_GIOVANNIS_OFFICE
	opentext
	checkevent EVENT_LEARNED_SLOWPOKETAIL
	iffalse .NeedsPassword
	checkevent EVENT_LEARNED_RATICATE_TAIL
	iffalse .NeedsPassword
	jump .OpenSesame

.NeedsPassword:
	jumpopenedtext UnknownText_0x6e970

.OpenSesame:
	writetext UnknownText_0x6e9a3
	waitbutton
	playsound SFX_ENTER_DOOR
	changeblock 10, 8, $7
	reloadmappart
	closetext
	setevent EVENT_OPENED_DOOR_TO_GIOVANNIS_OFFICE
	waitsfx
	end

MovementData_0x6e12c:
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

MovementData_0x6e133:
	step_up
	step_up
	step_up
	step_left
	step_left
	turn_head_up
	step_end

MovementData_0x6e13a:
	step_up
	step_up
	step_left
	step_up
	step_left
	step_left
	turn_head_up
	step_end

MovementData_0x6e144:
	big_step_right
	big_step_right
	step_end

MovementData_0x6e147:
	fix_facing
	fast_jump_step_left
	remove_fixed_facing
	step_sleep_8
	step_sleep_8
	slow_step_right
	big_step_down
	big_step_down
	big_step_down
	big_step_right
	big_step_down
	big_step_down
	big_step_down
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	big_step_left
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_up
	big_step_left
	big_step_left
	step_end

RocketBaseRivalEnterMovement:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_right
	step_right
	step_right
	step_end

RocketBaseRivalLeaveMovement:
	step_left
	step_left
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

RocketBaseRivalShovesPlayerMovement:
	fix_facing
	big_step_right
	remove_fixed_facing
	step_end

LanceGetPasswordText:
	text "Lance: It takes"
	line "two passwords to"

	para "get into the"
	line "boss's quarters."

	para "Those passwords"
	line "are known only to"
	cont "a few Rockets."

	para "That Rocket there"
	line "very graciously"
	cont "told me so."

	para "<PLAYER>, let's go"
	line "get the passwords."
	done

UnknownText_0x6e235:
	text "Urrggh… The guy"
	line "in the cape is"
	cont "incredibly tough…"
	done

RocketBaseRivalText:
	text "…"

	para "Didn't I tell you"
	line "that I was going"

	para "to destroy Team"
	line "Rocket?"

	para "…Tell me, who was"
	line "the guy in the"

	para "cape who used"
	line "dragon #mon?"

	para "My #mon were no"
	line "match at all."

	para "I don't care that"
	line "I lost. I can beat"

	para "him by getting"
	line "stronger #mon."

	para "It's what he said"
	line "that bothers me…"

	para "He told me that"
	line "I don't love and"

	para "trust my #mon"
	line "enough."

	para "I'm furious that I"
	line "lost to a bleeding"
	cont "heart like him."

	para "…Humph! I don't"
	line "have the time for"
	cont "the likes of you!"
	done

UnknownText_0x6e400:
	text "What? Who are you?"
	line "This is the office"

	para "of our leader,"
	line "Giovanni."

	para "Since disbanding"
	line "Team Rocket three"

	para "years ago, he has"
	line "been in training."

	para "But we're certain"
	line "he will be back"

	para "some day to assume"
	line "command again."

	para "That's why we're"
	line "standing guard."

	para "I won't let any-"
	line "one disturb this"
	cont "place!"
	done

UnknownText_0x6e511:
	text "I… I couldn't do a"
	line "thing…"

	para "Giovanni, please"
	line "forgive me…"
	done

UnknownText_0x6e548:
	text "No, I can't let"
	line "this affect me."

	para "I have to inform"
	line "the others…"
	done

RocketBaseMurkrowText:
	text "Murkrow: The"
	line "password is…"

	para "Hail Giovanni."
	done

GruntF5SeenText:
	text "Do I know the"
	line "password?"

	para "Maybe."

	para "But no weakling's"
	line "going to get it!"
	done

GruntF5BeatenText:
	text "All right. Stop."
	line "I'll tell you."
	done

UnknownText_0x6e611:
	text "The password to"
	line "the boss's room is"

	para "SlowpokeTail."

	para "But it's useless"
	line "unless you have"
	cont "two passwords."
	done

GruntM28SeenText:
	text "Hyuck-hyuck-hyuck!"

	para "You're challenging"
	line "me to a battle?"

	para "Hah! You're nuts,"
	line "but you have guts!"

	para "I like that!"

	para "If you can beat"
	line "me, I'll tell you"

	para "a password to the"
	line "boss's room!"
	done

GruntM28BeatenText:
	text "Hyuck-hyuck-hyuck!"
	line "You're good!"
	done

UnknownText_0x6e737:
	text "Hyuck-hyuck-hyuck!"

	para "The password to"
	line "the boss's room…"

	para "Uh…, I think it is"
	line "Raticate Tail."
	done

RocketScientistRossSeenText:
	text "I used to work for"
	line "Silph, but now I"

	para "run research for"
	line "Team Rocket."

	para "A meddlesome child"
	line "like you needs to"
	cont "be punished."
	done

RocketScientistRossBeatenText:
	text "A mere tactical"
	line "error cost me…"
	done

RocketScientistMitchSeenText:
	text "I don't care that"
	line "#mon are hurt"
	cont "by our experiment."
	done

RocketScientistMitchBeatenText:
	text "Thinking is my"
	line "strong suit, not"
	cont "battling."
	done

UnknownText_0x6e970:
	text "The door's closed…"

	para "It needs two"
	line "passwords to open."
	done

UnknownText_0x6e9a3:
	text "The door's closed…"

	para "<PLAYER> entered"
	line "the two passwords."

	para "The door opened!"
	done
