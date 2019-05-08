clc; clear; close all;

load 'planets.mat' % Load the datas

figure('Name', 'HW7', 'Position', [100, 200, 450, 400]) % Setting the windows value

% (a)

subplot(2, 2, 1); % Set the plotting graph

bar(moons, 'FaceColor', [0.3, 0.5, 0.8]); % Setting the bars

title('Number of Moons', 'fontweight', 'bold'); % Set title
text(-1.5, 85, '(a)', 'fontweight', 'bold', 'fontsize', 14);
xlim([1, 9]); % Strange setting to make it look better
xticklabels(name); % Setting x axis
xtickangle(90); % rotate the word
ylabel('Number of Moons'); % Setting y label


% (b)
subplot(2, 2, 2); % Set the plotting graph

bar(diameter, 'FaceColor', [0.3, 0.5, 0.8]); % Setting the bars

title('Planets'' Diameter', 'fontweight', 'bold'); % Set title
text(-1, 16.5, '(b)', 'fontweight', 'bold', 'fontsize', 14);
xlim([1, 9]); % Strange setting to make it look better
xticklabels(name); % Setting x axis
xtickangle(90); % rotate the word
ylabel('Diameter (Earth=1)'); % Setting y label


% (c)
subplot(2, 2, 3); % Set the plotting graph

Data = [mass(5), mass(6), mass(8)]; % Parsing datas
Name = {char(name(5)), char(name(6)), char(name(8))}; % Making data the right type
pie(Data, Name); % Plot the graph

colormap([0 0 1; 0 1 0; 1 0 0]); % Setting the color
title('Mass Percentage', 'fontweight', 'bold'); % Set the tile
text(-2.5, 1.5, '(c)', 'fontweight', 'bold', 'fontsize', 14); 


% (d)

subplot(2, 2, 4); % Set the plotting graph

theta = linspace(0, 2*pi, 360); % Setting theta as a variable

% Trace function r = p/(1 + e^2*cos(theta)) 
% where p is a/b and a is the distance
% eccentricity is a/b
semi_latusRectum = distance(2).*(1 - eccentricity(2).^2); 
ratio = semi_latusRectum./(1 + eccentricity(2) .* cos(theta));
plot(ratio.*cos(theta), ratio.*sin(theta));

grid on;
axis([-1 1 -1 1]); % Setting to look better

% Setting x, y labels
xlabel('x (AU)');
ylabel('y (AU)');

title('Orbit of Venus', 'fontweight', 'bold'); % Titles
text(-1.5, 1.15, '(d)', 'fontweight', 'bold', 'fontsize', 14);