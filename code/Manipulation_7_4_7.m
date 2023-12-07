% Mesurer le temps de calcul de la fonction effet_reverb_FFT
tic; % Début du chronomètre
y_reverb_FFT = effet_reverb_FFT(xe_simule, h_estimee); % Appel de la fonction effet_reverb_FFT
temps_execution_FFT = toc; % Fin du chronomètre

% Afficher le temps de calcul
fprintf('Temps d''exécution de la fonction effet_reverb_FFT : %.4f secondes\n', temps_execution_FFT);

