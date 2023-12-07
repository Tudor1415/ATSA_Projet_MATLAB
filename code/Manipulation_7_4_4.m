% Charger les données du fichier signal_excitation.mat
load('input/signal_excitation.mat');

% Appeler la fonction simule_piece pour simuler l'effet de la pièce
xe_simule = simule_piece(xe1, 44100);

% Calculer la corrélation croisée entre le signal capté (xe_simule) et le signal d'excitation (xe1)
correlation_yx = xcorr(xe_simule, xe1);

% Effectuer la transformation de Fourier inverse pour obtenir la réponse impulsionnelle estimée
h_estimee = ifft(correlation_yx);

% Tracé de la réponse impulsionnelle estimée en fonction du temps
figure;
plot(1:length(h_estimee), h_estimee);
title('Réponse impulsionnelle estimée de la pièce');
xlabel('Temps (échantillons)');
ylabel('Amplitude');


