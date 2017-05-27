%Lennon R A Ribeiro, 27/05/2017
%Matriz dos coeficientes e o vetor coluna são informados antes na janela de comando
%A: matriz dos coeficientes, R = vetor coluna;

len = size(A); %len recebe o tamanho da matriz dos coeficientes
dets = zeros(1,len(2)); %cria-se o vetor que terá os determinantes intermediarios
X = zeros(1,len(2)); %cria-se o vetor que terá os resultados para as variaves

%note que as variaveis acima são criadas de acordo com o numero de colunas da Matriz A

det_cof = det(A); %determinantes geral da matriz A
M = A; %M é uma variavel auxiliar
i = 1;

while i <= len(2);  %nesse loop calculamos os determinantes intermediarios
  A(:, i) =  R;  %vetor coluna de resultados visita cada coluna da matriz A
  dets(i) = det(A); %é calculado o determinantes e atribuido a uma célula da vetor
  A = M; %assumimos a matriz original novamente
  i=i+1;
end  

i = 1;
while i <= len (2); %esse loop calculo e passa os valores para o vetor X (resultado das variaveis)
  X(i) = dets(i) / det_cof;   %Xk = detk / det
  i = i + 1;
  
end
X %mostra na janela de comandos os resultados
