function y_delayed = effet_delay(x, delay_time, g, Fe)
    % Calcul du nombre d'échantillons de retard
    tau_samples = round(delay_time * Fe);

    % Création du vecteur de sortie initialisé à zéro
    y_delayed = zeros(size(x));

    % Appliquer le filtre de retard
    for n = 1:length(x)
        if n - tau_samples > 0
            y_delayed(n) = x(n) - g * x(n - tau_samples);
        else
            y_delayed(n) = x(n);
        end
    end
end

