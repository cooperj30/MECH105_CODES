% Specify the variables needed to solve this problem (ie. height of each section, diameter, radiaus, ...)
%   It is alwasy easier to work with variables (diameter_cyl = 25) than to use numbers everywhere, since a 
%   diameter indicates something specific but the number 25 could mean anything
h=20
cylinder_d = 25;
cylinder_r = 12.5;
cylinder_h = 19;
cone_h = 14;
cone_d = 46;

cone_R = 23;
v_cone_h = 7.608696 + (h-19)
v_cylinder = 9326.60319;
v_cone_top = pi * (12.5^2) * (1/3) * (25 * 7 *(1/23))
cone_r = v_cone_h * (23/7);

% Specify the height of the water
h = 20
% You can comment / uncomment lines below for testing. This will overwrite the previous line for h = 20.
% For submission, make sure all of the following lines are commented out and h = 20! (OR IT IS MARKED AS WRONG)
%h = 5
%h = 19
%h = 47
%h = -1

% Now compute the volume. Using conditional statments you will want to first check the height makes sense,
% and then solve the volume depending on what portion of the tank has been filled.
% Make sure that your volume is stored in the variable v! (OR IT WILL BE MARKED AS WRONG)
% You may find it more convenient to move v around in you code, it is only given here to indicate what variable to use.
if h <= 19
    v = pi * (cylinder_r^2) * h;
    
elseif h > 19 && h <=33
    cone_r = (h-19) * (23/7);
    v = (v_cylinder + 520.91533)
else 
    
    
    fprintf('error choose new height')
end