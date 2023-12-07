% Paramètres
g = 0.9;
Fe = 44100;
tau = 0.25 * Fe;
N = 10 * Fe;
nu = linspace(-0.5, 0.5, N); % Fréquences réduites entre -0.5 et 0.5

% Calcul de la réponse en fréquence théorique
h_theorique = 1 ./ (1 + g * exp(-2j * pi * nu * tau));

% Calcul de la réponse impulsionnelle numérique
X = zeros(1, N);
X(1) = 1;
a = zeros(1, tau + 1);
a(1) = 1;
a(tau + 1) = -g;
b = 1;
Y = filter(b, a, X);

% Calcul de la DFT de la réponse impulsionnelle numérique
h_numerique = fft(Y);

% Tracé des modules
figure;
plot(nu, abs(h_theorique), 'b', 'LineWidth', 2, 'DisplayName', 'Théorique');
hold on;
plot(nu, abs(h_numerique), 'r', 'LineWidth', 2, 'DisplayName', 'Numérique');
xlabel('Fréquence réduite (\nu)');
ylabel('Module de la réponse en fréquence');
% title('Comparaison de la réponse en fréquence théorique et numérique');
legend('Location', 'Best');
grid on;

% Affichage du graphique

