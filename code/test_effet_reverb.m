%% Programme de test de l'effet de reverb

%parametres de l'effet

%Chargement du fichier son
[x,Fe]=audioread('input/nylon-guitar.wav');

% Chargement de la réponse impulsionnelle estimée

load('input/hestimee') % A compléter

%application de l'effet
tic;
y=effet_reverb(x,h_estimee);
temps=toc;
fprintf('Temps de calcul: %f s\n',temps);
%lecture du son original et avec effet
soundsc(x,Fe);
pause(4)
soundsc(y,Fe);





