% Limpar variáveis, figuras e console
clear all; 
close all; 
clc;

% Definir vetor de tempo
t = -10:0.001:10;

% Definir frequência fundamental
w0 = 1; % rad/s

% Definir amplitude do sinal
A = 1;

% Gerar onda quadrada
x = A * square(w0*t);

% Plotar a onda quadrada em função do tempo
plot(t, x);
xlabel('Tempo');
ylabel('Amplitude');
title('Onda Quadrada');
hold on;

% Calcular e plotar a primeira, terceira e quinta harmônica
X1 = ((-2/pi) .* cos(pi) + (2/pi)) .* sin(w0.*t);
X3 = X1 + (-2/(3*pi) .* cos(3*pi) + 2/(3*pi)) .* sin(3*w0.*t);
X5 = X3 + (-2/(5*pi) .* cos(5*pi) + 2/(5*pi)) .* sin(5*w0.*t);

plot(t, X1);
plot(t, X3);
plot(t, X5);
xlabel('Tempo');
ylabel('Amplitude');
title('Harmônicas da Onda Quadrada');
legend('Onda Quadrada', 'Primeira Harmônica', 'Terceira Harmônica', 'Quinta Harmônica');
grid on;
hold off;

harmn = 0;

for k = 1:50000
    harmn = harmn + (-2/k*pi) * (cos(k*pi) - 1) .*  (sin(k.*t));
end

plot(t,harmn)