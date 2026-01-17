%--------------------------------------------------------
% Este LAB destina-se a analise e reconhecimento de SONS, MODULACAO
%  e seus espectros
%
% Utiliza-se de Capelas (somente a voz humana)
%  e alguns arquivos com instrumentos
%
% Desejamos entender o comportamento temporal
%  e na frequencia
%
% Prof. Newton Licciardi
% Mar-2021
% contato> newton.licciardijr@gmail.com
%--------------------------------------------------------
fmod=10000; % Hz - freq de modulação em Hz. Por ausencia de amostras maiores que 44000 - limita-se a fmod - 20Khz
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
flim=6000;  %(do gráfico!!)
figure(2)
clf;
f1=fft(sm1);
plot (1:flim, abs(f1(1:flim)));
xlabel('f [Hz]');
ylabel('Módulo Sinal');
title ('Comportamento Espectral S1.WAV')

% vamos encontrar agora o diagrama de espectro do sinal Mono equivalente ao s1.wav
flim=39000;  %(do gráfico!!)
figure(3)
clf;
plot (1:flim, abs(f1(1:flim)));
xlabel('f [Hz]');
ylabel('Módulo Sinal');
title ('Comportamento Espectral S1.WAV')


%--------------------------------------------------------
% Agora ... estudando a questão básica da modulação
%  e seus espectros
%
% Utiliza-se de Capela original (somente a voz humana)
%
% Desejamos entender o comportamento temporal
%  e na frequencia
%
% Prof. Newton Licciardi
% Maio 2021
% contato> newton.licciardijr@gmail.com
%--------------------------------------------------------

% Exemplo de função harmônica simples
Fs = fs1;  
t = 0:(1/Fs):1;
fmod=fmod; % freq de modulação 1100 Hz. Por ausencia de amostras maiores que 44000
           %  poderemos fazer o estudo até frequência de modulação de 20K (nyquist ...)
x = sin(2*pi*fmod*t);
x=x';

figure(4)
% apresenta amostras da portadora
clf;
plot(1:3000,x(1:3000))
xlabel('Amostras');
ylabel('Amp portadora');
title ('portadora - 100 amostras')

% Modulando!!!  Em até 20Khz
limite=44000 %amostras
novo_sm1=sm1(1:limite).*x(1:limite);


figure(5)
% apresenta amostras do sinal modulado
clf;
plot(1:3000, sm1(1:3000))
xlabel('Amostras');
ylabel('Amp Sinal');
title ('Sinal  - 300 amostras')



figure(6)
% apresenta amostras do sinal modulado e original - envoltoria
clf;
plot(1:3000, novo_sm1(1:3000))
hold on;
plot(1:3000, sm1(1:3000))
hold off;
xlabel('Amostras');
ylabel('Amp Sinal Mod');
title ('Sinal Modulado - 300 amostras')



% Salva como som - enquanto audivel!!
titulo=sprintf('novosm1_%d.wav', fmod);
audiowrite(titulo , novo_sm1,fs1)
flim=39000;  %(do gráfico!!)
figure(7)
clf;
f1=fft(novo_sm1);
plot (1:flim, abs(f1(1:flim)));
xlabel('f [Hz]');
ylabel('Sinal Modulado - Espectro');
title ('Comportamento Espectral - Sinal Modulado')