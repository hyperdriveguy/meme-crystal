; The Battle of Final Destiny - Earthbound
; Demixed by Hyperdriveguy


Music_FinalDestiny:
	musicheader 4, 1, Music_FinalDestiny_Ch1
	musicheader 1, 2, Music_FinalDestiny_Ch2
	musicheader 1, 3, Music_FinalDestiny_Ch3
	musicheader 1, 4, Music_FinalDestiny_Ch4

Music_FinalDestiny_Ch1:
	tempo 155
	volume $77
	dutycycle $2
	tone $0002
	vibrato $1c, $12
	notetype $a, $c7
	stereopanning $0f
	callchannel Music_FinalDestiny_Ch1_Branch1
	callchannel Music_FinalDestiny_Ch1_Branch1
	note F_, 1
	note F_, 1
	note __,1
	note F_, 1
	note F_, 1
	note __,1
	note F_, 1
	note F_, 1
	note __,1
	note F_, 1
	note F_, 1
	note __,1
	note F_, 1
	note __,1
	note F_, 1
	note __,1
	note __,16
	octave 3
	note G_, 4
	octave 4
	note G_, 4
	note C#, 4
	octave 5
	note C#, 4
	stereopanning $ff
	callchannel Music_FinalDestiny_Ch1_Branch2
	callchannel Music_FinalDestiny_Ch1_Branch2
	callchannel Music_FinalDestiny_Ch1_Branch3
	callchannel Music_FinalDestiny_Ch1_Branch3
	note F_, 1
	note D_, 1
	octave 4
	note A_, 1
	octave 5
	note D_, 1
	callchannel Music_FinalDestiny_Ch1_Branch4
	callchannel Music_FinalDestiny_Ch1_Branch4
	note E_, 1
	note C#, 1
	octave 4
	note A_, 1
	octave 5
	note C#, 1
	callchannel Music_FinalDestiny_Ch1_Branch5
	callchannel Music_FinalDestiny_Ch1_Branch5
	note D_, 1
	octave 4
	note A_, 1
	note F_, 1
	note A_, 1
	callchannel Music_FinalDestiny_Ch1_Branch6
	callchannel Music_FinalDestiny_Ch1_Branch6
	octave 5
	note C#, 1
	octave 4
	note A_, 1
	note E_, 1
	note A_, 1
	note F_, 1
	note D_, 1
	note F_, 1
	note A_, 1
	note F_, 1
	note D_, 1
	note F_, 1
	note A_, 1
	octave 5
	note D_, 1
	octave 4
	note A_, 1
	note F_, 1
	note D_, 1
	note F_, 1
	note D_, 1
	note F_, 1
	note A_, 1
	note B_, 1
	note G_, 1
	note D_, 1
	note G#, 1
	note B_, 1
	note G_, 1
	note D_, 1
	note G#, 1
	octave 5
	note D_, 1
	octave 4
	note B_, 1
	note G#, 1
	note E_, 1
	note B_, 1
	note G#, 1
	note E_, 1
	note D_, 1
	octave 5
	note D_, 1
	octave 4
	note G#, 1
	note __,1
	octave 5
	note D_, 1
	octave 4
	note G#, 1
	note __,1
	octave 5
	note D_, 1
	note __,1
	note D_, 1
	octave 4
	note A_, 1
	note __,1
	octave 5
	note D_, 1
	octave 4
	note A_, 1
	note __,1
	octave 5
	note D_, 1
	note __,1
	note C#, 1
	octave 4
	note G_, 1
	note E_, 1
	octave 5
	note C#, 1
	octave 4
	note G_, 1
	note E_, 1
	octave 5
	note C#, 1
	octave 4
	note G_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	octave 3
	note A_, 1
	stereopanning $0f
	callchannel Music_FinalDestiny_Ch1_Branch7
	callchannel Music_FinalDestiny_Ch1_Branch7
	dutycycle $1
	callchannel Music_FinalDestiny_Ch1_Branch8
	callchannel Music_FinalDestiny_Ch1_Branch8
