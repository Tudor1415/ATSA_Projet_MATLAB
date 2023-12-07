% Charger les données du fichier signal_excitation.mat
load('input/signal_excitation.mat');

% Appeler la fonction simule_piece pour simuler l'effet de la pièce
xe_simule = simule_piece(xe1, 44100);

% Calculer la corrélation croisée entre le signal capté (xe_simule) et le signal d'excitation (xe1)
correlation_yx = xcorr(xe_simule, xe1);

% Effectuer la transformation de Fourier inverse pour obtenir la réponse impulsionnelle estimée
h_estimee = ifft(correlation_yx);

% Charger les données audio (fichier "nylon_guitar.wav")
[x, Fe] = audioread('input/nylon-guitar.wav');

% Mesurer le temps de calcul de la fonction effet_reverb
tic; % Début du chronomètre
y_reverb = effet_reverb(xe_simule, h_estimee); % Appel de la fonction
temps_execution = toc; % Fin du chronomètre

% Afficher le temps de calcul
fprintf('Temps d''exécution de la fonction effet_reverb : %.4f secondes\n', temps_execution);


