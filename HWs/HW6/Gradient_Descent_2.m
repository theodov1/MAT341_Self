function N=Gradient_Descent_2(tol)

%This function takes one input, the error tolerance and returns the number 
%of iterations, N, it takes to reach the inputed error tolerance using the 
%Barzilai-Browein step size for gamma for the function 
%f(x,y)=-(sin(x)+cos(y)).

%Initialize gamma
gamma=0.5;

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
   
   %Calculate the Barzilai-Browein step size for gamma
   gamma=abs(((xn1-xn).'* (gradient(xn1)-gradient(xn))))/(gradient(xn1)-gradient(xn).'*(gradient(xn1)-gradient(xn)));
   
   %Calculate the new error
   err=sqrt((xn1-xn).'*(xn1-xn));
   
   %Initialize new calculated guess
   xn=xn1;
    
end

%This function calculates the gradient matrix.  
function val=gradient(xn)
g1=-cos(xn(1));
g2=sin(xn(2));
val=[g1;g2];

end
end

%a)5 iterations
%b)6 iterations
