function [yconv,yfft]=sobreposicao_soma(x,h,N)

% Comprimento do sinal de entrada
t_x = length(x);

% Comprimento do impulso
t_h = length(h);

% Divide em blocos de tamanho N
blocos = t_x/N;

% Preenche x(n) com zeros até o comprimento (N+K-1)
for i = 1:blocos
    X(i,:) = [x(1+(i-1)*N:i*N) zeros(1,t_h-1)];
end

% Completa o h(n) com zeros
hm = [h zeros(1,N-1)];

% Realiza a convolução circular de cada bloco usando as DFTs de comprmento
% (N + K - 1)
for i = 1:blocos
    Y(i,:) = [zeros(1,(i-1)*N) cconv(X(i,:),hm,N+t_h-1) zeros(1,t_x-(i)*N)];
    YY(i,:) = [zeros(1,(i-1)*N) ifft(fft(X(i,:)).*fft(hm)) zeros(1,t_x-(i)*N)];
end
yconv = zeros(1,t_x+t_h-1);
yfft = zeros(1,t_x+t_h-1);

% Soma o resultado
for i = 1:blocos
    yconv = yconv+Y(i,:);
    yfft = yfft+YY(i,:);
end

