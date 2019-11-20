; Thousand Foot Krutch - Untraveled Road
; Demixed by Hyperdriveguy

Music_ComeThouFount:
	musicheader 3, 1, Music_ComeThouFount_Ch1
	musicheader 1, 2, Music_ComeThouFount_Ch2
	musicheader 1, 3, Music_ComeThouFount_Ch3
	;musicheader 1, 4, Music_ComeThouFount_Ch4

Music_ComeThouFount_Ch1:
	tempo 160
	volume $77
	dutycycle $1
	tone $0002
	vibrato $10, $2f
	notetype $c, $a5
	callchannel Music_ComeThouFount_Ch1_Branch1
	callchannel Music_ComeThouFount_Ch1_Branch1
	note A#, 2
	note G#, 2
	note G_, 4
	note G_, 4
	note G#, 2
	note A#, 2
	note C_, 2
	note A#, 2
	note A#, 4
	note A#, 2
	note G#, 2
	note G_, 4
	note G_, 4
	note G#, 2
	note A#, 2
	note A#, 8
	callchannel Music_ComeThouFount_Ch1_Branch1
	loopchannel 0, Music_ComeThouFount_Ch1

Music_ComeThouFount_Ch1_Branch1:
	octave 3
	note A#, 2
	note G#, 2
	note G_, 4
	note G_, 4
	note A#, 2
	note A#, 2
	note A#, 4
	note A#, 4
	note A#, 2
	note A#, 2
	octave 4
	note G#, 4
	octave 3
	note A#, 4
	note A#, 2
	note G#, 2
	note G_, 8
	endchannel

Music_ComeThouFount_Ch2:
	dutycycle $0
	vibrato $1c, $12
	notetype $c, $c7
	callchannel Music_ComeThouFount_Ch2_Branch1
	callchannel Music_ComeThouFount_Ch2_Branch1
	note A#, 2
	octave 5
	note C_, 1
	note D_, 1
	note D#, 4
	note D_, 4
	note C_, 2
	octave 4
	note A#, 2
	octave 5
	note C_, 2
	octave 4
	note A#, 2
	note G_, 4
	note A#, 2
	octave 5
	note C_, 1
	note D_, 1
	note D#, 4
	note D_, 4
	note C_, 2
	note A#, 2
	note D#, 8
	callchannel Music_ComeThouFount_Ch2_Branch1
	loopchannel 0, Music_ComeThouFount_Ch2


Music_ComeThouFount_Ch2_Branch1:
	octave 4
	note G_, 2
	note F_, 2
	note D#, 4
	note D#, 4
	note G_, 2
	note A#, 2
	note F_, 4
	note F_, 4
	note G_, 2
	note A#, 2
	octave 5
	note C_, 4
	octave 4
	note A#, 4
	note G_, 2
	note F_, 2
	note D#, 8
	endchannel

Music_ComeThouFount_Ch3:
	stereopanning $ff
	vibrato $12, $24
	notetype $c, $17
	tone $0003
	intensity $17
	
	loopchannel 0, Music_ComeThouFount_Ch3

Music_ComeThouFount_Ch4:
	notetype $c
	togglenoise 3
Music_ComeThouFount_Ch4_Main:
	
;	note D#, 4 ; Low Drum
;	note C_, 4 ; High Drum
;	note B_, 4 ; Cymbal

