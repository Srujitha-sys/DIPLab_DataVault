
clc;
clear all;
close all;
% Define the number
n = 5;  % You can change this number to any integer

% Initialize the result as 1 (since factorial of 0 is 1)
result = 1;

% Loop to calculate the factorial
for i = 1:n
    result = result * i;  % Multiply the result by the current number i
end

% Display the result
disp(['The factorial of ', num2str(n), ' is ', num2str(result)]);
