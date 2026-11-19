clc
clearvars

% s is the sum of 2 real numbers as calculated in manual arithmetic
% c is the sum of 2 numbers calculated after having rounded a and b as
% machine numbers

s = -0.5*10^(-3);
c = -0.518*10^(-3);

err = abs(s-c)/abs(c);

clearvars
x = zeros(40,0); % ci sono 40 colonne vuote e poi ogni volta che viene iterato il loop, viene agiunta una colonna ad x
x(1) = 2;
for i = 2:40
    x(i) = 2^(i-1/2)*sqrt(1-sqrt(1-4^(1-i)*(x(i-1))^2))
end

x1 = zeros(40,0); % this is a matrix that has 40 rows and zero columns
x1(1) = 2; % the second row in this matrix is 2
for i = 2:40
    x1(i) = ((2^(i-1/2))*(4^(1-i/2))*(x1(i-1)))/(sqrt(1+sqrt(1-(4^(i-1))*((x(i-1))^2))))
end

hold on
errore = abs (pi-x./abs(pi))
errore1 = abs (pi-x1./abs(pi))
loglog([1:40], errore, '-m')
loglog([1:40], errore1, '-b')
% in questo caso, i valori all'interno del vettore 'errore' ed 'errore1'
% vengono plottati. ciascuno di questi valori verrà associato ad onuno dei valori
% nel vettore contentente l'intervallo.
% ancora una volta, matlab semplicemente mette dei punti
% su un piano, e poi a piacere li unisce con una linea

% PLOT prennde due vettori ed associata ad ogni punto di un vettore il
% corrispondente punto di un altro vettore, usando questi due dati come
% coordinate per segnarli sul piano cartesiano. è quindi possibile far sì
% che il secondo vettore abbia componenti che siano funzioni delle
% componenti di x: in questo modo, il grafico risultante disegnerà la scia
% di punti del secondo vettore as they vary in funzione di come variano i
% punti nel primo vettore

% which approximates the grapth of the function we used to compute the
% values we put in the second vector


% associa ad ogni valore di un vettore dato come
% intervallo il corrispondente (per indice) valore dato in un altro
% vettore, quello che contiene, effettivamente, la serie di valori f(x)
% (per ogni componente di x)