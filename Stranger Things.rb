# Welcome to Sonic Pi v3.1
#Stranger things
use_bpm 168
use_synth :prophet
with_fx :distortion do
  live_loop :bop do
    play :C3
    sleep 0.5
    play :e3
    sleep 0.5
    play :g3
    sleep 0.5
    play :b3
    sleep 0.5
    play :c4
    sleep 0.5
    play :b3
    sleep 0.5
    play :g3
    sleep 0.5
    play :e3
    sleep 0.5
  end
  #heartbeat + bassline code andhttps://in-thread.sonic-pi.net/t/stranger-things-theme-song/408
  live_loop :heartbeat do
    loop do
      with_fx :lpf, cutoff: 90 do
        with_fx :reverb do
          sample :drum_bass_soft
          sleep 0.2
          sample :drum_bass_soft
          sleep 0.55
        end
      end
    end
  end
  
  define :bassline do
    use_synth :hollow
    play :e2, sustain: 1, release: 1, cutoff: rrand(70, 130)
    sleep 1
  end
  
  in_thread(name: :bassline) do
    loop do
      bassline
    end
  end
end
