[signal, fe] = audioread('mehldau.wav');
X = fft(signal);
f = (0:length(X)-1)*fe/length(X);
figure; plot(f, abs(X));
title('Spectre original');
xlabel('Fréquence (Hz)');
ylabel('Amplitude');

signal_sous_echantillonne2 = signal(1:2:end);
X2 = fft(signal_sous_echantillonne2);
f2 = (0:length(X2)-1)*(fe/2)/length(X2);
figure; plot(f2, abs(X2));
title('Spectre sous-échantillonné facteur 2');
xlabel('Fréquence (Hz)');
ylabel('Amplitude');

signal_sous_echantillonne4 = signal(1:4:end);
X4 = fft(signal_sous_echantillonne4);
f4 = (0:length(X4)-1)*(fe/4)/length(X4);
figure; plot(f4, abs(X4));
title('Spectre sous-échantillonné facteur 4');
xlabel('Fréquence (Hz)');
ylabel('Amplitude');

signal_sous_echantillonne8 = signal(1:8:end);
X8 = fft(signal_sous_echantillonne8);
f8 = (0:length(X8)-1)*(fe/8)/length(X8);
figure; plot(f8, abs(X8));
title('Spectre sous-échantillonné facteur 8');
xlabel('Fréquence (Hz)');
ylabel('Amplitude');



