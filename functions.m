clearvars, clc

x = [-pi:0.1:pi];
plot(x,sin(x), '-ob')
% NOT PLOTTA DAVVERO LA FUNZIONE!! 
% prende l'espressione delle funzione, l'array di punti che gli è stato
% dato, e poi computes the value che si ottiene applicando la funzione a
% ciascuno di questi punti e li stores as an another array. dopodiché, mette i punti in un piano cartesiano
% e, if asked, li unisce con delle linee.
% di conseguenza, minore sarà lo step fra un punto e l'altro (all'interno
% dell'espressione tramite la quale abbiamo creato il vettore che stores i
% punti) maggiore sarà la precisione con cui il grafico verra plottato
% la presenza di '-' dice a matlab di mostrare le linee rette del grafico che
% congiungiongoo i punti. noi abbiamo abbiamo deciso la densità di punti
% tramite lo 'step' con cui abbiamo creato il vettore che abbiamo dato in
% pasto alla funzione, passsandolo come argomento. 

% in sintesi, x è un vettore, e la funzione plot calcola il valore dei punti passati alla funzione 'plot' come argomento all'interno del vettore x
% e poi li stores dentro un vettore
% quindi sin(x) è il seno non di una variabile ma di un VETTORE, e
% banalmente viene calcolato il seno di ogni componente del vettore e poi
% tale valore viene plottato in un piano cartesiano R^2 (visto che il
% numero di componenti in un vettore è finito ed il numero di elementi in
% R no, vviamente ci saranno dai gaps e allora per ottenere un qualcosa che
% si approssimi ad effettivamente aver rappresentato la funzione in x ed y,
% matlab unisce tutti i punti del piano con delle linee rette).

hold on
% quando provi a tracciare piu di una funzione, se hold è off (come di
% standard), allora solo l'ultimo grafico verrà tracciato; altrimenti, se
% hold è on, allora ciascun grafico will 'hold on' to the screen

xlabel('asse x')
ylabel('asse y')
title('titolo del grafico')

plot(x,cos(x), '-*y')
legend('definita per prima nello script', 'funzione definita per seconda nello script')

