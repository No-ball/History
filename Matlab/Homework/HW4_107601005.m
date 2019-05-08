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

% putting datas into intData matrix or stringData matrix
intData=[DM;MS;AU;EY;RP;GE];
stringData=[AC;RG];

% Create a planet name array to print out
planetName=["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"];

%HW 4-1
% Parsing the matrix out into another matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Logic:                                                            %
%   ':' means every element.                                        %
%   intData(:, n) means to put every element of the nth column      %
%                                                                   %
%   cat(2, A, B) will concatenate two matrices horizontally.        %
%                                                                   %
%   parsedData is the matrix of the combination of parseVenusData   %
% of parseVenusData and parseSaturn Data                            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

parseVenusData=intData(:, 2); % Datas of Venus Datas
parseSaturnData=intData(:, 6); % Datas of Saturn Datas

parseData=cat(2, parseVenusData, parseSaturnData);

% HW4-2
% Using rand to randomly output an planet 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Logic:                                                %
%   'rand()' will return a number between 0 to 1        %
%                                                       %
%   7*rand()+1 will then return a float from 1 to 7     %
%                                                       %
%   int16(A) will return the any float number: A to 16  %
% byte int                                              %
% ---------------------------------                     %
% index:                                                %
%   We made an rand index by set it to int16(7*rand()+1)%
%                                                       %
%   While putting in any matrices, it will print a rand-%
%om planet and it's info out to the string              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

index = int16(7*rand() + 1);

%First row
fprintf("%-32s","Planet:")
fprintf("%10s",planetName(index))

%Second row
fprintf("\n%-32s","diamete (Earth=1)")
fprintf("%10.3g", intData(1,index))

%Third row
fprintf("\n%-32s","mass (Earth=1)")
fprintf("%10.3g", intData(2,index))

%Forth row
fprintf("\n%-32s","mean distance from Sun (AU)")
fprintf("%10.3g", intData(3,index))

%Fifth row
fprintf("\n%-32s","orbital period (Earth years)")
fprintf("%10.3g", intData(4,index))

%Eighth row
fprintf("\n%-32s","rotation period (int Earth days)")
fprintf("%10.3g", intData(5,index))

%Ninth row
fprintf("\n%-32s","gravity at equator (Earth=1)")
fprintf("%10.3g", intData(6,index))

%Tenth row
fprintf("\n%-32s","atmospheric composition")
fprintf("%10s", stringData(1,index))

%Eleventh row
fprintf("\n%-32s","rings?")
fprintf("%10s", stringData(2,index))

%One more Enter to make the set looks better!
fprintf("\n")

