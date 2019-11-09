function N = successive_Parabolic_Intepolation(tol)

%This function uses the successive parabolic interpolation algorithm and 
%takes in an error tolerance as input and outputs the number of iterations 
%necessary to achieve the inputted error tolerance. 

%initialize the number of iterations counter
N=0;

%initialize three points
x1=0;
x2=0.6;
x3=1.2;

err=1;

%While error is greater than tolerance
while err>tol
    
    %increase counter each time loop is run
    N=N+1;
    
    %Create Matrix containing the linear system to solve
    A=[(x1)^2, x1, 1; (x2)^2, x2, 1; (x3)^2 x3 1];
    coeffs = inv(A)*[f(x1) f(x2) f(x3)]';
    
    a=coeffs(1);
    b=coeffs(2);
    
    %Solve the linear system to determin the coefficients for the parabola
    vertex = -b/(2*a);
    
    %redefine points with new found vertex and two of old points.  
    x3 = x2;
    x2 = x1;
    x1 = vertex;
    
    err = abs(x3-x1);

end

%defined function used that we are finding the minimum of.
function val=f(x) 
val = 0.5-x*exp(-x^2);

%a) It takes seven (7) iterations to achieve 1e-8 accuracy with initial
%guess of x1=0, x2=0.6, and x3=0.9.  
%
%b) The number of iterations increased to 186 for x1=0, x2=0.6, and x3=2.
%MATLAB did not issue any warnings when I changed the value of x3.  



