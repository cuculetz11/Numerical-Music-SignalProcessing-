function x = oscillator(freq, fs, dur, A, D, S, R)
 
  ultimul = round(dur * fs);
  
  for i = 1:ultimul
    t(i) = (i-1)/fs;
  endfor

  attack_samples = floor(A * fs);
  attack = linspace(0, 1, attack_samples);

  decay_samples = floor(D * fs);
  decay = linspace(1, S, decay_samples);

  sustain_samples = round((dur - A - D - R) * fs);
  sustain = S * ones(1, sustain_samples);

  release_samples = floor(R * fs);
  release = linspace(S, 0, release_samples);

  envelope = [attack, decay, sustain, release];

  x = envelope .* sin(2 * pi * freq * t);
  x = x';
  
endfunction