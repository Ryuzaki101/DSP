%% Aufgabe: Polyphasen Interpolator
%
% Das Signal x[k] = [1 2 3 4 5 6] solle mit Hilfe eines 
% Filters mit der Impulsantwort 
% g[k] = [1 2 1]/2 um den Faktor 2 Interpoliert werden
%
%% (i) Fügen Sie Nullen ein und filtern Sie danach:
%
x   = [ 1 2 3 4 5 6 ]
x_2 = [ 1 0 2 0 3 0 4 0 5 0 6 ]
g = [ 1 2 1 ]/2;

x_ip = filter(g,1,x_2)

%% (ii)Verwenden Sie eine Polyphasenrealsierung.
% Zweig 1
x1 = x;
g1 = [ 1 1]/2;

x1_ip = filter(g1,1,x1)

% Zweig 2
x2 = x;
g2 = [ 2 0]/2;

x2_ip = filter(g2,1,x2)

% Zusammensetzen
x_ip = [ x1_ip;x2_ip];
x_ip = reshape(x_ip,1,12) 

% Alternativ

% x_ip= upfirdn(x,g,2,1)




