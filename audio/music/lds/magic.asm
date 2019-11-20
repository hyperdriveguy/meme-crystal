; Magic - Pilot
; Demixed by Hyperdriveguy

;TRACK_RIGHT EQU $0f
;TRACK_LEFT  EQU $f0

Music_Magic:
	musicheader 4, 1, Music_Magic_Ch1
	musicheader 1, 2, Music_Magic_Ch2
	musicheader 1, 3, Music_Magic_Ch3
	musicheader 1, 4, Music_Magic_Ch4

Music_Magic_Ch1:
	tempo 180
	volume $77
	dutycycle $2
	tone $0001
	vibrato $10, $2f
	notetype $c, $c2
	stereopanning TRACK_RIGHT
	note __,2
	octave 4
	note D_, 1
	note E_, 1
	note G_, 1
	note E_, 1
	note G_, 2
	note B_, 2
	note B_, 2
	note D_, 2
	note D_, 2
	note D_, 2
	note B_, 2
	note A_, 1
	note G_, 1
	note E_, 1
	note G_, 1
	note A_, 2
	note F#, 2
	note B_, 2
	note G_, 2
	note __,2
	note G_, 1
	note G_, 1
	note __,1
	note G_, 2
	note G_, 1
	octave 5
	note D_, 1
	note E_, 1
	note __,2
	note D_, 1
	note E_, 1
	note __,2
	octave 4
	note B_, 1
	note A_, 1
	note G_, 2
	note G_, 2
	note E_, 2
	note C_, 2
	note B_, 2
	octave 5
	note C_, 2
	note D_, 2
	octave 4
	note B_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note A_, 1
	note G_, 3
	note __,2
	octave 5
	note G_, 2
	tone $0002
	intensity $92
	note __,2
Music_Magic_Ch1_Loop:
	stereopanning $0f
	note __,6
	callchannel Music_Magic_Ch1_Branch1
	callchannel Music_Magic_Ch1_Branch1
	callchannel Music_Magic_Ch1_Branch2
	callchannel Music_Magic_Ch1_Branch2
	callchannel Music_Magic_Ch1_Branch3
	callchannel Music_Magic_Ch1_Branch3
	stereopanning TRACK_LEFT
	callchannel Music_Magic_Ch1_Branch4
	callchannel Music_Magic_Ch1_Branch4
	callchannel Music_Magic_Ch1_Branch1
	callchannel Music_Magic_Ch1_Branch1
	callchannel Music_Magic_Ch1_Branch2
	callchannel Music_Magic_Ch1_Branch2
	callchannel Music_Magic_Ch1_Branch3
	callchannel Music_Magic_Ch1_Branch3
	callchannel Music_Magic_Ch1_Branch4
	callchannel Music_Magic_Ch1_Branch4
	note G_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note A_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note B_, 4
	note __,2
	note F_, 2
	loopchannel 0, Music_Magic_Ch1_Loop

Music_Magic_Ch1_Branch1:
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	note G_, 2
	note B_, 2
	endchannel

Music_Magic_Ch1_Branch2:
	octave 4
	note D_, 2
	octave 3
	note B_, 2
	note F#, 2
	note B_, 2
	endchannel

Music_Magic_Ch1_Branch3:
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note E_, 2
	note G_, 2
	endchannel

Music_Magic_Ch1_Branch4:
	octave 4
	note C_, 2
	octave 3
	note F#, 2
	note D_, 2
	note F#, 2
	endchannel

Music_Magic_Ch2:
	dutycycle $1
	vibrato $1c, $12
	notetype $c, $d2
	tone $0002
	stereopanning TRACK_LEFT
	note __,2
	octave 3
	note D_, 1
	note E_, 1
	note G_, 1
	note E_, 1
	note G_, 2
	octave 4
	note D_, 2
	note D_, 2
	octave 3
	note G_, 2
	note G_, 2
	note G_, 2
	octave 4
	note D_, 2
	note D_, 1
	note G_, 1
	note D_, 1
	note G_, 1
	note F#, 2
	octave 3
	note B_, 2
	octave 4
	note F#, 2
	note E_, 2
	note __,2
	octave 3
	note G_, 1
	note G_, 1
	note __,1
	note G_, 2
	note G_, 1
	note A_, 1
	octave 4
	note E_, 1
	octave 2
	note A_, 2
	octave 3
	note A_, 1
	octave 4
	note E_, 1
	octave 2
	note A_, 2
	octave 4
	note C#, 1
	octave 3
	note A_, 1
	octave 4
	note E_, 2
	note C#, 2
	octave 3
	note E_, 2
	note C_, 2
	octave 4
	note C_, 2
	note E_, 2
	note C_, 2
	note D_, 2
	note D_, 2
	note F#, 2
	note D_, 2
	octave 3
	note G_, 1
	note G_, 3
	note __,2
	octave 4
	note F_, 2
	note __,2
	tone $0001
	stereopanning TRACK_LEFT | TRACK_RIGHT
