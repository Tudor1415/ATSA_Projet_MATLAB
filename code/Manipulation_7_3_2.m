% Charger les fichiers audio
[y1, fs1] = audioread('input/piano1.wav');
[y2, fs2] = audioread('input/piano2.wav');

% Calculer le spectre d'amplitude pour piano1.wav
N1 = length(y1);
f1 = (-N1/2:N1/2-1) * fs1 / N1;
Y1 = fftshift(fft(y1));
amplitude_dB1 = 10 * log10(abs(Y1));

% Calculer le spectre d'amplitude pour piano2.wav
N2 = length(y2);
f2 = (-N2/2:N2/2-1) * fs2 / N2;
Y2 = fftshift(fft(y2));
amplitude_dB2 = 10 * log10(abs(Y2));

% Tracer les spectres d'amplitude sur une même figure
figure;
subplot(2, 1, 1);
plot(f1, amplitude_dB1);
xlabel('Fréquence (Hz)');
ylabel('Amplitude (dB)');
title('Spectre d''amplitude de piano1.wav');
xlim([-fs1/2, fs1/2]);

subplot(2, 1, 2);
plot(f2, amplitude_dB2);
xlabel('Fréquence (Hz)');
ylabel('Amplitude (dB)');
title('Spectre d''amplitude de piano2.wav');
xlim([-fs2/2, fs2/2]);

