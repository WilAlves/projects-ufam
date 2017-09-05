% Escreva um programa de computador capaz de reduzir o n�mero de niveis de
% intensidade emu ma imagem de 256 a 2 em incrementos inteiros de potencia de 2.
% O n�mero de n�veis de intensidade deve ser uma vari�vel de entrada do seu programa


% Caminho do arquivo que dever� ser modificado
path = './img/Fig0221.tif';

% Novo n�vel de cinza da imagem 
% K � o n�mero de bits, para imagens bn�rias inserir 0
% K = 0;

k = input('Digite o numero de bits');
Nc = 2 .^ k;

% Imagem de entrada 
I = imread(path);

%Extraindo o n�mero de linhas(M) e colunas(N) da imagem
[M, N] = size(I);

imshow(I,[]);
title('Imagem original');

%Criando uma imagem de saida do mesmo tamanho da de entrada
I_out = zeros(M,N);

%Calculando os novos n�veis de cinza para imagem
for m = 1:M
    for n = 1:N
        I_out(m,n) = (Nc/256)*I(m,n);
    end
end

imwrite(I_out, 'matlab_imagem_8.png');

figure();
imshow(I_out, []);