Music_FinalDestiny_Ch1_Loop:
	stereopanning $ff
	notetype $a
	octave 3
	callchannel Music_FinalDestiny_Ch1_Branch9
	callchannel Music_FinalDestiny_Ch1_Branch9
	callchannel Music_FinalDestiny_Ch1_Branch8
	note __, 16
	note __, 16
	notetype $7
	octave 2
	callchannel Music_FinalDestiny_SharedBranch1
	note F_, 16
	callchannel Music_FinalDestiny_SharedBranch1
	note F#, 16
	stereopanning $f0
	octave 2
	callchannel Music_FinalDestiny_Ch1_Branch10
	callchannel Music_FinalDestiny_Ch1_Branch11
	callchannel Music_FinalDestiny_Ch1_Branch10
	callchannel Music_FinalDestiny_Ch1_Branch11
	callchannel Music_FinalDestiny_Ch1_Branch10
	callchannel Music_FinalDestiny_Ch1_Branch11
	callchannel Music_FinalDestiny_Ch1_Branch8
	stereopanning $0f
	notetype $e, $97
	note __, 16
	octave 3
	note A_, 14
	note B_, 10
	note __,2
	note A#, 4
	note G_, 2
	note __,2
	note A_, 12
	note B_, 8
	octave 4
	note C_, 6
	note D_, 4
	octave 3
	note A_, 14
	note B_, 10
	note __,2
	note A#, 4
	note G_, 2
	note __,2
	note A_, 12
	note B_, 8
	octave 4
	note C_, 6
	note D_, 4
	note __, 16
	jumpchannel Music_FinalDestiny_Ch1_Loop
	jumpchannel Music_FinalDestiny_Ch1_Branch12

Music_FinalDestiny_Ch1_Branch1:
	octave 3
	note A_, 6
	note A#, 8
	note __,2
	note A_, 6
	octave 4
	note C_, 8
	note __,2
	endchannel

Music_FinalDestiny_Ch1_Branch2:
	octave 4
	note D_, 4
	note F_, 3
	note D_, 1
	note A_, 8
	note D_, 4
	note F_, 3
	note D_, 1
	note A#, 8
	note E_, 4
	note G_, 3
	note E_, 1
	octave 5
	note C#, 4
	note E_, 4
	note D_, 8
	note C#, 8
	endchannel

Music_FinalDestiny_Ch1_Branch3:
	note F_, 1
	note D_, 1
	octave 4
	note A_, 1
	octave 5
	note F_, 1
	note D_, 1
	octave 4
	note A_, 1
	octave 5
	endchannel

Music_FinalDestiny_Ch1_Branch4:
	note E_, 1
	note C#, 1
	octave 4
	note A_, 1
	octave 5
	note E_, 1
	note C#, 1
	octave 4
	note A_, 1
	octave 5
	endchannel

Music_FinalDestiny_Ch1_Branch5:
	note D_, 1
	octave 4
	note A_, 1
	note F_, 1
	octave 5
	note D_, 1
	octave 4
	note A_, 1
	note F_, 1
	octave 5
	endchannel

Music_FinalDestiny_Ch1_Branch6:
	octave 5
	note C#, 1
	octave 4
	note A_, 1
	note E_, 1
	octave 5
	note C#, 1
	octave 4
	note A_, 1
	note E_, 1
	endchannel

Music_FinalDestiny_Ch1_Branch7:
	octave 4
	note F_, 2
	note __,4
	note G_, 6
	note A_, 2
	note G_, 2
	note F_, 2
	note __,4
	note E_, 2
	note __,8
	endchannel

Music_FinalDestiny_Ch1_Branch8:
	note __, 16
	note __, 16
	note __, 16
	note __, 16
	endchannel

Music_FinalDestiny_Ch1_Branch9:
	note G#, 4
	note G#, 4
	note G#, 4
	note G#, 4
	endchannel

Music_FinalDestiny_Ch1_Branch10:
	note E_, 2
	note E_, 2
	note A#, 4
	note G_, 8
	note E_, 2
	note E_, 2
	octave 3
	note D#, 4
	octave 2
	note A_, 8
	endchannel

Music_FinalDestiny_Ch1_Branch11:
	note E_, 2
	note E_, 2
	note A#, 4
	note G_, 8
	note E_, 2
	note E_, 2
	octave 3
	note D#, 8
	octave 2
	note A_, 4
	endchannel

Music_FinalDestiny_Ch1_Branch12:
	octave 3
	note A_, 14
	note B_, 10
	note __,2
	note A#, 4
	note G_, 2
	note __,2
	note A_, 12
	note B_, 8
	octave 4
	note C_, 6
	note D_, 4
	octave 3
	note A_, 14
	note B_, 10
	note __,2
	note A#, 4
	note G_, 2
	note __,2
	note A_, 12
	note B_, 8
	octave 4
	note C_, 6
	note D_, 4
	note __, 16
	jumpchannel Music_FinalDestiny_Ch1_Loop

