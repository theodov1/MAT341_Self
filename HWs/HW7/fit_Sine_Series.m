function fit_Sine_Series()

%This function will perform linear least squares to find a best fit 
%function through data {(xi; yi)} from i=1 to N.

%Initialize the number of data points
N = 500;
%Initializes the sum upper bounds
M = 40;
%Initializes the x-data
xData = linspace(-pi,pi,N);
%Initializes the y-data
yData = ((0.25*xData.^2).*cos(xData).^4.*sin(xData).^7)';

for i = 1:N;
   
    %Calls x-values from data above
    x = xData(i);
    %Calls y-values from data above
    y = yData(i);
    
    for j = 1:M
        
        A(i,j) = sin(j*x);
        
    end
    
    B(i,:) = y;
    
end

%Calculates Pseudo Inverse
PseudoInv = (inv(A'*A))*A';
%Calcuates Beta
beta = PseudoInv*B;

for k = 1:N
    
    x = xData(k);
    f(k,1) = 0;
    i = 1;
    
    while i<=M
        
        f(k,1) = f(k,1) + beta(i)*sin(i*x);
        i= 1+i;
        
    end
    
end

%Plot Data and best sine series fit 
figure; plot(xData, yData, 'o', 'Linewidth', 6);
hold on;
plot(xData, f,'r','Linewidth', 4);
xlabel('xData');
ylabel('yData');
legend('Data', 'Best Sine Series Fit');

%Calculates the residual & outputs l2_norm
residual = B-A*beta;
l2norm = sqrt(residual'*residual)
        
% a) When M=5, the residual is 0.0813. When M=10, the residual is 0.0096.
% When M=20, the residual is 2.1412e-06.  When M=40, the residual is 
% 3.9199e-09. When M increases, the residual decreases.  

% b) This series/process is called the Fourier Series.  
        
        