function HW8_107601005
%
% It's just a homework that test if my sum, mean and std function are correct
%
% 1.0.0
% Just testing functions that doesn't need any inputs
% Error function: (e - e_0) / e_0
%
    clc; clear; close all;


    x = 1:100;

    Error = (sum3(x) - sum(x))/sum(x);
    fprintf ("The error between sum3 and sum is %g\n", Error);
    Error = (mean3(x) - mean(x))/mean(x);
    fprintf ("The error between mean3 and mean is %g\n", Error);
    Error = (std3(x) - std(x))/std(x);
    fprintf ("The error between std3 and std is %g\n", Error);

end

function output = sum3(v)
%sum3 - Adding the vectors
%
% Syntax: output = sum3(v)
%
% Logic :
%       Just adding every elements in the vector

    temp = 0;

    for i = 1:length(v)
        temp = temp + v(i);
    end

    output = temp;


end

function output = mean3(v)
%mean3 - The mean of the vectors
%
% Syntax: output = mean3(v)
%
% Logic:
%   Divide the length of the vectors with the sum of the vector

    output = sum3(v) / length(v);

end

function output = std3(v)
%std3 - the stdard deviation of the vectors
%
% Syntax: output = std3(v)
%
% Logic:
%   Using the equation S = sqrt(1/(N - 1)(sigma((A_i - mean(A_i))^2)))

    temp = sqrt((sum3((v - mean3(v)).^2))./(length(v) - 1));

    output = temp;

end
