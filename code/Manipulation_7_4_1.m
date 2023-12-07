g = 0.9; Fe = 44100;
tau = 0.25*Fe; N = 10*Fe;
X = zeros(1,N); X(1) = 1;
a = zeros(1, tau+1); a(1) = 1;
a(tau+1) = g; b = 1;
Y = filter(b, a, X);
stem(Y)
