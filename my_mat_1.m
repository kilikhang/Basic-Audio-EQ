fs = 44100;      % Sampling frequency
fc = 1000;       % Cutoff frequency
order = 10000;     % Filter order

Wn = fc/(fs/2);  % Normalized cutoff frequency
b = fir1(order, Wn, 'high');

figure
freqz(b, 1, 1024, fs)
title('FIR HIGH-Pass Filter Frequency Response')
grid on
