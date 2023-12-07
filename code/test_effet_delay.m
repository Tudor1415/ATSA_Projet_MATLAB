%% Programme de test de l'effet de delay

%parametres de l'effet
tau=    0.25;
g=      0.9 ;
K = 10;
%Chargement du fichier son
[x,Fe]=audioread('input/piano_chord.wav');

%application de l'effet
tic;
y1=y_delayed(x,tau,g,Fe);
temps=toc;
fprintf('Temps de calcul: %f s\n',temps);
soundsc(y1,Fe)

% Application de l'effet avec la fonction y_delayed
tic;
y1 = effet_delay_filtre(x, tau, g, K, Fe);
temps = toc;
fprintf('Temps de calcul avec effet_delay_filtre_synthetique : %f s\n', temps);

% Sauvegarde du résultat sonore
audiowrite('output/piano_delay_filtre.wav', y1, Fe);

