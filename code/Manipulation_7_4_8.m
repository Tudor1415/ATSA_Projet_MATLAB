% Paramètres du filtre
K = 10; % Longueur du filtre
Fs = 44100; % Fréquence d'échantillonnage (Hz)

% Création du filtre h_r(k)
h_r = ones(1, K) / K;

% Calcul de la réponse en fréquence
N = length(h_r); % Longueur de la réponse impulsionnelle
f = (0:N-1) * Fs / N; % Fréquences correspondantes

H_r = fft(h_r, N); % Transformée de Fourier discrète de h_r(k)

% Tracé de la réponse en fréquence
figure;
plot(f, abs(H_r));
title('Réponse en fréquence du filtre h_r(k)');
xlabel('Fréquence (Hz)');
ylabel('Amplitude');

