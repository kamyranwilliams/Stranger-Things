# Welcome to Sonic Pi v3.1
#Stranger things
use_bpm 168
use_synth :prophet
with_fx :bitcrusher do
  with_fx :distortion do
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
  end
end
