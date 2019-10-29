function N = golden_Search(tol)

%This function uses the Golden Search algorithm and takes in an error 
%tolerance as input and outputs the number of iterations necessary to 
%achieve the inputted error tolerance. 

%initialize the error
err = 1;

%initialize the search step
t = (sqrt(5)-1)/2;

%Intitialize the interval 
a = 0;
b = 2;

%initialize the number of iterations counter
N = 0;

%determine x1 and x2 values
x1 = a + (1-t)*(b-a);
x2 = a + t*(b-a);

%calculate value of function at x1 and x2 values
f1 = f(x1);
f2 = f(x2);

%Run this iteration while error is greater than the inputed tolerance
while err > tol
    
    %increase counter each time loop is run
    N = N + 1;
    
    %while value of f1 is greater than f2, run this if statement to 
    %determine new values of the interval, new x1 an x2 values, and new 
    %values of the function at the reassigned values.
    if f1 > f2
        a = x1;
        x1 = x2;
        f1 = f2;
        x2 = a + t*(b-a);
        f2 = f(x2);
        
    %For cases other than the value of f1 being greater than f2, run this 
    %else statement to determine new values of the interval, new x1 an x2 
    %values, and new values of the function at the reassigned values.
    else
        b = x2;
        x2 = x1;
        f2 = f1;
        x1 = a + (1-t)*(b-a);
        f1 = f(x1);
    end
    
    %Calculate the error for the iteration.  
    err = b-a;
end

end

%defined function used that we are finding the minimum of.   
function val = f(x)
val = 0.5 - x*exp(-x^2);
end

% a) It takes 40 iterations to achieve accuracy of 1e-8 %
