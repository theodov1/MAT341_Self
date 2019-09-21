
function calculate_Pi_Sums()
% This function figures out how many terms we need in two different series 
% that converges to pi to within a desired accuracy (tolerance).  This
% function has no inputarguments nor returns anything for the following series:  
%
%     Series an = 6/(3^1/2) * SUM_{k=0}^n (-1)^(N) / ((3^N)*(2*N+1))

%     Series bn = 16 * SUM_{k=0}^n (-1)^(N) / ((5^(2*N+1))*(2*N+1)))-(4 * 
%                  SUM_{k=0}^n(-1)^(N) / ((239^(2*N+1))*(2*N+1))))


% set error tolerance desired
tol = 1e-6;

% initialize error to get into while-loop
err = 1;

% initialize values for sum_a, and sum_b to zero
sum_a = 0;
sum_b = 0;

% initialized N to -1 so when plugged into the while loop,N=0
N = -1;    

% while loop for series an - the while loop runs while the value of the 
% error is greater than the value of the initialized tolerance value.  

while err > tol
    
    % bump up partial sum order by 1
    N = N+1;
    
    % find pi approximation for series an.  let an print in Command Window.
    sum_a = sum_a + (6/(3^(1/2)))*(-1)^(N) / ((3^N)*(2*N+1)) 
    
    % compute error for current series an
    err = abs( sum_a - pi );
    
end


%reset the values for N and err to run through the second while loop
N = -1;    
err = 1;

% while loop for series bn - the while loop runs while the value of the 
% error is greater than the value of the initialized tolerance value.

while err > tol
    
    % bump up partial sum order by 1
    N = N+1;
    
    % find pi approximation for series bn.  let a=bn print in Command Window
    sum_b = sum_b + ((16*(-1)^(N) / ((5^(2*N+1))*(2*N+1)))-(4*(-1)^(N) / ((239^(2*N+1))*(2*N+1)))) 
    
    % compute error
    err = abs( sum_b - pi );
    
end

