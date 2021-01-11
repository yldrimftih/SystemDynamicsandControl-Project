%Effect of zeta, the damping ratio 
zeta = 0.335;
wn = 4.474;
wd = wn*sqrt(1-zeta^2);
b0 = 2;
a2 = 1;
a1 = 2*wn*zeta;
a0 = wn^2;
t = 1/(wn*zeta);
ts = 4*t;
N = [0 0 b0];
D = [a2 a1 a0];
impulse(N,D); 
grid