function [S f t] = spectrogram(signal, fs, window_size)
	S = 0;
  f = 0;
  t = 0;
  [m n] = size(signal);

  size_t = floor(m/window_size);
  %reprezinta numarul de ferestre
  S = zeros(window_size, size_t);
  f = zeros(window_size, 1);
  t = zeros(size_t, 1);
  step_t = window_size/fs;
  step_f = fs/2/window_size;
  for i = 1:size_t
    t(i) = (i-1)*step_t;
  endfor
%f max reprezinta jumayate din Nyquist frequency sia stfel f max = fs/2

%apoi ca sa aflu pasul de frecventa trebuie sa impart intervalul de frecventa
%la numarul de puncte din fereastra
  for i = 1:window_size
    f(i) = (i-1)*step_f;
  endfor

% aplic functa Hann

signal_hanning = hanning(window_size);

for i=1:size_t
  %extrag o fereastra de dimensiune window_size
  window = signal((i-1)*window_size+1:i*window_size);
  %aplic functia hanning
  window = window.*signal_hanning;
  %aplic transformata fourier
  aux = fft(window,2*window_size);
  S(:,i) = abs(aux(1:window_size));

endfor
endfunction