Music_Magic_Ch2_Loop:
	note __,6
	octave 3
	note G_, 4
	note B_, 4
	octave 4
	note D_, 2
	octave 3
	note B_, 4
	octave 4
	note G_, 4
	note A_, 2
	note __,4
	note __,4
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note __,12
	note B_, 2
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	note A_, 2
	note __,2
	note B_, 2
	note A_, 4
	note G_, 4
	note __,4
	note __,6
	note G_, 2
	note A_, 2
	note A_, 2
	note __,8
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note __,12
	note B_, 2
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	note A_, 2
	note __,2
	note B_, 2
	note A_, 4
	note G_, 4
	note __,12
	note G_, 4
	note __,2
	note G_, 2
	loopchannel 0, Music_Magic_Ch2_Loop

Music_Magic_Ch3:
	vibrato $12, $24
	notetype $c, $24
	tone $0003
	note __,8
	octave 2
	callchannel Music_Magic_Ch3_Intro_Branch
	callchannel Music_Magic_Ch3_Intro_Branch
	note B_, 2
	note B_, 2
	note B_, 2
	octave 3
	note E_, 2
	note __,8
	octave 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	octave 3
	note C#, 2
	note E_, 2
	note C#, 2
	note E_, 2
	note C_, 2
	note C_, 2
	note E_, 2
	note C_, 2
	note D_, 2
	note D_, 2
	note F#, 2
	note D_, 2
	note G_, 4
	note __,2
	note F_, 2
	note __,2
Music_Magic_Ch3_Loop:
	stereopanning TRACK_LEFT
	intensity $26
	note __,6
	callchannel Music_Magic_Ch3_Branch1
	callchannel Music_Magic_Ch3_Branch1
	callchannel Music_Magic_Ch3_Branch2
	callchannel Music_Magic_Ch3_Branch2
	callchannel Music_Magic_Ch3_Branch3
	callchannel Music_Magic_Ch3_Branch3
	octave 3
	note F#, 2
	note D_, 2
	note F#, 2
	octave 4
	note C_, 2
	stereopanning TRACK_RIGHT
	intensity $28
	note __,2
	octave 3
	note D_, 1
	octave 2
	note A_, 1
	note D_, 4
	note G_, 8
	note __,2
	octave 3
	note A_, 2
	note G_, 2
	note D_, 2
	octave 2
	note B_, 8
	note __,2
	octave 3
	note G_, 2
	note F#, 2
	note D_, 2
	octave 2
	note A_, 8
	note __,6
	note E_, 2
	note D_, 8
	note __,2
	note F#, 2
	note A_, 2
	note D_, 2
	note G_, 4
	note __,2
	note D#, 2
	note __,8
	note G_, 4
	note __,2
	note F_, 2
	loopchannel 0, Music_Magic_Ch3_Loop


Music_Magic_Ch3_Branch1:
	octave 3
	note B_, 2
	note G_, 2
	note B_, 2
	octave 4
	note D_, 2
	endchannel

Music_Magic_Ch3_Branch2:
	octave 3
	note B_, 2
	note F#, 2
	note B_, 2
	octave 4
	note D_, 2
	endchannel

Music_Magic_Ch3_Branch3:
	octave 3
	note G_, 2
	note E_, 2
	note G_, 2
	octave 4
	note C_, 2
	endchannel

Music_Magic_Ch3_Intro_Branch:
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	endchannel

Music_Magic_Ch4:
	notetype $c
	togglenoise 3
	callchannel Music_Magic_Ch4_Branch1
	note C_, 1
	note C_, 1
	note C_, 2
	callchannel Music_Magic_Ch4_Branch2
	callchannel Music_Magic_Ch4_Branch2
	note C_, 2
	note D#, 2
	note C_, 2
	note B_, 2
	callchannel Music_Magic_Ch4_Branch1
	callchannel Music_Magic_Ch4_Branch1
	note B_, 2
	callchannel Music_Magic_Ch4_Branch2
	callchannel Music_Magic_Ch4_Branch2
	callchannel Music_Magic_Ch4_Branch2
	note C_, 2
	note D#, 2
	note C_, 2
	note C_, 4
	note __, 2
	note B_, 2
	note __, 2
Music_Magic_Ch4_Main:
	note __, 2
	note C_, 4
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	callchannel Music_Magic_Ch4_Branch3
	note B_, 2
	note D#, 2
	note D#, 2
	note B_, 2
	note __, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 4
	note D#, 2
	note C_, 2
	loopchannel 0, Music_Magic_Ch4_Main

Music_Magic_Ch4_Branch1:
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	endchannel

Music_Magic_Ch4_Branch2:
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	endchannel

Music_Magic_Ch4_Branch3:
	note C_, 2
	note D#, 1
	note D#, 1
	note C_, 2
	note D#, 1
	note D#, 1
	endchannel

;	note D#, 4 ; Low Drum
;	note C_, 4 ; High Drum
;	note B_, 4 ; Cymbal