Music_FinalDestiny_Ch2:
	dutycycle $2
	vibrato $1c, $12
	notetype $a, $97
	stereopanning $f0
	octave 3
	callchannel Music_FinalDestiny_Ch2_Branch1
	callchannel Music_FinalDestiny_Ch2_Branch1
	note A_, 1
	note A_, 1
	note __,1
	note A_, 1
	note A_, 1
	note __,1
	note A_, 1
	note A_, 1
	note __,1
	note A_, 1
	note A_, 1
	note __,1
	note A_, 1
	note __,1
	note A_, 1
	note __,1
	octave 2
	callchannel Music_FinalDestiny_Ch2_Branch2
	callchannel Music_FinalDestiny_Ch2_Branch2
	callchannel Music_FinalDestiny_Ch2_Branch2
	callchannel Music_FinalDestiny_Ch2_Branch2
	octave 3
	note D_, 4
	octave 4
	note D_, 4
	octave 3
	note G_, 4
	octave 4
	note G_, 4
	callchannel Music_FinalDestiny_Ch2_Branch3
	callchannel Music_FinalDestiny_Ch2_Branch3
	stereopanning $0f
	note D_, 4
	note A_, 4
	octave 4
	note D_, 4
	octave 3
	note A_, 4
	note D_, 4
	note A_, 4
	octave 4
	note E_, 4
	octave 3
	note A_, 4
	note D_, 4
	note A_, 4
	octave 4
	note D_, 4
	octave 3
	note A_, 4
	note D_, 4
	note A_, 4
	octave 4
	note C#, 4
	octave 3
	note A_, 4
	note A_, 16
	note A_, 16
	octave 4
	note E_, 16
	octave 2
	note A_, 16
	stereopanning $f0
	callchannel Music_FinalDestiny_Ch2_Branch4
	callchannel Music_FinalDestiny_Ch2_Branch4
	stereopanning $ff
	intensity $d7
	dutycycle $0
	callchannel Music_FinalDestiny_Ch2_Branch5
	callchannel Music_FinalDestiny_Ch2_Branch5
Music_FinalDestiny_Ch2_Loop:
	stereopanning $f0
	notetype $a, $d7
	octave 2
	note G#, 2
	note G#, 2
	note G#, 2
	octave 3
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	octave 2
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	octave 3
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	octave 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note F#, 2
	note F#, 2
	note F#, 2
	note F#, 2
	note G#, 2
	note G#, 2
	note G#, 2
	octave 3
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	octave 2
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	octave 3
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	octave 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note F#, 2
	note F#, 2
	note F#, 2
	note F#, 2
	notetype $7
	octave 3
	callchannel Music_FinalDestiny_Ch2_Branch7
	note F_, 16
	callchannel Music_FinalDestiny_Ch2_Branch7
	note F#, 16
	stereopanning $0f
	octave 3
	callchannel Music_FinalDestiny_Ch2_Branch8
	callchannel Music_FinalDestiny_Ch2_Branch9
	callchannel Music_FinalDestiny_Ch2_Branch8
	callchannel Music_FinalDestiny_Ch2_Branch9
	callchannel Music_FinalDestiny_Ch2_Branch8
	callchannel Music_FinalDestiny_Ch2_Branch9
	note E_, 2
	note G_, 4
	note E_, 2
	note A#, 4
	note B_, 6
	note F#, 14
	note E_, 2
	note G_, 4
	note E_, 2
	note A#, 4
	note B_, 6
	octave 4
	note C_, 14
	stereopanning $ff
	notetype $e, $d7
	note C#, 2
	note __,2
	note C#, 2
	note __,2
	note C#, 2
	note __,2
	note C#, 2
	note __, 2
	stereopanning $f0
	octave 3
	note D_, 4
	note D_, 4
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 10
	note __,2
	octave 2
	note A#, 4
	note G_, 2
	note __,2
	octave 3
	note D_, 2
	note D_, 4
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 8
	note F_, 6
	note G_, 4
	octave 3
	note D_, 4
	note D_, 4
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 10
	note __,2
	octave 2
	note A#, 4
	note G_, 2
	note __,2
	octave 3
	note D_, 2
	note D_, 4
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 8
	note F_, 6
	note G_, 4
	stereopanning $ff
	note G#, 4
	note G#, 4
	note G#, 4
	note G#, 4
	jumpchannel Music_FinalDestiny_Ch2_Loop

