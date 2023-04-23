%% Aufgabe: PolyphasenInterpolator
% Das Signal x[k] = [1 2 3 4 5 6] soll mit Hilfe eines 
% Filters interpoliert werden.
%
% (c) HSM, B.Wir 20.8.12
clear all, close all;
%% (i) Interpolation durch 'upsample' und nachfolgender Filterung

x   = [ 1 2 3 4 5 6 ]
x_2 = [ 1 0 2 0 3 0 4 0 5 0 6 ]

g = [ 1 2 1 ]/2; % lineare Interpolation

y2 = filter(g,1,x_2)

%% (ii) Polyphasenrealisierung

% Zweig 1 
g1  = [ 1 1]/2;
yg1 =  filter(g1,1,x)

% Zweig 2
g2  = [ 2 0]/2;
yg2 = filter(g2,1,x)

% Zusammensetzen
y2 = [ yg1;yg2];
y2 = reshape(y2,1,12) 

%% (iii) Idealer Amplitudengang
% \Omega_g = pi/2

%% Alternativ mit upfirdn.m

y2 = upfirdn(x,g,2,1)

