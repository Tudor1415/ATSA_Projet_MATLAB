% Load the 'signal' package
pkg load signal

% Charger les données du fichier signal_excitation.mat
load('input/signal_excitation.mat');

% Calculer la corrélation croisée entre les signaux xe1 et xe2
correlation_xe1 = xcorr(xe1, xe1);
correlation_xe2 = xcorr(xe2, xe2);

% Afficher les résultats
figure;
subplot(2, 1, 1);
plot(correlation_xe1);
title('Corrélation croisée entre xe1 et xe1');

subplot(2, 1, 2);
plot(correlation_xe2);
title('Corrélation croisée entre xe2 et xe2');

