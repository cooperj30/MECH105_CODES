function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
if nargin < 3
    msg3 = error('Error supply more inputs')
    disp(msg3)
end
if nargin < 4
    es = 0.0001
end
if nargin <5
    es = .0001;
    maxit = 200; 
end

xo = xl;
iter = 0;
ea = 100
while(1)
    
    root = ((xu * func(xl)) - ( xl * func(xu) )) / ( func(xl) - func(xu) ) 
    
if func(xl)*root < 0 
        xu = root;
    end 
    
    if func(xl)*root > 0 
        xl= root;
    end
   
    if root ~= 0 
        ea = abs(((root-xo)/root))*100
    else 
        ea= 0 
    end
    
    
    if func(xl) * root==0
        break 
    end
    if ea<=es
        break 
    end
    if maxit <= iter 
        
        break 
    end
    iter = iter + 1
    xo = root;
    
end
fx= func(root); 
disp(fx)
disp(root)
disp(ea)
disp(iter)
end