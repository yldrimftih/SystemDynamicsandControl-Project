%Effect of zeta, the damping ratio
zeta = 0.335;
wn = 4.474;
b0 = 2;
a2 = 1;
a1 = 2*zeta*wn;
a0 = wn^2;
T  = 1/(wn*zeta);
ts = 4*T;
wd = wn*sqrt(1-zeta^2);
t = 0:0.001:5;
N = [0 0 b0];
D = [a2 a1 a0];
[y1,t1] = step(N,D,t);
%[y2,t2] = impulse(N,D,t);
%subplot(211);
plot(t,y1);
grid;
title('Step Response')