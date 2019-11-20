Music_Kolob:
    musicheader 3, 1, Music_Kolob_Ch1
    musicheader 1, 2, Music_Kolob_Ch2
    musicheader 1, 3, Music_Kolob_Ch3


Music_Kolob_Ch1:
    tempo 110
    volume $77
    dutycycle $3
    tone $0001
    vibrato $10, $1F
    notetype $c, $62
    intensity $95
Music_Kolob_Ch1_Loop:
    octave 4
    note G_, 2
    note F#, 2
    note E_, 4
    note E_, 4
    note E_, 4
    note D_, 4
    note G_, 8
    note A_, 4
    note G_, 2
    note A_, 2
    note B_, 4
    note B_, 4
    note A_, 2
    note G_, 2
    note E_, 4
    note D_, 12 ; line 1
    note G_, 2
    note F#, 2
    note E_, 4
    note E_, 4
    note E_, 4
    note D_, 4
    note G_, 8
    note A_, 4
    note G_, 2
    note A_, 2
    note B_, 4
    note B_, 4
    note A_, 2
    note G_, 2
    note E_, 4
    note E_, 12 ; line 2
    note B_, 2
    octave 5
    note C_, 2
    note D_, 4
    octave 4
    note B_, 4
    note B_, 2
    note A_, 2
    note G_, 4
    note A_, 8
    note B_, 4
    note G_, 2
    note A_, 2
    note B_, 4
    note B_, 2
    note A_, 2
    note G_, 4
    note E_, 4
    note D_, 12 ; line 3
    note G_, 2
    note F#, 2
    note E_, 4
    note E_, 4
    note E_, 2
    note D_, 2
    note E_, 2
    note F#, 2
    note G_, 8
    note A_, 4
    note G_, 2
    note A_, 2
    note B_, 4
    note B_, 4
    note A_, 2
    note G_, 2
    note E_, 4
    note E_, 12 ; line 4
    loopchannel 0, Music_Kolob_Ch1_Loop


Music_Kolob_Ch2:
    dutycycle $3
    tone $0002
    vibrato $10, $1F
    notetype $c, $62
    intensity $96
Music_Kolob_Ch2_Loop:
    octave 4
    note E_, 4
    octave 3
    note B_, 4
    note B_, 4
    octave 4
    note C_, 4
    octave 3
    note A_, 4
    octave 4
    note D_, 4
    octave 3
    note B_, 4
    octave 4
    note D_, 4
    note D_, 2
    note F#, 2
    note G_, 4
    note G_, 4
    note E_, 4
    note C_, 4
    octave 3
    note A_, 12 ; line 1
    octave 4
    note D_, 4
    note D_, 4
    note C_, 4
    note C_, 2
    octave 3
    note B_, 2
    note A_, 4
    octave 4
    note D_, 4
    note C#, 4
    note D_, 4
    note D_, 2
    note C_, 2
    octave 3
    note B_, 4
    octave 4
    note D_, 4
    note C_, 4
    note C_, 4
    octave 3
    note B_, 12 ; line 2
    octave 4
    note E_, 2
    note E_, 2
    note F#, 4
    note F#, 4
    note G_, 2
    note D_, 2
    note D_, 4
    note E_, 4
    note D_, 4
    note D_, 4
    note D_, 2
    note F#, 2
    note G_, 4
    note G_, 2
    note F#, 2
    note D_, 4
    note C_, 2
    octave 3
    note B_, 2
    note A_, 12 ; line 3
    octave 4
    note D_, 4
    note D_, 4
    note D_, 4
    note C_, 4
    note C_, 4
    note D_, 6
    note C#, 2
    note D_, 4
    note D_, 2
    note C_, 2
    octave 3
    note B_, 4
    octave 4
    note D_, 4
    note E_, 4
    note C_, 4
    octave 3
    note B_, 12 ; line 4
    loopchannel 0, Music_Kolob_Ch2_Loop


Music_Kolob_Ch3:
    stereopanning $ff
    tone $0003
    vibrato $10, $1F
    notetype $c, $62
    intensity $b5
Music_Kolob_Ch3_Loop:
    octave 3
    note B_, 2
    note A_, 2
    note G_, 4
    note G_, 2
    note D_, 2
    note C_, 4
    note F#, 4
    note G_, 8
    note F#, 4 ; half way
    note G_, 2
    octave 4
    note C_, 2
    octave 3
    note B_, 4
    octave 4
    note D_, 4
    note C_, 4
    octave 3
    note G_, 4
    note D_, 8
    note F#, 4 ; line 1
    octave 2
    note B_, 4
    octave 3
    note C_, 4
    note C_, 2
    octave 2
    note B_, 2
    note A_, 4
    octave 3
    note F#, 4
    note G_, 8
    note F#, 4 ; half way
    note G_, 2
    note F_, 2
    note G_, 4
    note G_, 4
    note E_, 4
    note E_, 2
    note F#, 2
    note G_, 12 ; line 2
    note G_, 2
    note G_, 2
    note B_, 4
    octave 4
    note D_, 4
    note D_, 2
    note C_, 2
    octave 3
    note B_, 4
    note A_, 2
    note G_, 2
    note F#, 4
    note G_, 4 ; half way
    octave 4
    note D_, 2
    note C_, 2
    octave 3
    note B_, 4
    octave 4
    note D_, 2
    note C_, 2
    octave 3
    note B_, 4
    note G_, 4
    note G_, 8
    note F_, 4 ; line 3
    octave 2
    note B_, 4
    octave 3
    note C_, 4
    note C_, 2
    octave 2
    note B_, 2
    note A_, 4
    octave 3
    note F#, 4
    note G_, 8
    note F#, 4 ; half way
    note F#, 4
    note G_, 2
    note F#, 2
    note G_, 4
    note F#, 4
    note E_, 4
    note E_, 2
    note F#, 2
    note G_, 12 ; line 4
    loopchannel 0, Music_Kolob_Ch3_Loop

