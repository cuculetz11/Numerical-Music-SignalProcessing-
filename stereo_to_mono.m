function mono = stereo_to_mono(stereo)
  [m n] = size(stereo);
  mono = stereo
  mono = mean(mono,2) 
  %2 pentru ca facem media pe dimensiunea a2-a(adica pe coloane)

  % Normalize
  mono = mono / max(abs(mono));
endfunction

