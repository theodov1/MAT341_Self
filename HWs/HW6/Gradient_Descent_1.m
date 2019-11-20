function N=Gradient_Descent_1(tol,gamma)

%This function takes two inputs, the error tolerance and a fixed gamma step
%size and returns the number of iterations N it takes to reach the inputed
%error tolerance for the function f(x,y)=-(sin(x)+cos(y)).


%Initialize the initial guess for the x vector
xn=[1;1.5];

%Initialize error and counter for number of iterations.  
err=1;
N=0;

%Run while loop while the current error value is greater than the tolerance
%value.  
while err>tol
    
   %Increase the counter by 1 ever time the loop is run. 
   N=N+1;
   
   %Plug in the guess and calculate new value
   xn1=xn-gamma*gradient(xn);
   
   %Calculate the new error
   err=sqrt((xn1-xn).'*(xn1-xn));
   
   %Initialize calculated new guess
   xn=xn1;
    
end

%This function calculates the gradient matrix.  
function val=gradient(xn)
g1=-cos(xn(1));
g2=sin(xn(2));
val=[g1;g2];

end
end

%a)35 iterations
%b)12 iterations
%c)34 iterations
