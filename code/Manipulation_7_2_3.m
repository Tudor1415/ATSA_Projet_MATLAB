[signal, fe] = audioread('input/mehldau.wav'); % Chargez le signal original

% Sous-échantillonnage par un facteur de 2
signal_sous_echantillonne2 = signal(1:2:end);
audiowrite('output/signal_sous_echantillonne2.wav', signal_sous_echantillonne2, fe/2);

% Sous-échantillonnage par un facteur de 4
signal_sous_echantillonne4 = signal(1:4:end);
audiowrite('output/signal_sous_echantillonne4.wav', signal_sous_echantillonne4, fe/4);

% Sous-échantillonnage par un facteur de 8
signal_sous_echantillonne8 = signal(1:8:end);
audiowrite('output/signal_sous_echantillonne8.wav', signal_sous_echantillonne8, fe/8);

