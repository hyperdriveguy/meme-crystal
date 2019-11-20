; Sweet Child o' Mine
; Demixed by Hyperdriveguy

Music_SweetChildOfMine:
	musicheader 3, 1, Music_SweetChildOfMine_Ch1
	musicheader 1, 2, Music_SweetChildOfMine_Ch2
	musicheader 1, 3, Music_SweetChildOfMine_Ch3
	;musicheader 1, 4, Music_SweetChildOfMine_Ch4

Music_SweetChildOfMine_Ch1:
	tempo 160
	volume $77
	dutycycle $1
	tone $0002
	vibrato $10, $2f
	notetype $c, $a5
	note __, 16
	loopchannel 0, Music_SweetChildOfMine_Ch1

Music_SweetChildOfMine_Ch2:
	dutycycle $0
	vibrato $1c, $12
	notetype $c, $c7
	tone $0001
    callchannel Music_SweetChildOfMine_IntroBass_High
	loopchannel 0, Music_SweetChildOfMine_Ch2

Music_SweetChildOfMine_Ch3:
	stereopanning $ff
	vibrato $12, $24
	notetype $c, $17
	tone $0003
	intensity $17
	note __, 16
	loopchannel 0, Music_SweetChildOfMine_Ch3

Music_SweetChildOfMine_IntroBass_High:
    octave 4
    note D_, 2
    octave 5
    note D_, 2
    octave 4
    note A_, 2
    note G_, 2
    octave 5
    note G_, 2
    octave 4
    note A_, 2
    octave 5
    note F#, 2
    octave 4
    note A_, 2
    endchannel

Music_SweetChildOfMine_Ch4:
	notetype $c
	togglenoise 3
Music_SweetChildOfMine_Ch4_Main:

	loopchannel 0, Music_SweetChildOfMine_Ch4_Main

;	note D#, 4 ; Low Drum
;	note C_, 4 ; High Drum
;	note B_, 4 ; Cymbal

