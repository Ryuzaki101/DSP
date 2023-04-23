%% Aufgabe: Abtastfehler
% Simulieren Sie Abtastfehler in einem Musikstück. Hören Sie sich das 
% Ergebnis an und berechnen Sie das Spektrogramm (spectrogram.m). 
% (c) WIR 19.7.2012
clear all; close all;
%% (i) Händels Halleluja laden und ausgeben

load handel 
whos      % y ist das Signal und Fs die Abtastfrequenz
BIT = 8;
WINDOW = 1024; % Fensterbreite für Spektrogramm
soundsc(y,Fs);
figure(1);
subplot(1,2,1); spectrogram(y,WINDOW); title('Spektrogramm');

%% (ii) Dezimieren um den Faktor 3
% DEZ = 3;
% y_dez = y(1:....);
% soundsc(y_dez,Fs/DEZ);
% figure(1);
% subplot(1,2,2); spectrogram(y_dez,WINDOW); title(['Unterabtastung D=' int2str(DEZ)]);
% 
% %% (iii) Ergänzung: Abtastwerte nach der Dezimierung wiederholen
% y_dez = upfirdn(y_dez,ones(1,DEZ),DEZ,1); % ...das verstehen Sie später
% soundsc(y_dez,Fs);
% figure(2); spectrogram(y_dez,WINDOW); title(['Unterabtastung D=' int2str(DEZ) ' und Wiederholung der Abtastwerte']);

