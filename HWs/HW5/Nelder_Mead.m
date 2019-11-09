function N=Nelder_Mead(tol) 

%%This function runs the Nelder Mead Algorithm for optimization. It takes
%%an input for the desired error tolerance and returns the number of
%%iterations it takes to achieve that error tolerance.  


%Initialize the error
err = 1;

%Initialize the points being approximated
x1 = 0.35;
x2 = 4;
x3 = 1.5;
y1 = 2.8;
y2 = 4;
y3 = 0.5;

%initialize the counter
N = 0;creating the 


%initializing the x vector, y vector and calculating the initial f(x,y)
%values.  
 xvec = [x1 x2 x3];
 yvec = [y1 y2 y3];
 fvec = [f(x1,y1) f(x2,y2) f(x3,y3)];

 %run this loop while error is greater than tolerance
while err>tol
    
    %Sort new f(x,y) vector and initialize the three x-values from least to
    %greatest.  
   [fnew, indsvec] = sort(fvec);
    xleast = xvec(indsvec(1));
    xmid = xvec(indsvec(2));
    xgreat = xvec(indsvec(3));
    
    %initialize the three y-values from least to greatest.  
    yleast = yvec(indsvec(1));
    ymid = yvec(indsvec(2));
    ygreat = yvec(indsvec(3));
    
    %Calculating the x-midpoint and x reach point
    xmidpt = 1/2*(xleast+xmid);
    xreach = xmidpt + (xmidpt - xgreat);
    
    %Calculating the y-midpoint and y reach point
    ymidpt = 1/2*(yleast+ymid);
    yreach = ymidpt + (ymidpt - ygreat);
    
    %reassigning the appropriate values based on new approximations.  
    if f(xreach,yreach)<f(xgreat, ygreat)
        xgreat = xreach;
        ygreat = yreach;
    else
        if f(xreach,yreach)>f(xgreat, ygreat)
            xcenter = 1/2*(xmidpt+xgreat);
            ycenter = 1/2*(ymidpt+ygreat);
          
            if f(xcenter, ycenter)<f(xgreat, ygreat)
                xgreat = xcenter;
                ygreat = ycenter;
            else
                xmid = 1/2*(xleast+xmid);
                xgreat = 1/2*(xleast+xgreat);
                ymid = 1/2*(yleast+ymid);
                ygreat = 1/2*(yleast+ygreat);
            end
        end
    end
    
    %creating new x vector, y vector and recalculating the f(x,y) vector
    %with new approximated values
     xvec = [xleast xmid xgreat];
     yvec = [yleast ymid ygreat];
     fvec = [f(xleast,yleast) f(xmid,ymid) f(xgreat,ygreat)];
     
     %calculate the error value
     err = abs(f(xgreat,ygreat)-f(xleast,yleast));
     
     %increase the counter value.  
     N = N+1;
end

end

%Function used to calculate f(x,y)
   function val = f(x,y)
   val = -(sin(x) + cos(y));          
   end


% a) It takes 29 iterations to acheive 1e-8 accuracy.  

% b) Converges to (1.5708, -6.0577e-09), The true local minima is located 
% at (pi/2, 0) which is not exactly the values found at the 1e-8 accuracy. 
% When 1e-8 accurracy is achieved, the values are (1.5724, -5.6344e-04).
% The tolerance is not high enough at 1e-8 to show the true value of the
% function.  

% c) It takes 58 iterations to achieve 1e-8 accuracy.  The values of the 
% function found are (1.5709, -1.1087e-04).  Our initial guesses were more 
% accurate so it did not take as many iterations to find the values of the 
% function with 1e-8 accuracy.  

%d) It takes 53 iterations to achieve 1e-8 accuracy.  The minima found was
% (-4.7126, 2.8363e-04).
