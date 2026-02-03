clc; clear; close all;

n = -10:10;



 %1. Unit Impulse Signal
 x_dt = double(n == 0);
 signal_name = 'Unit Impulse Signal';

% 2. Unit Step Signal
 x_dt = double(n >= 0);
 signal_name = 'Unit Step Signal';

 %3. Ramp Signal
 x_dt = n .* double(n >= 0);
 signal_name = 'Ramp Signal';

 %4. Parabolic Signal
 x_dt = (n.^2 / 2) .* double(n >= 0);
 signal_name = 'Parabolic Signal';

figure


stem(n, x_dt, 'filled' ,'LineWidth', 1.0)
grid on
axis([-10 10 -1 10])
xlabel('n')
ylabel('x[n]')
title('Discrete-Time - KILIKHANG 24106043')

sgtitle(signal_name) 
