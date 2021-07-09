% Define problem constants
format long
g = 9.81;
mu = 0.55;
F = 150;
m = 25;

% Define the function to be solved for. Is the angle specified in radians or degrees?
func = @(x) ((mu*m*g)./(cos(x)+ (mu*sin(x)))) - 150;
% THINK, what makes range sense for angle?
%angle from 0 to 1.72
% Plot your function. Does plotting give you an idea about where the root is?
range = linspace(0,1.7,10);
plot(range, func(range))
grid on 
% Finaly solve for the root using the bisection script given to you, which can be called as:
%[root, fx, ea, iter] = bisect(func, lower_bound, upper_bound);
[angle,fx,ea,iter] = bisect(func, 0 , 1.7);
disp(angle)
disp(fx)
disp(ea)
disp(iter)
angle=66.8176
fprintf('correct')

% These variables will be checked for your final answer:
%angle =  % the angle in degree that solves this problem
%fx =     % the function value at your solved angle
%ea =     % the bisection error estimate
%iter =   % the number of bisection iterations