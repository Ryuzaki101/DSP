%% Aufgabe: Polyphasendezimierung
%
% Das Signal x[k] = [1 2 3 4 5 6] solle mit Hilfe eines 
% Filters mit der Impulsantwort 
% g[k] = [1 2 1]/2 um den Faktor 2 dezimiert werden
%
%% (i) Filter Sie das Signal und nehemn Sie danach jeden 2. Wert.
%
x   = [ 1 2 3 4 5 6 ]
g = [ 1 2 1 ]/2;

x_tp = filter(g,1,x)
x_dez = x_tp([1:2:end])



%% (ii) Verwenden Sie eine Polyphasenrealsierung.
% Zweig 1
x1 = [ 1 3 5]
g1 = [ 1 1]/2

x1_tp = filter(g1,1,x1)

% Zweig 2
x2 =  [0 2 4]
g2 = [ 2 0]/2

x2_tp = filter(g2,1,x2)

% Zusammensetzen
x_dez =  x1_tp  + x2_tp 

% Alternativ
% x_dez_ = upfirdn(x,g,1,2)




