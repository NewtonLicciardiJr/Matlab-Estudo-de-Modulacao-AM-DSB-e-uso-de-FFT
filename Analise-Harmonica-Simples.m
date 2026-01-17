 
% Exemplo de função harmônica simples
Fs = 32000;   %frequência de amostragem – o que significa isto?
t = 0:(1/Fs):1;
x = sin(2*pi*1100*t);
clc;
figure(1)
clf;
plot(t,x);

figure(3) %parte das amostras
clf;
plot(t(1:200),x(1:200));

figure(2);
clf;
f=fft(x); % evoca a FFT para o sinal temporal
plot (1:2000, abs(f(1:2000))); % apresenta o Módulo do Sinal
% a Fase não é importante?

figure(4);
clf;
f=fft(x); % evoca a FFT para o sinal temporal
plot (1:32001, abs(f(1:32001))); % apresenta o Módulo do Sinal
% a Fase não é importante?

