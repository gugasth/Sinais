%% 
clear all
close all
clc

n = -5:10;

%% Teste de funções (inserir abaixo a função)
x = (n-2).* (u(n-2)-u(n-6))+(-n+8) .* (u(n-6) - u(n-9))

%% Plotando os resultados

stem(n, x); % Plotting the stem plot for the discrete signal
title('Sinal Discreto'); % Title for the plot