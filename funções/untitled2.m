%% Teste de funções

t = -5:0.01:10;

%% Inserir função aqui
x = u(t+2)- u(t-4);

plot(t,x);

%% Range do gráfico
axis([-3 5  0 2])

