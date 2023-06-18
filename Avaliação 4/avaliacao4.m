% Nome: Gustavo Paulo
% Prof: DEISE MONQUELATE ARNDT
% Disciplina: Sinais e Sistemas I (2023-1)
close all
clear all
clc

% definindo tempo de amostragem
t = -3.5:0.01:3.5;

% número max de componentes
N = 50;

% definindo amplitude do sinal
A = 1; % só pra simbolizar que A é um número inteiro qualquer e conseguir plotar sem dar erro

% Inicializar o sinal
x = zeros(size(t)); % a0 

% calculando a série de fourier
for n = 1:2:N
    x = x + (8*A/(pi^2)) * (1/n^2) * cos(n*pi*t);
end

% plotando o sinal
plot(t, x)
xlabel('Tempo')
ylabel('Amplitude')
title('Simulação')

% definindo pontos de marcação no eixo x
xticks(-3:1:3)

% atribuindo as legendas pro eixo x
xticklabels({-3', '-2', '-1', '0', '1', '2', '3'})

% definindo pontos de marcação no eixo y
yticks([-A, 0, A])

% atribuindo as legendas pro eixo y
yticklabels({'-A', '0', 'A'})