Music_FinalDestiny_Ch2_Branch1:
	note E_, 6
	note F_, 8
	note __,2
	note E_, 6
	note G_, 8
	note __,2
	endchannel

Music_FinalDestiny_Ch2_Branch2:
	note A_, 1
	note A#, 1
	note A_, 1
	note A#, 1
	endchannel

Music_FinalDestiny_Ch2_Branch3:
	octave 3
	note D_, 4
	note F_, 3
	note D_, 1
	octave 4
	note D_, 8
	octave 3
	note D_, 4
	note F_, 3
	note D_, 1
	octave 4
	note E_, 8
	octave 3
	note E_, 4
	note G_, 3
	note E_, 1
	octave 4
	note E_, 4
	note G_, 4
	octave 3
	note A_, 8
	note G#, 8
	endchannel

Music_FinalDestiny_Ch2_Branch4:
	octave 3
	note A_, 2
	note __,4
	note A#, 6
	octave 4
	note C_, 2
	octave 3
	note B_, 2
	note A_, 2
	note __,4
	note G_, 2
	note __,8
	endchannel

Music_FinalDestiny_Ch2_Branch5:
	octave 2
	note B_, 6
	octave 3
	note C_, 10
	octave 2
	note B_, 6
	octave 3
	note D_, 10
	octave 2
	note B_, 6
	octave 3
	note C_, 10
	octave 2
	note B_, 6
	octave 3
	note D#, 10
	endchannel

Music_FinalDestiny_Ch2_Branch7:
	note F_, 2
	note F_, 4
	note F_, 2
	note F_, 4
	note F_, 4
	endchannel

Music_FinalDestiny_Ch2_Branch8:
	note E_, 2
	note E_, 2
	note A#, 4
	note G_, 8
	note E_, 2
	note E_, 2
	octave 4
	note D#, 4
	octave 3
	note A_, 8
	endchannel

Music_FinalDestiny_Ch2_Branch9:
	note E_, 2
	note E_, 2
	note A#, 4
	note G_, 8
	note E_, 2
	note E_, 2
	octave 4
	note D#, 8
	octave 3
	note A_, 4
	endchannel

Music_FinalDestiny_Ch2_Branch10:
	octave 3
	note D_, 4
	note D_, 4
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 10
	note __,2
	octave 2
	note A#, 4
	note G_, 2
	note __,2
	octave 3
	note D_, 2
	note D_, 4
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 8
	note F_, 6
	note G_, 4
	endchannel

Music_FinalDestiny_Ch3:
	stereopanning $ff
	vibrato $12, $24
	notetype $a, $16
	tone $0003
	octave 2
	stereopanning $f0
	callchannel Music_FinalDestiny_Ch3_Branch1
	stereopanning $0f
	callchannel Music_FinalDestiny_Ch3_Branch1
	stereopanning $f0
	callchannel Music_FinalDestiny_Ch3_Branch1
	stereopanning $0f
	callchannel Music_FinalDestiny_Ch3_Branch1
	stereopanning $ff
	note __, 16
	octave 3
	note C#, 2
	note D_, 2
	note C#, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note C#, 2
	note A#, 2
	note A_, 1
	note G_, 1
	note F_, 1
	note G_, 1
	note F_, 1
	note E_, 1
	note F_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note D_, 1
	note C#, 1
	note D_, 1
	octave 2
	note A_, 1
	octave 3
	note C#, 1
	note E_, 1
	callchannel Music_FinalDestiny_Ch3_Branch2
	callchannel Music_FinalDestiny_Ch3_Branch2
	callchannel Music_FinalDestiny_Ch1_Branch8
	stereopanning $f0
	octave 2
	note A_, 16
	note A_, 16
	note A_, 16
	note A_, 16
	callchannel Music_FinalDestiny_Ch3_Branch3
	callchannel Music_FinalDestiny_Ch3_Branch3
	callchannel Music_FinalDestiny_Ch3_Branch3
	callchannel Music_FinalDestiny_Ch3_Branch3
	callchannel Music_FinalDestiny_Ch3_Branch3
	callchannel Music_FinalDestiny_Ch3_Branch3
	callchannel Music_FinalDestiny_Ch3_Branch3
	callchannel Music_FinalDestiny_Ch3_Branch3
	stereopanning $ff
	intensity $17
	callchannel Music_FinalDestiny_Ch3_Branch4
	callchannel Music_FinalDestiny_Ch3_Branch4
