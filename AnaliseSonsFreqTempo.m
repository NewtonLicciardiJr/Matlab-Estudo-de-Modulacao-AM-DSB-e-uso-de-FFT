%--------------------------------------------------------
% Este LAB destina-se a analise e reconhecimento de SONS
%  e seus espectros
%
% Utiliza-se de Capelas (somente a voz humana)
%  e alguns arquivos com instrumentos
%
% Desejamos entender o comportamento temporal
%  e na frequencia
%
% Prof. Newton Licciardi
% Set-2020
% contato> newton.licciardijr@gmail.com
%--------------------------------------------------------
% s1.wav - CAPELA MASCULINA
[s1,fs1] = audioread('s1.wav');
% o sinal estereo deve geral uma matriz bidimensional
% as amostras de cada uma, entre [-1,1], representam o som amostrado do arquivo WAV


% vamos transformar o sinal de som em Mono, por facilidade, somando os canais Esquerdo e Direito
sm1=zeros(length(s1),1);
sm1=(s1(1:end,1)+s1(1:end,2))/2;

figure(1)
clf;
t=1:length(sm1);
t=t/fs1;
plot(t,sm1);
xlabel('t [s]');
ylabel('Amp Sinal');
title ('Comportamento Temporal S1.WAV')

% vamos encontrar agora o diagrama de espectro do sinal Mono equivalente ao s1.wav
flim=600;  %(do gráfico!!)
figure(2)
clf;
f1=fft(sm1);
plot (1:flim, abs(f1(1:flim)));
xlabel('f [Hz]');
ylabel('Módulo Sinal');
title ('Comportamento Espectral S1.WAV')
sound(sm1, fs1)