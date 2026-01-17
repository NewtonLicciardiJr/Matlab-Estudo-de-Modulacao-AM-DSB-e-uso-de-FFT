# Estudo de Modulação via FFT em MATLAB

Este repositório contém scripts MATLAB desenvolvidos para o laboratório de Processamento de Sinais, focando no estudo de modulação de sinais de áudio utilizando a Transformada Rápida de Fourier (FFT). Os experimentos exploram a análise harmônica, o comportamento temporal e espectral de sons (como vozes e instrumentos), e a modulação de amplitude, permitindo uma compreensão prática dos efeitos da modulação nos espectros de frequência.

## Objetivos
- Analisar sinais harmônicos simples (ondas senoidais) no domínio do tempo e da frequência.
- Estudar sons reais (ex.: capela masculina de um arquivo WAV) através de conversão para mono, plotagem temporal e análise espectral via FFT.
- Demonstrar modulação de amplitude: multiplicar um sinal de áudio por uma portadora senoidal e observar as mudanças no espectro.
- Gerar arquivos de áudio modulados e visualizar os efeitos da modulação em gráficos.

## Arquivos Principais
- **Analise-Harmonica-Simples.m** e **AnaliseHarmonicaSimples.m**: Exemplos de geração e análise de ondas senoidais puras (frequências de 1100 Hz e 3000 Hz). Inclui plotagem no domínio do tempo, amostras discretas e espectro via FFT.
- **AnaliseSons-Freq_e_Tempo.m** e **AnaliseSonsFreqTempo.m**: Análise de um arquivo de áudio (s1.wav, capela masculina). Converte o sinal estéreo para mono, plota o comportamento temporal e o espectro de frequência limitado (até 600 Hz).
- **AnaliseSons-Modulacao.m** e **AnaliseSonsModulacao.m**: Estudo de modulação. Carrega o sinal de áudio, gera uma portadora senoidal (frequência de modulação configurável, ex.: 10000 Hz), modula o sinal, plota os resultados e salva um novo arquivo WAV. Inclui análise espectral do sinal modulados.

**Nota**: Alguns arquivos são duplicados (com e sem hífens nos nomes), possivelmente versões similares ou backups. Recomenda-se usar os mais recentes ou limpar duplicatas.

## Dependências
- MATLAB (versão compatível com `audioread`, `audiowrite`, `fft`, `sound` e funções de plotagem).
- Arquivo de áudio de exemplo: s1.wav (não incluído no repositório; deve ser fornecido separadamente ou baixado de fontes externas).

## Como Executar
1. Abra o MATLAB e navegue até o diretório do repositório.
2. Execute os scripts individualmente (ex.: `run('AnaliseSonsModulacao.m')`).
3. Observe os gráficos gerados (domínio do tempo, espectros) e os arquivos WAV de saída (ex.: novosm1_10000.wav).
4. Para ouvir os sons, os scripts incluem comandos `sound()`.

## Exemplos de Resultados
- **Análise Harmônica**: Espectro mostrando picos em frequências específicas (ex.: 1100 Hz ou 3000 Hz).
- **Análise de Som**: Gráfico temporal do sinal de voz e espectro limitado revelando componentes de frequência.
- **Modulação**: Sinal original vs. modulados, com espectro expandido mostrando bandas laterais devido à modulação.

## Autor
Prof. Newton Licciardi (newton.licciardijr@gmail.com) - Laboratório de Processamento de Sinais, Universidade Mackenzie.

## Licença
Este projeto é para fins educacionais. Consulte o autor para uso comercial.

---

Essa sugestão resume o conteúdo dos arquivos de forma clara e estruturada, facilitando a compreensão para visitantes do repositório GitHub. Se precisar de ajustes, como adicionar seções sobre instalação ou exemplos de saída, ou se quiser que eu crie o arquivo diretamente, é só avisar!
