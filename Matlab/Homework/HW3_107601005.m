clear
clc

% seting data matrix
DM=[0.382, 0.949, 1, 0.532, 11.209, 9.44, 4.007, 3.883]; %datas of Diameter (Earth=1)
MS=[0.055, 0.815, 1, 0.107, 318, 95, 15, 17]; %Datas of MasS (Earth=1)
AU=[0.39, 0.72, 1, 0.107, 318, 95, 15, 17]; %Datas of Mean distance from the Sun (AU)
EY=[0.24, 0.62, 1, 1.88, 11.86, 29.46, 84.01, 164.8]; %Datas of Orbital period (Earth Years)
RP=[58.65, -243, 1, 1.03, 0.41, 0.44, -0.72, 0.72]; %datas of Rotation Period (in Earth Year/Day)
GE=[0.38, 0.9, 1, 0.38, 2.64, 0.93, 0.89, 1.12]; %datas of Gravity at Equator (Earth=1)
AC=["none", "CO2", "N2+O2", "CO2", "H2 + He", "H2 + He", "H2 + He", "H2 + He"]; %datas of Atmospheric Composition
RG=["no", "no", "no", "no", "yes", "yes", "yes", "yes"]; % datas of RinGs

% HW3-1
% putting datas into intData matrix or stringData matrix
intData=[DM;MS;AU;EY;RP;GE];
stringData=[AC;RG];

% HW3-2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Logic:                                             %
%   Give first column 32 spaces from the right to   %
% print in the informations of the row with (%-32s) %
%   Give ten spaces to other columns from the right %
% for data inputs with %10.3g for float data or     %
% (%10s) for string data.                           %
%   ':' is an operator to loop from 1 to end if def-%
%ault, so A(n, :) will loop A(n, 1) to A(n, m) if A %
% have m elements in a row.                         %
%   fprintf("(format)", data(n, :))will print out   %
% nth row of the matrix with the format entered.    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Create a planet name array to print out
planetName=["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"];

%First row
fprintf("%-32s"," ")
fprintf("%10s",planetName)

%Second row
fprintf("\n%-32s","diamete (Earth=1)")
fprintf("%10.3g", intData(1,:))

%Third row
fprintf("\n%-32s","mass (Earth=1)")
fprintf("%10.3g", intData(2,:))

%Forth row
fprintf("\n%-32s","mean distance from Sun (AU)")
fprintf("%10.3g", intData(3,:))

%Fifth row
fprintf("\n%-32s","orbital period (Earth years)")
fprintf("%10.3g", intData(4,:))

%Eighth row
fprintf("\n%-32s","rotation period (int Earth days)")
fprintf("%10.3g", intData(5,:))

%Ninth row
fprintf("\n%-32s","gravity at equator (Earth=1)")
fprintf("%10.3g", intData(6,:))

%Tenth row
fprintf("\n%-32s","atmospheric composition")
fprintf("%10s", stringData(1,:))

%Eleventh row
fprintf("\n%-32s","rings?")
fprintf("%10s", stringData(2,:))

%One more Enter to make the set looks better!
fprintf("\n")

