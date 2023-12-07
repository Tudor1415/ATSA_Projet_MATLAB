fc = 40000;
fe = 44100;
t = [0 : 1 / fe : 5];
x = sin(2 * pi * t * fc);
soundsc(x, fe);

% Calcul du spectre
X = fft(x);
f = (0:length(X)-1)*fe/length(X); % Axe des fréquences

% Affichage du spectre
figure;
plot(f, abs(X));
title('Spectre et Repliement de Spectre');
xlabel('Fréquence (Hz)');
ylabel('Amplitude');
xlim([0 50000]); % Limite de l'axe des X

