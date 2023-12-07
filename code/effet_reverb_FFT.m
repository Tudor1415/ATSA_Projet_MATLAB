function y_reverb = effet_reverb_FFT(x, h_estimee)
    N = max([length(x) length(h_estimee)]);

    % Calcule la transformée de Fourier discrète de la réponse impulsionnelle
    H = fft(h_estimee, N);

    % Calcule la transformée de Fourier discrète du signal d'entrée
    X = fft(x, N);

    % Effectue la multiplication dans le domaine fréquentiel
    Y = H .* X;

    % Calcule l'inverse de la transformée de Fourier discrète pour obtenir le signal filtré
    y_reverb = ifft(Y, N);
end
