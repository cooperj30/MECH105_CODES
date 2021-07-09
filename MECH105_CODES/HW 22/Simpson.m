function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated


size = numel(y);
n = size - 1;
if size == 2
    warning('Do not use TRAPS')
    I = trapz(x,y)
    
elseif size == 3
    I = ((x(size)-x(1))*(y(1)+4*y(2)+y(3)))/6
else
    
    if numel(x) ~= numel(y)
        error('Sizes must Match')
    end
    
    if sum(linspace(x(1),x(numel(x)),numel(x))) ~= sum(x)
        error('not evenly spaced inputs')
    end
    
    sig_odd = 0;
    
    for q = 3:2:size-1
        sig_odd = y(q) + sig_odd;
    end
    sig_even = 0; 
    for w = 2:2:size-2
        sig_even = y(w) + sig_even;
    end
    
    if mod(n,2) == 1
        warning('Trap rule must be used')
        I = ((x(size)-x(1))*(y(1)+(trapz(([x(size-1) x(size)]),([y(size-1) y(size)])))+ 2*sig_odd + 4*sig_even))/(3*n);
    else
        
        I = ((x(size)-x(1))*(y(1)+y(size)+ 2*sig_odd + 4*sig_even))/(3*n); 
    end
end
    
    
  

end