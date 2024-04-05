
% Questão 1

n = 0:7;

x1_n = [0, 1, 2, 3, 2, 1, 0, 0];
x2_n = [2, 1, 0, 0, 0, 1, 2, 3];

X1_k = fft(x1_n) .* (
    exp(-1i * 2 * pi / 8 * 4 * n)
);

figure(1);
subplot(2, 1, 1);
stem(n, x1_n, 'b', 'filled');
title('x1[n]');
xlabel('n');
ylabel('Amplitude');

subplot(2, 1, 2);
stem(n, x2_n, 'r', 'filled');
title('x2[n]');
xlabel('n');
ylabel('Amplitude');

% Questão 2
M = 4;
m = 0:M-1;
k = 0:M-1;
s = [1,0,-1,0];
t = [1,2,4,8];
S = fft(s);
T = fft(t);

% convolução direta
conv_dir = cconv(s, t, 4);

% realiza a multiplicação
conv_mult = ifft(fft(s).*fft(t));

figure(2)
subplot(211)
stem(k, conv_dir,'b', 'LineWidth', 2);
title('Convolução Circular Direta');

subplot(212)
stem(k, conv_mult,'r', 'LineWidth', 2);
title('Convolução circular com multiplicação e inversa');

% Questão 3
n = 0:7;

x1_n = [1, 2, 1, 1, 2, 1, 1, 2];
x2_n = [0, 1, 3, 2, 0, 0, 0, 0];
x3_n = cconv(x1_n, x2_n, 8);

figure(3)
stem(n, x3_n, 'b', 'LineWidth', 3);
xlabel('n');
ylabel('Amplitude');
title('Convolução Circular x3[n]');
grid on;

% Questão 5
N = 9;
n = 0:N-1;

x1_n = [1, -2, -1, 3, 0, 0, 0, 0, 0];
x2_n = [0, 2, 0, 0, -1, 1, 0, 0, 0];

circ_conv = cconv(x1_n, x2_n, N);
linear_conv = conv(x1_n, x2_n);

figure(5)
subplot(211)
stem(n, circ_conv, 'b', 'LineWidth', 3);
xlabel('n');
ylabel('Amplitude');
title('Convolução Circular');
grid on;

subplot(212)
stem(0:length(linear_conv)-1, linear_conv, 'r', 'LineWidth', 3);
xlabel('n');
ylabel('Amplitude');
title('Convolução Linear');
grid on;

% Questão 7
M = 2^11;
N = 2^10 + 1;
FFT = (M/2)*log2(M)
DFT = N^2
