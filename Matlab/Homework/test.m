clear
clc
for i = 1:100
    fprintf("%g ", rand());
    if (0 == mod(i, 10))
        fprintf("\n");
    end
end