Music_FinalDestiny_Ch3_Loop:
	stereopanning $0f
	notetype $a, $17
	callchannel Music_FinalDestiny_Ch3_Branch5
	callchannel Music_FinalDestiny_Ch3_Branch5
	notetype $7, $17
	callchannel Music_FinalDestiny_SharedBranch1
	note F_, 16
	callchannel Music_FinalDestiny_SharedBranch1
	note F#, 16
	stereopanning $ff
	note E_, 2
	note E_, 2
	note __, 12
	note __, 16
	note E_, 2
	note E_, 2
	note __, 12
	note __, 16
	callchannel Music_FinalDestiny_Ch1_Branch8
	callchannel Music_FinalDestiny_Ch1_Branch8
	stereopanning $f0
	note E_, 2
	note G_, 4
	note E_, 2
	note A#, 4
	note B_, 6
	note F#, 14
	note E_, 2
	note G_, 4
	note E_, 2
	note A#, 4
	note B_, 6
	octave 3
	note C_, 14
	notetype $e, $27
	note C#, 2
	note __,14
	stereopanning $ff
	callchannel Music_FinalDestiny_Ch3_Branch6
	callchannel Music_FinalDestiny_Ch3_Branch6
	callchannel Music_FinalDestiny_Ch3_Branch6
	callchannel Music_FinalDestiny_Ch3_Branch6
	note __, 16
	loopchannel 0, Music_FinalDestiny_Ch3_Loop

Music_FinalDestiny_Ch3_Branch1:
	note A_, 2
	note A#, 2
	note B_, 2
	octave 3
	note C_, 2
	note C#, 2
	note C_, 2
	octave 2
	note B_, 2
	note A#, 2
	endchannel

Music_FinalDestiny_Ch3_Branch2:
	octave 2
	note D_, 1
	note D_, 1
	note A_, 1
	note A_, 1
	note G#, 1
	note G#, 1
	note G_, 1
	note G_, 1
	note F#, 1
	note F#, 1
	note F_, 1
	note F_, 1
	note E_, 1
	note E_, 1
	note D#, 1
	note D#, 1
	note D_, 1
	note D_, 1
	octave 3
	note C_, 1
	note C_, 1
	octave 2
	note B_, 1
	note B_, 1
	note A#, 1
	note A#, 1
	note A_, 1
	note A_, 1
	note G#, 1
	note G#, 1
	note G_, 1
	note G_, 1
	note F#, 1
	note F#, 1
	note D_, 1
	note D_, 1
	octave 3
	note D_, 1
	note D_, 1
	note C#, 1
	note C#, 1
	note C_, 1
	note C_, 1
	octave 2
	note B_, 1
	note B_, 1
	note A#, 1
	note A#, 1
	note A_, 1
	note A_, 1
	note G#, 1
	note G#, 1
	note D_, 2
	octave 3
	note F_, 2
	note E_, 2
	note C#, 2
	octave 2
	note A_, 2
	octave 3
	note B_, 2
	note A_, 2
	note G_, 2
	endchannel

Music_FinalDestiny_Ch3_Branch3:
	stereopanning $f0
	octave 2
	note D_, 2
	stereopanning $0f
	octave 3
	note D_, 1
	note D_, 1
	stereopanning $f0
	octave 2
	note D_, 2
	stereopanning $0f
	octave 3
	note D_, 1
	note D_, 1
	endchannel

Music_FinalDestiny_Ch3_Branch4:
	octave 2
	note E_, 6
	note F_, 10
	note E_, 6
	note G_, 10
	note E_, 6
	note F_, 10
	note E_, 6
	note G#, 10
	endchannel

Music_FinalDestiny_Ch3_Branch5:
	note G#, 2
	note G#, 2
	note G#, 2
	octave 3
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note D#, 2
	octave 2
	note G#, 2
	note G#, 2
	note G#, 2
	note G#, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	octave 3
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	octave 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note F#, 2
	note F#, 2
	note F#, 2
	note F#, 2
	endchannel

Music_FinalDestiny_Ch3_Branch6:
	octave 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note A#, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	note G_, 2
	endchannel

