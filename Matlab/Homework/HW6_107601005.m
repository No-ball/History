clc; clear; close all;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Logic:                                    %
%   figure:                                 %
%       Name: Set the name of the window    %
%       Position: Set the absolute position %
%           of the window                   %
%   subplot:                                %
%       set the number of plot in the window%
%   linspace(a, b, n):                      %
%       splice n numbers from a to b        %
%   for:                                    %
%       for loop                            %
%   plot(x, y):                             %
%       plot the data of x and y            %
%   hold on/off:                            %
%       wait for another paint on the plot  %
%   annotation:                             %
%       Draw the arrow at the abslute space %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


figure('Name', 'HW6', 'Position', [200, 200, 780, 350]);

% (a) graph
subplot(1, 2, 1); % Set (a) to graph 1

x = linspace(-1.5, 1.5, 7); % Split x from -1.5 to 1.5 in 7 equal patials 
y = linspace(-1.5, 1.5, 7); % Split y from -1.5 to 1.5 in 7 equal patials 


% Using for loop to draw the dots
for i = 1 : length(x)
    for j = 1 : length(y)

        plot(x(i), y(j), '-k.', 'markersize', 20);
        hold on; % Wait for another paint

    end
    
end

theta = linspace(0, 2.*pi, 100); % Angle for the circle

% Angle for the arrow
xTheta = [0.330, 0.331];
yTheta = [0.704, 0.703];

% Plot the circle
plot(cos(theta), sin(theta), '-b', 'LineWidth', 2)

% Graph settings
axis([-2, 2, -2, 2]); % Set the axis range
title('Electron Trajectory in B Field', 'fontweight', 'bold'); % Set the graph title
% Adding some texts
text(-2.75, 2.25, '(a)', 'fontsize', 14, 'fontweight', 'bold');
text(0.1, 1.25, 'p', 'fontsize', 16, 'color', 'blue');
text(0.25, 1.35, '+', 'color', 'blue');
text(-1.35, 1.25, 'B', 'fontweight', 'bold', 'fontsize', 18);
annotation('arrow', xTheta, yTheta, 'color', 'blue'); % Draw the arrow at the right place;
xlabel('x'); % Printing labels
ylabel('y'); % Printing labels

text(3.0, 1.75, '(b)', 'fontsize', 14, 'fontweight', 'bold'); % Print the label of the 2nd graph fisrt (cause it is easier)

hold off; % Stop waiting and start to draw another graph


% (b) graph
subplot(1, 2, 2); % Set (b) to graph 2

startTheta = 0; % Setting the start angle of the graph
circulusTime = 3.35.*2; % Setting the numbers of circles of the graph

t = linspace(startTheta, circulusTime.*pi - startTheta, 3.5*360); % Set t
plot3(cos(t), sin(t), t.*2500/7/pi, 'color', [0.2, 0.4, 1], 'LineWidth', 2); % Graphing the circle. [0.2, 0.4, 1] makes a light green color

hold on;% Wait for another draw
plot3(0.*t, 0.*t, t.*4000/7/pi - 500, 'color', [0.5, 0.5, 0.5], 'LineWidth', 2);% Graphing the line. [0.5, 0.5, 0.5] makes a gray color

grid on;% Turn on the grid
axis([-2, 2, -2, 2, -500, 3500]); % Set the axis range
xlabel('x'); % Print the label name
ylabel('y'); % Print the label name
zlabel('z'); % Print the label name
title('Electron Trajectory in 3D',  'fontweight', 'bold'); % Set the graph's title