function signal = low_pass(signal, fs, cutoff_freq)
 
  [m n] = size(signal);
  x = fft(signal);
  
  %calculam frecventele
  step_f = fs/m;
  for i = 1:m
    f(i) = (i-1)*step_f;
  endfor
  
  %eliminam frecventele mai mari decat cutoff_freq
  for i = 1:m
    if f(i) > cutoff_freq
      x(i) = 0;
    endif
    endfor

  signal = ifft(x);
  %normez semnalul
  signal = signal/max(abs(signal));

endfunction

