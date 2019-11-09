function N = Newton_2D_Opt(tol)

%%This function runs the Newton 2-D Algorithm for optimization. It takes
%%an input for the desired error tolerance and returns the number of
%%iterations it takes to achieve that error tolerance.   

% initialize initial conditions
x0=[-4.5; 4.5];

%initialize counter
N=0;

%initialize error
err=1;

while err>tol 
    
    %Increase counter value
    N=N+1;
    
    %Calculate new values
    x1=x0-H(x0(1),x0(2))*grad(x0(1), x0(2));
    
    %Calculate error values
    err=sqrt(((x1-x0).')*(x1-x0));
    
    %Assign new values 
    x0=x1;
    
end

% Function that calculates the Hessian
function val=H(x,y)
val=inv([sin(x) 0; 0 cos(y)]);

% Function that calculates the gradient
function val=grad(x,y)
val=[-cos(x); sin(y)];

% a) It takes 5 iterations to reach the tolerance level of 1e-8.  The
% minima found is ( -4.7124, 0).  

% b) It takes 4 iterations to reach the tolerance level of 1e-8.  The
% minima found is ( -4.7124, 0).  

