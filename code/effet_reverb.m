function y = effet_reverb(x, h_estimee)
    % Convolution du signal x avec la réponse impulsionnelle estimée
    y = filter(h_estimee, 1, x);
end

