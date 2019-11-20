; Thousand Foot Krutch - Untraveled Road
; Demixed by Hyperdriveguy

Music_AllStar:
	musicheader 3, 1, Music_AllStar_Ch1
	musicheader 1, 2, Music_AllStar_Ch2
	musicheader 1, 3, Music_AllStar_Ch3

Music_AllStar_Ch1:
	tempo 160
	volume $77
	dutycycle $1
	tone $0002
	vibrato $10, $2f
	notetype $c, $a5
	octave 4
    note B_, 4
    note B_, 4
    note A_, 4
    note F#, 8
    note D_, 4
    note B_, 2
    octave 5
    note D_, 1
    note C#, 1
    octave 4
    note B_, 4
    note A_, 4
    note F#, 8
    note D_, 4
    note A_, 4
    note B_, 4
    octave 5
    note C#, 4
    note D_, 8
    octave 4
    note D_, 4
    note F#, 10
    note G_, 1
    note F#, 1
    note E_, 12
    note D_, 12
    note __,8
    octave 5
    note F#, 2
    note G_, 2
    note A_, 12
    note D_, 12
Music_AllStar_Ch1_Main:
    octave 4
    note D_, 12
    note D_, 12
    note D_, 12
    note D_, 8
    octave 5
    note D_, 2
    note F#, 2
    note E_, 12
    note __,4
    octave 4
    note D_, 8
    note E_, 8
    note D_, 2
    note F#, 2
    note E_, 12
    note D_, 12
    note A_, 4
    note G_, 4
    note F#, 2
    note E_, 2
    note D_, 12
    octave 5
    note C#, 4
    octave 4
    note B_, 4
    note A_, 2
    note G_, 2
    note F#, 12
    note __,4
    note G_, 8
    note E_, 4
    note D_, 4
    note E_, 4
    note D_, 12
    note B_, 12
    octave 5
    note D_, 2
    note E_, 2
    note C#, 2
    note D_, 2
    octave 4
    note B_, 2
    note D_, 2
    note B_, 8
    note A_, 4
    octave 5
    note E_, 4
    note D_, 2
    note E_, 2
    note C#, 2
    note D_, 2
    octave 4
    note A_, 4
    note B_, 4
    octave 5
    note C#, 4
    note D_, 8
    octave 4
    note D_, 4
    note F#, 8
    note F#, 2
    note G_, 1
    note F#, 1
    note E_, 12
    note D_, 4
    note E_, 4
    note F#, 4
    note G_, 8
    note A_, 4
    note A_, 12
    note D_, 12
	loopchannel 0, Music_AllStar_Ch1_Main

Music_AllStar_Ch2:
	dutycycle $0
	vibrato $1c, $12
	notetype $c, $c7
    note __,16
	loopchannel 0, Music_AllStar_Ch2

Music_AllStar_Ch3:
	stereopanning $ff
	vibrato $12, $24
	notetype $c, $17
	tone $0003
	intensity $17
    note __,16
	loopchannel 0, Music_AllStar_Ch3
