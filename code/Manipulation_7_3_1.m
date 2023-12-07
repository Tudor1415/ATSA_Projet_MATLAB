% Charger le son piano1.wav
[y, fs] = audioread('input/piano1.wav');

% Visualiser la représentation temporelle
subplot(2, 1, 1);
t = (0:length(y) - 1) / fs;
plot(t, y);
xlabel('Temps (s)');
ylabel('Amplitude');
title('Représentation temporelle');

% Visualiser le spectre d'amplitude en décibels
subplot(2, 1, 2);
N = length(y);
f = (-N/2:N/2-1) * fs / N;
Y = fftshift(fft(y));
amplitude_dB = 10 * log10(abs(Y));
plot(f, amplitude_dB);
xlabel('Fréquence (Hz)');
ylabel('Amplitude (dB)');
title('Spectre d''amplitude en dB');
xlim([-fs/2, fs/2]);

% Écouter la note du piano
sound(y, fs);