Music_FinalDestiny_Ch4:
	notetype $a
	togglenoise 3
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	note B_, 1
	note B_, 1
	note __,1
	note B_, 1
	note B_, 1
	note __,1
	note B_, 1
	note B_, 1
	note __,1
	note B_, 1
	note B_, 1
	note __,1
	note B_, 1
	note __,1
	note B_, 1
	note __,1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch1
	callchannel Music_FinalDestiny_Ch4_Branch2
	callchannel Music_FinalDestiny_Ch4_Branch2
	callchannel Music_FinalDestiny_Ch4_Branch2
	callchannel Music_FinalDestiny_Ch4_Branch2
	callchannel Music_FinalDestiny_Ch4_Branch2
	callchannel Music_FinalDestiny_Ch4_Branch2
	callchannel Music_FinalDestiny_Ch4_Branch2
	callchannel Music_FinalDestiny_Ch4_Branch2
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch7
	callchannel Music_FinalDestiny_Ch4_Branch4
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch7
	callchannel Music_FinalDestiny_Ch4_Branch4
Music_FinalDestiny_Ch4_Loop:
	notetype $a
	callchannel Music_FinalDestiny_Ch4_Branch5
	callchannel Music_FinalDestiny_Ch4_Branch4
	callchannel Music_FinalDestiny_Ch4_Branch5
	callchannel Music_FinalDestiny_Ch4_Branch4
	notetype $7
	callchannel Music_FinalDestiny_Ch4_Branch6
	note C_, 4
	note __,2
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	callchannel Music_FinalDestiny_Ch4_Branch6
	note C_, 4
	note __,4
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	note __,12
	note __,16
	note C_, 2
	note C_, 2
	note __,12
	callchannel Music_FinalDestiny_Ch4_Branch4
	callchannel Music_FinalDestiny_Ch4_Branch4
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch7
	callchannel Music_FinalDestiny_Ch4_Branch4
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch3
	callchannel Music_FinalDestiny_Ch4_Branch7
	callchannel Music_FinalDestiny_Ch4_Branch4
	callchannel Music_FinalDestiny_Ch4_Branch6
	note __,2
	note C_, 2
	note __,2
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 2
	note C_, 2
	note C_, 2
	callchannel Music_FinalDestiny_Ch4_Branch6
	note D#, 2
	note C_, 2
	note C_, 2
	note __,2
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 2
	note C_, 2
	notetype $e
	note C_, 2
	note __,14
	callchannel Music_FinalDestiny_Ch4_Branch8
	callchannel Music_FinalDestiny_Ch4_Branch8
	note __,16
	loopchannel 0, Music_FinalDestiny_Ch4_Loop

Music_FinalDestiny_Ch4_Branch1:
	note D#, 1
	note D#, 1
	note B_, 2
	note D#, 1
	note D#, 1
	note B_, 2
	endchannel

Music_FinalDestiny_Ch4_Branch2:
	note D#, 2
	note B_, 1
	note B_, 1
	note D#, 2
	note B_, 1
	note B_, 1
	endchannel

Music_FinalDestiny_Ch4_Branch3:
	note C_, 1
	note D#, 1
	note D#, 1
	note D#, 1
	note C_, 1
	note D#, 1
	note D#, 1
	note D#, 1
	endchannel

Music_FinalDestiny_Ch4_Branch4:
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	endchannel

Music_FinalDestiny_Ch4_Branch5:
	note D#, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note D#, 1
	note D#, 1
	note D#, 2
	note C_, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note C_, 2
	note D#, 1
	note D#, 1
	note C_, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note C_, 1
	note D#, 1
	note D#, 2
	note D#, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note C_, 2
	note D#, 2
	endchannel

Music_FinalDestiny_Ch4_Branch6:
	note C_, 2
	note C_, 4
	note D#, 2
	note C_, 4
	note C_, 4
	endchannel

Music_FinalDestiny_Ch4_Branch7:
	note C_, 1
	note C_, 1
	note D#, 1
	note D#, 1
	note C_, 1
	note C_, 1
	note D#, 1
	note D#, 1
	endchannel

Music_FinalDestiny_Ch4_Branch8:
	note D#, 2
	note D#, 2
	note C_, 2
	note D#, 2
	note D#, 1
	note D#, 1
	note D#, 2
	note C_, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note C_, 2
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 2
	note D#, 2
	note D#, 2
	note D#, 2
	note C_, 1
	note D#, 1
	note D#, 2
	note D#, 2
	note D#, 2
	note C_, 2
	note C_, 2
	note D#, 2
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note D#, 2
	note C_, 1
	note C_, 1
	note C_, 2
	note C_, 1
	note C_, 1
	endchannel

Music_FinalDestiny_SharedBranch1:
	note F_, 2
	note F_, 4
	note F_, 2
	note F_, 4
	note F_, 4
	endchannel

;	note D#, 4 ; Low Drum
;	note C_, 4 ; High Drum
;	note B_, 4 ; Cymbal

