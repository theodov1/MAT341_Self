function N = Newton_1D_Opt(tol) 

%%This function runs the Newton 1-D Algorithm for optimization. It takes
%%an input for the desired error tolerance and returns the number of
%%iterations it takes to achieve that error tolerance.   

%Initialize the initial condition point.  
xn=0.25;

%initialize the error
err=1;

% Initialize the counter 
N=0;

while err>tol
    
    %assign value to x_n1
    x_n1=xn;
    
    %calculate new xn value with Newton's Method
    xn= xn-f1(xn)/f2(xn);
    
    %Calculate error
    err=abs(x_n1-xn);
    
    %Increase counter
    N=N+1;
end


%Function that calculates the first derivative of function 
function val=f1(x)
%f_x=0.5-x*exp(-x^2);
val=exp(-x^2)*(2*(x^2)-1);

%Function that calculates the second derivative of function 
function val=f2(x)
val=exp(-x^2)*(6*x-4*(x^3));

% a) It takes 6 iterations to reach 1e-8 accuracy.

% b) It takes 736 iterations to reach 1e-8 accuracy.  It took so many
% iterations because our guess was very inaccurate.  



